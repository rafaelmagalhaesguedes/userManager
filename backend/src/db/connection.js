const mysql = require('mysql2/promise');

const mysqlConfig = {
  host: process.env.MYSQL_HOST || 'db',
  user: process.env.MYSQL_USER || 'root',
  password: process.env.MYSQL_PASSWORD || 'root',
  database: process.env.MYSQL_DB || 'mydb'
}

const connection = mysql.createPool(mysqlConfig);

module.exports = connection;