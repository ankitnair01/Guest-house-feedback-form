const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: 'localhost', // or your MariaDB server address
  user: 'feedbackuser',
  password: 'NewP@ssw0rd!',
  database: 'feedbackdb'
});

connection.connect((err) => {
  if (err) {
    console.error('Error connecting to MariaDB:', err.stack);
    return;
  }
  console.log('Connected to MariaDB as id', connection.threadId);
});

module.exports = connection;
