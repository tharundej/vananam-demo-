const express = require('express');
const app = express();
const PORT = process.env.PORT || 8080;

app.get('/', (req, res) => {
  res.send('Hello, Vananam World!,How can I contribute to the growth opportunities in your company?');
});

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
