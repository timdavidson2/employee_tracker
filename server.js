const mysql = require("mysql2");
const inquirer = require("inquirer");
const conTable = require("console.table");

require('dotenv').config();

const PORT = process.env.PORT || 3001;
const app = express();

// Express middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// Connect to database
const db = mysql.createConnection(
    process.env.HOST,
    process.env.DB_NAME,
    process.env.DB_USER,
    process.env.DB_PASSWORD,
  
    console.log(`Connected to the employees database.`)
);