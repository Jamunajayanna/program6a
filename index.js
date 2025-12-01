const express = require("express");

const app = express();
const PORT = 3000;

// Middleware
app.use(express.json());

// Test Route
app.get("/", (req, res) => {
  res.send("✅ Docker Node App is running successfully!");
});

// Start Server
app.listen(PORT, () => {
  console.log(`🚀 Server running on http://localhost:${PORT}`);
});
