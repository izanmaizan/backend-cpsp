import express from "express";
import db from "./config/Database.js";
import router from "./routes/index.js";
import cookieParser from "cookie-parser";
import cors from "cors";
import dotenv from "dotenv";

dotenv.config();

const app = express();
const port = process.env.PORT || 3000;

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
// Hapus fileUpload
app.use(express.urlencoded({ extended: true }));
app.use(express.static("public"));

app.use(router);

start();

app.listen(port, () => {
  console.log(`Server berjalan di port ${port}`);
});

export default app;
