from flask import Flask, render_template, request, jsonify
import socket
import logging
from datetime import datetime

# Configure logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

app = Flask(__name__)

# Socket Server Configuration
SOCKET_HOST = '127.0.0.1'
SOCKET_PORT = 5000


def send_to_server(num1: str, operator: str, num2: str) -> dict:
 
    try:
        client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        client_socket.settimeout(10.0)
        
        client_socket.connect((SOCKET_HOST, SOCKET_PORT))
        
        # Send calculation request
        message = f"{num1},{operator},{num2}"
        client_socket.send(message.encode('utf-8'))
        
        logger.info(f"Sent to server: {message}")
        
        # Receive response
        response = client_socket.recv(1024).decode('utf-8')
        client_socket.close()
        
        logger.info(f"Received from server: {response}")
        
        # Check for error
        if response.startswith("ERROR:"):
            return {
                'success': False,
                'error': response.replace("ERROR: ", ""),
                'expression': f"{num1} {operator} {num2}"
            }
        
        return {
            'success': True,
            'result': response,
            'expression': f"{num1} {operator} {num2}",
            'timestamp': datetime.now().strftime("%H:%M:%S")
        }
        
    except ConnectionRefusedError:
        return {
            'success': False,
            'error': 'Cannot connect to calculation server. Please ensure the server is running.',
            'expression': f"{num1} {operator} {num2}"
        }
    except socket.timeout:
        return {
            'success': False,
            'error': 'Server timeout. Please try again.',
            'expression': f"{num1} {operator} {num2}"
        }
    except Exception as e:
        return {
            'success': False,
            'error': f'Connection error: {str(e)}',
            'expression': f"{num1} {operator} {num2}"
        }


def check_server_status() -> dict:
    """Check if the socket server is running."""
    try:
        client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        client_socket.settimeout(2.0)
        client_socket.connect((SOCKET_HOST, SOCKET_PORT))
        client_socket.close()
        return {'online': True, 'message': 'Server Connected'}
    except:
        return {'online': False, 'message': 'Server Offline'}


@app.route('/')
def index():
    """Render the main calculator page."""
    return render_template('index.html')


@app.route('/calculate', methods=['POST'])
def calculate():
    """Handle calculation request."""
    data = request.get_json()
    
    num1 = data.get('num1', '').strip()
    num2 = data.get('num2', '').strip()
    operator = data.get('operator', '').strip()
    
    # Validate inputs
    if not num1 or not num2:
        return jsonify({
            'success': False,
            'error': 'Please enter both numbers'
        })
    
    if not operator:
        return jsonify({
            'success': False,
            'error': 'Please select an operator'
        })
    
    # Validate numbers
    try:
        float(num1)
        float(num2)
    except ValueError:
        return jsonify({
            'success': False,
            'error': 'Please enter valid numbers'
        })
    
    # Send to socket server
    result = send_to_server(num1, operator, num2)
    return jsonify(result)


@app.route('/status')
def status():
    """Check server connection status."""
    return jsonify(check_server_status())


if __name__ == '__main__':
    print("""
        Web Interface: http://127.0.0.1:5001                        ║
        Socket Server: 127.0.0.1:5000    
    """)
    app.run(host='127.0.0.1', port=5001, debug=True)