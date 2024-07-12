const express = require('express');
const mysql = require('mysql2'); // or mysql if you're not using mysql2
const bodyParser = require('body-parser');
const path = require('path');
const connection = require('./db'); // Import your connection
const app = express();
const port = 3000;
const cors = require('cors');
app.use(cors());

// Middleware to parse JSON bodies
app.use(bodyParser.json());

// Serve static files from the public directory
app.use(express.static(path.join(__dirname, '../public')));

// Serve index.html for the root path
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, '../public/index.html'));
});

// Handle form submission
app.post('/submit', (req, res) => {
  const feedback = req.body;
  const sql = 'INSERT INTO feedback (guestHouse, frontOffice, food, staff, houseKeeping, cleanliness, toiletries, overall, comments, roomNo, name, email, phone) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
  const values = [
    feedback.guestHouse,
    feedback.frontOffice,
    feedback.food,
    feedback.staff,
    feedback.houseKeeping,
    feedback.cleanliness,
    feedback.toiletries,
    feedback.overall,
    feedback.comments,
    feedback.roomNo,
    feedback.name,
    feedback.email,
    feedback.phone
  ];

  connection.query(sql, values, (err, result) => {
    if (err) {
        console.error('Error inserting data:', err.message);
        res.status(500).json({ message: 'Error saving feedback: ' + err.message });
        return;
    }
    res.status(200).json({ message: 'Thank you for your valuable feedback' });
});
});

// Other routes...

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
