import express from "express";
import db from "./config/Database.js";
import router from "./routes/index.js";
import cookieParser from "cookie-parser";
import cors from "cors";
import dotenv from "dotenv";
import https from "https";  // Import https module
import fs from "fs";        // Import fs module untuk membaca file

dotenv.config();

const app = express();
const port = process.env.PORT || 3000;

// Load SSL certificates
const options = {
  key: fs.readFileSync("/etc/ssl/private/private.key"),  // Path ke kunci privat
  cert: fs.readFileSync("/etc/ssl/certs/certificate.crt") // Path ke sertifikat
};

const start = async function () {
  try {
    await db.getConnection();
    console.log("Database Connected");
  } catch (e) {
    console.log(e);
  }
};

// Configure CORS
const corsOptions = {
  origin: function (origin, callback) {
    const allowedOrigins = [
      "http://193.203.162.80",
      "https://193.203.162.80",
      "http://checkpoint-sig.site",
      "https://checkpoint-sig.site",
      "http://www.checkpoint-sig.site",
      "https://www.checkpoint-sig.site",
      "http://localhost:5173",
    ];
    if (allowedOrigins.indexOf(origin) !== -1 || !origin) {
      callback(null, true);
    } else {
      callback(new Error("Not allowed by CORS"));
    }
  },
  methods: "GET, POST, PUT, PATCH, DELETE, OPTIONS",
  credentials: true,
  optionsSuccessStatus: 204,
  allowedHeaders: "Content-Type, Authorization",
};

// Use CORS for all routes
app.use(cors(corsOptions));
app.options("*", cors(corsOptions)); // Preflight requests

app.use(cookieParser());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static("public"));

app.use(router);

// Start the server with HTTPS
const server = https.createServer(options, app);

start();

server.listen(port, () => {
  console.log(`Server berjalan di port ${port}`);
});

export default app;
