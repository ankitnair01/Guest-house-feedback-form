const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');
const path = require('path');
const app = express();
const port = 3000;

app.use(bodyParser.json());

// Serve static files from the public directory
app.use(express.static(path.join(__dirname, '../public')));

// MySQL connection setup
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'feedbackuser',
  password: 'password',
  database: 'feedbackdb'
});

connection.connect((err) => {
  if (err) {
    console.error('Error connecting to MySQL:', err);
    return;
  }
  console.log('Connected to MySQL');
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
      console.error('Error inserting data:', err);
      res.status(500).json({ message: 'Error saving feedback' });
      return;
    }
    res.status(200).send('Thank you for your valuable feedback');
  });
});

// Serve index.html for the root path
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, '../public/index.html'));
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
