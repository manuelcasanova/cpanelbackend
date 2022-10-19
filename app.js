const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get("/test", async (req, res) => {
 res.send('Hello!')
})

app.listen(PORT, () => console.log(`Server is running on port ${PORT}`));