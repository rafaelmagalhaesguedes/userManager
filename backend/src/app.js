const express = require('express');
const jwt = require('jsonwebtoken');

const app = express();
app.use(express.json());

app.get('/', (_req, res) => {
  res.send('Hello world');
});

module.exports = app;