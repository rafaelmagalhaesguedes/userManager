const express = require('express');
const connection = require('./db/connection');

const app = express();
app.use(express.json());

app.get('/', (_req, res) => {
  res.send('Home Page!');
});

app.get('/users', async (_req, res) => {
  const [users] = await connection.execute('SELECT * FROM users');
  res.send(users);
});

module.exports = app;