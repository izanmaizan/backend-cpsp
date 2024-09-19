import mysql from "mysql2/promise";
import dotenv from "dotenv";

dotenv.config();

// ini untuk yang pakai server public

const pool = mysql.createPool({
  host: process.env.DB_HOST || "srv602949.hstgr.cloud",
  port: process.env.DB_PORT || 3306,  // Port default MySQL
  user: process.env.DB_USERNAME || "u232856820_cpsp",
  password: process.env.DB_PASSWORD || "your_password",  // Ganti dengan password yang sesuai
  database: process.env.DB_NAME || "u232856820_checkpoint",
});

// ini untuk yang pakai server local
// const pool = mysql.createPool({
//   host: process.env.DB_HOST || "localhost",
//   user: process.env.DB_USERNAME || "root",
//   password: process.env.DB_PASSWORD || "",
//   database: process.env.DB_NAME || "db_operasionaltransportasi",
// });

export default pool;
