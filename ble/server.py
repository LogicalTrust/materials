import BaseHTTPServer

class ReqHandler(BaseHTTPServer.BaseHTTPRequestHandler):

    def read_request(self):
        h = self.headers.getheader('Content-Length')
        if not h:
            return None
        length = int(h)
        if length:
            data = self.rfile.read(length)
            return data
        return None

    def do_POST(self):
        self.send_response(200)
        self.end_headers()

    def log_message(self, format, *args):
        print "Connection from {}\n{}\n".format(self.client_address[0], self.read_request())

httpd = BaseHTTPServer.HTTPServer(("", int(8000)), ReqHandler)
httpd.serve_forever()
