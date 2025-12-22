import socket
import threading
import logging
import sys
import json
from datetime import datetime
from typing import Tuple, Optional

# Configure logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s | %(levelname)-8s | %(message)s',
    datefmt='%Y-%m-%d %H:%M:%S',
    handlers=[
        logging.StreamHandler(sys.stdout),
        logging.FileHandler('server.log', encoding='utf-8')
    ]
)
logger = logging.getLogger(__name__)


class CalculatorServer:
    """
    Professional TCP Socket Server for Remote Calculator.
    
    This server handles multiple client connections using threading
    and performs arithmetic operations sent by clients.
    """
    
    VALID_OPERATORS = {'+', '-', '*', '/', '%'}
    
    def __init__(self, host: str = '127.0.0.1', port: int = 5000):
        """Initialize the calculator server."""
        self.host = host
        self.port = port
        self.server_socket: Optional[socket.socket] = None
        self.is_running = False
        self.client_count = 0
        self.total_calculations = 0
        self.lock = threading.Lock()
    
    def start(self) -> None:
        """Start the socket server."""
        try:
            # Create TCP socket
            self.server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            
            # Allow socket reuse
            self.server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
            
            # Bind and listen
            self.server_socket.bind((self.host, self.port))
            self.server_socket.listen(10)
            
            self.is_running = True
            self._print_banner()
            
            logger.info(f"Server started on {self.host}:{self.port}")
            logger.info("Waiting for client connections...")
            
            # Accept connections
            self._accept_connections()
            
        except OSError as e:
            logger.error(f"Server startup failed: {e}")
            if "Address already in use" in str(e):
                logger.error(f"Port {self.port} is already in use. Try another port.")
        except KeyboardInterrupt:
            logger.info("Server shutdown requested")
        finally:
            self._shutdown()
    
    def _print_banner(self) -> None:
        """Display server startup banner."""
        banner = f"""
        Host: {self.host:<15}  Port: {self.port:<10}              
        Status: RUNNING                                             
        Supported Operations: +  -  *  /  %      
        """
        print(banner)
    
    def _accept_connections(self) -> None:
        """Accept incoming client connections."""
        while self.is_running:
            try:
                client_socket, client_address = self.server_socket.accept()
                
                with self.lock:
                    self.client_count += 1
                
                logger.info(f"New connection from {client_address[0]}:{client_address[1]}")
                
                # Handle client in separate thread
                client_thread = threading.Thread(
                    target=self._handle_client,
                    args=(client_socket, client_address),
                    daemon=True
                )
                client_thread.start()
                
            except OSError:
                if self.is_running:
                    logger.error("Error accepting connection")
                break
    
    def _handle_client(self, client_socket: socket.socket, address: Tuple[str, int]) -> None:
        """Handle individual client request."""
        client_ip = f"{address[0]}:{address[1]}"
        
        try:
            client_socket.settimeout(30.0)
            
            # Receive data
            data = client_socket.recv(1024).decode('utf-8').strip()
            
            if not data:
                logger.warning(f"Empty request from {client_ip}")
                return
            
            logger.info(f"Received from {client_ip}: {data}")
            
            # Process calculation
            result = self._process_calculation(data)
            
            with self.lock:
                self.total_calculations += 1
            
            logger.info(f"Result for {client_ip}: {result}")
            
            # Send response
            client_socket.send(result.encode('utf-8'))
            
        except socket.timeout:
            error_msg = "ERROR: Request timeout"
            client_socket.send(error_msg.encode('utf-8'))
            logger.warning(f"Timeout for {client_ip}")
            
        except Exception as e:
            error_msg = f"ERROR: {str(e)}"
            client_socket.send(error_msg.encode('utf-8'))
            logger.error(f"Error handling {client_ip}: {e}")
            
        finally:
            client_socket.close()
            with self.lock:
                self.client_count -= 1
            logger.info(f"Connection closed: {client_ip}")
    
    def _process_calculation(self, data: str) -> str:
        """Parse and calculate the arithmetic expression."""
        try:
            # Expected format: "num1,operator,num2"
            parts = data.split(',')
            
            if len(parts) != 3:
                return "ERROR: Invalid format. Use: num1,operator,num2"
            
            num1_str, operator, num2_str = [p.strip() for p in parts]
            
            # Validate operator
            if operator not in self.VALID_OPERATORS:
                return f"ERROR: Invalid operator '{operator}'. Use: + - * / %"
            
            # Parse numbers
            try:
                num1 = float(num1_str)
                num2 = float(num2_str)
            except ValueError:
                return f"ERROR: Invalid numbers: '{num1_str}' or '{num2_str}'"
            
            # Check division by zero
            if operator in ('/', '%') and num2 == 0:
                return "ERROR: Division by zero is not allowed"
            
            # Calculate
            result = self._calculate(num1, operator, num2)
            
            # Format result
            return self._format_result(result)
            
        except Exception as e:
            return f"ERROR: Calculation failed - {str(e)}"
    
    def _calculate(self, num1: float, operator: str, num2: float) -> float:
        """Perform the arithmetic operation."""
        operations = {
            '+': lambda a, b: a + b,
            '-': lambda a, b: a - b,
            '*': lambda a, b: a * b,
            '/': lambda a, b: a / b,
            '%': lambda a, b: a % b
        }
        return operations[operator](num1, num2)
    
    def _format_result(self, result: float) -> str:
        """Format the result for display."""
        if result == int(result):
            return str(int(result))
        return f"{result:.10f}".rstrip('0').rstrip('.')
    
    def _shutdown(self) -> None:
        """Shutdown the server gracefully."""
        self.is_running = False
        
        if self.server_socket:
            try:
                self.server_socket.close()
            except:
                pass
        
        logger.info("Server shutdown complete")
        logger.info(f"Total calculations performed: {self.total_calculations}")


def main():
    """Main entry point."""
    import argparse
    
    parser = argparse.ArgumentParser(description='Remote Calculator Socket Server')
    parser.add_argument('--host', default='127.0.0.1', help='Host address')
    parser.add_argument('--port', type=int, default=5000, help='Port number')
    
    args = parser.parse_args()
    
    server = CalculatorServer(host=args.host, port=args.port)
    server.start()


if __name__ == '__main__':
    main()