const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

const users = require('./fake-db')

app.get("/test", async (req, res) => {
 res.send('Hello!')
})

app.get("/users", async (req, res) => {
  res.json(users)
})

app.listen(PORT, () => console.log(`Server is running on port ${PORT}`));