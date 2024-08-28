const express = require('express')
const app = express()
const port = 8080

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})

process.on('SIGTERM', () => {
	console.info('SIGTERM signal received.');
	server.close(() => {
	  console.log('Http server closed.');
	});
  });
