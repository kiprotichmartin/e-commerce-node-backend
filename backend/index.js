const sql = require("mssql");
const express = require("express");
const app = express();
require("dotenv");

const sqlConfig = {
  user: "sa",
  password: "kosgeimartinkiprotich",
  server: "localhost",
  database: "NorthwindDB",
  pool: {
    max: 10,
    min: 0,
  },
  options: {
    trustServerCertificate: true,
  },
};

const connectToDB = async (req, res) => {
  try {
    const conn = await sql.connect(sqlConfig);
    const newRequest = new sql.Request(conn);
    if (newRequest) {
      console.log("Connected to database");
      const q = await sql.query(`SELECT * FROM Customer WHERE Country = 'France'`);
      // console.log(q);
      // res.send("Connected to database");
    }
  } catch (error) {
    console.log(error);
  }
};

connectToDB();
