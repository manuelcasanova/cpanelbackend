require('dotenv').config();
const express = require('express');
const bodyParser = require('body-parser')
const app = express();
app.use(express.json());
const PORT = process.env.PORT || 3000;

const users = require('./fake-db')
const pool = require('./psql-db/db-conn')

app.get("/test", async (req, res) => {
  res.send('Hello!')
})

app.get("/users", async (req, res) => {
  res.send(users)
})

app.get("/steps", async (req, res) => {
  const steps = await pool.query('SELECT * FROM steps');
  res.send(steps.rows)
})

app.get("/userspsql", async (req, res) => {
  const steps = await pool.query('SELECT * FROM users');
  res.send(steps.rows)
})

app.listen(PORT, () => console.log(`Server is running on port ${PORT}`));