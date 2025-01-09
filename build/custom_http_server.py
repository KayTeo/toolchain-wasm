import http.server
import socketserver

# Custom handler to add headers
class CustomHTTPRequestHandler(http.server.SimpleHTTPRequestHandler):
    def end_headers(self):
        # Add Cross-Origin Isolation headers (COOP and COEP)
        self.send_header('Cross-Origin-Opener-Policy', 'same-origin')
        self.send_header('Cross-Origin-Embedder-Policy', 'require-corp')
        
        # Add CORS headers
        self.send_header('Access-Control-Allow-Origin', '*')
        self.send_header('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS')
        self.send_header('Access-Control-Allow-Headers', 'Content-Type')

        super().end_headers()

# Set the port number
PORT = 8000

# Start the HTTP server
Handler = CustomHTTPRequestHandler
httpd = socketserver.TCPServer(("", PORT), Handler)

print(f"Serving on port {PORT}...")
httpd.serve_forever()

