import mysql from "mysql2/promise";
import dotenv from "dotenv";

dotenv.config();

// ini untuk yang pakai server public
const pool = mysql.createPool({
  host:
    process.env.DB_HOST ||
    "brk7dpfgqm7x7ujz1hsv-mysql.services.clever-cloud.com",
  user: process.env.DB_USERNAME || "uspwwr1unmdz8fzi",
  password: process.env.DB_PASSWORD || "czUj5TUvc5Mm0wywa6xC",
  database: process.env.DB_NAME || "brk7dpfgqm7x7ujz1hsv",
});

// ini untuk yang pakai server local
// const pool = mysql.createPool({
//   host: process.env.DB_HOST || "localhost",
//   user: process.env.DB_USERNAME || "root",
//   password: process.env.DB_PASSWORD || "",
//   database: process.env.DB_NAME || "db_operasionaltransportasi",
// });

export default pool;
