require("dotenv").config();
const mysql = require("mysql2");

const connection = mysql.createConnection({
  port:8889,
  host: process.env.DB_HOST, // address of the server
  user: process.env.DB_USER, // username
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
});

module.exports = connection;
