var express = require('express');
var http = require('http');
//var https = require('https');
var app = express();

http.createServer(app);

app.get('/', function (req, res) {
  res.send('Hello World');
});
app.listen(8080, function () {
  console.log('Example app listening on port 8080!');
});

process.on('SIGTERM', () => {
	console.info('SIGTERM signal received.');
	server.close(() => {
	  console.log('Http server closed.');
	});
  });
