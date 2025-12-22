import streamlit as st
import socket

st.title("Word Count Client (Socket + Streamlit)")

HOST = "127.0.0.1"
PORT = 65432

# Initialize session state (chat history + socket)
if "messages" not in st.session_state:
    st.session_state.messages = []

if "client_socket" not in st.session_state:
    client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    client_socket.connect((HOST, PORT))
    st.session_state.client_socket = client_socket

# Show previous messages
for msg in st.session_state.messages:
    with st.chat_message(msg["role"]):
        st.markdown(msg["content"])

# Input box
if user_msg := st.chat_input("Type a sentence to count words & characters"):
    
    # Show user message
    st.session_state.messages.append({"role": "user", "content": user_msg})
    with st.chat_message("user"):
        st.markdown(user_msg)

    # Send message to server
    st.session_state.client_socket.sendall(user_msg.encode())

    # Receive server response
    data = st.session_state.client_socket.recv(1024)
    server_reply = data.decode()

    # Show server reply
    st.session_state.messages.append({"role": "assistant", "content": server_reply})
    with st.chat_message("assistant"):
        st.markdown(server_reply)
