import socket

def run_server(port=6000):
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.bind(('0.0.0.0', port))
        s.listen()
        print(f"Server listening on port {port}...")
        while True:  # Loop to accept connections continuously
            conn, addr = s.accept()
            with conn:
                print(f"Connected by {addr}")
                while True:
                    data = conn.recv(1024)
                    if not data:
                        break
                    sent_message = b"Hello from Server"
                    print(f"Received: {data}")
                    conn.sendall(sent_message)
            print(f"Connection with {addr} closed")

if __name__ == "__main__":
    run_server()
