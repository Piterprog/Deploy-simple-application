const express = require('express');
const app = express();
const port = 8080;

app.get('/', (req, res) => {
    res.json({ message: 'Hello, from Kubernetes this is a simple Node.js API!' });
});

app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});
