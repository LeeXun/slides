const http = require('http');
var i = 0
const server = http.createServer((req, res) => {
  setTimeout(function() {
    res.end();
  }, 3000)
});
server.on('clientError', (err, socket) => {
  socket.end('HTTP/1.1 400 Bad Request\r\n\r\n');
});
server.listen(8000);