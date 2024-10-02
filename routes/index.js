import express from "express";
import path from "path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

import {
  getUsers,
  Register,
  Login,
  Me,
  Logout,
  updateAkun,
  deleteUserByUsername,
} from "../controllers/Users.js";
import {
  createCheckPoint,
  deleteCheckPoint,
  getCheckPoints,
  updateCheckPoint,
} from "../controllers/CheckPoint.js";
import { getLaporan } from "../controllers/Laporan.js";
import {
  deleteDetail,
  getDetail,
  updateDetail,
} from "../controllers/Detail.js";
import {
  createTitikLokasi,
  deleteTitikLokasi,
  getLokasiWithPetugasDanGeofence,
  getTitikLokasi,
  getTitikLokasiById,
  updateTitikLokasi,
} from "../controllers/TitikLokasiController.js";
import {
  createPetugas,
  deletePetugas,
  getPetugasByLokasi,
  getPetugasByLokasiAndId,
  updatePetugas,
} from "../controllers/PetugasController.js";
import {
  createOrUpdateGeofence,
  getGeofence,
  getGeofenceById,
  updateGeofence,
  deleteGeofence,
} from "../controllers/GeofenceController.js";
import rateLimit from "express-rate-limit";

const router = express.Router();

router.use("/uploads", express.static(path.join(__dirname, "../uploads")));

router.get("/users", getUsers);
router.post("/register", Register);
router.post("/login", Login);
router.get("/me", Me);
router.post("/logout", Logout);
router.put("/update-akun/:username", updateAkun);
router.delete("/delete-user/:username", deleteUserByUsername);

router.get("/checkpoints", getCheckPoints);
router.post("/checkpoints", createCheckPoint);
router.get("/checkpoints/:no_do", getCheckPoints);
router.put("/checkpoints/:no_do", updateCheckPoint);
router.delete("/checkpoints/:no_do", deleteCheckPoint);

router.get("/laporan", getLaporan);
router.get("/detail/:no_do", getDetail); // Existing route

// Add new routes for updating and deleting detail
router.put("/detail/:no_do", updateDetail); // Route to update detail
router.delete("/detail/:no_do", deleteDetail); // Route to delete detail

// Titik Lokasi Routes
router.get("/titiklokasi", getTitikLokasi);
router.post("/titiklokasi", createTitikLokasi);
router.get("/titiklokasi/:id_lokasi", getTitikLokasiById);
router.put("/titiklokasi/:id_lokasi", updateTitikLokasi);
router.delete("/titiklokasi/:id_lokasi", deleteTitikLokasi);

// Lokasi routes
router.get("/lokasi-with-details", getLokasiWithPetugasDanGeofence);

// Petugas Routes
router.post("/petugas", createPetugas);
router.get("/petugas/:id_lokasi", getPetugasByLokasi);
router.get("/petugas/:id_lokasi/:id_petugas", getPetugasByLokasiAndId);
router.put("/petugas/:id_petugas", updatePetugas);
router.delete("/petugas/:id_petugas", deletePetugas);

// Geofence Routes
router.post("/geofence", createOrUpdateGeofence);
router.get("/geofence", getGeofence);
router.get("/geofence/:id", getGeofenceById);
router.put("/geofence/:id", updateGeofence);
router.delete("/geofence/:id", deleteGeofence);

export default router;
