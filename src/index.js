'use strict';

const express = require('express');

const app = express();
app.get('/', function(req, res) {
  res.send(`LLAMAS: ${Date()}\n`);
});

const PORT = 3000;

app.listen(PORT);
console.log(`Listening on port ${PORT}`);
