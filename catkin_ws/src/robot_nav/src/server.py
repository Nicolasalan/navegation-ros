import http.server
import socketserver

PORT = 7000
Handler = http.server.SimpleHTTPRequestHandler

with socketserver.TCPServer(("", PORT), Handler) as http:
    print("serving at port", PORT)
    http.serve_forever()