import Geofence from "../models/GeofenceModel.js";
import db from "../config/Database.js";

// Create or update a geofence
export const createOrUpdateGeofence = async (req, res) => {
  const { id_lokasi, geofence_data, alamat, latitude, longitude } = req.body;

  if (
    !id_lokasi ||
    !geofence_data ||
    !alamat ||
    latitude === undefined ||
    longitude === undefined
  ) {
    return res.status(400).json({ msg: "All fields are required" });
  }

  try {
    const checkSql = "SELECT id FROM geofence WHERE id_lokasi = ?";
    const [existingGeofence] = await db.execute(checkSql, [id_lokasi]);

    if (existingGeofence.length > 0) {
      const updateSql = `
            UPDATE geofence 
            SET geofence_data = ?, alamat = ?, latitude = ?, longitude = ? 
            WHERE id_lokasi = ?`;
      await db.execute(updateSql, [
        geofence_data,
        alamat,
        latitude,
        longitude,
        id_lokasi,
      ]);
      res.json({ msg: "Geofence updated successfully" });
    } else {
      const insertSql = `
            INSERT INTO geofence (id_lokasi, geofence_data, alamat, latitude, longitude) 
            VALUES (?, ?, ?, ?, ?)`;
      await db.execute(insertSql, [
        id_lokasi,
        geofence_data,
        alamat,
        latitude,
        longitude,
      ]);
      res.status(201).json({ msg: "Geofence created successfully" });
    }
  } catch (error) {
    console.error("Error in createOrUpdateGeofence:", error); // Log error details
    res
      .status(500)
      .json({ msg: "Internal server error", error: error.message });
  }
};

export const getGeofence = async (req, res) => {
  try {
    const [geofence] = await Geofence.findAll();
    res.json(geofence);
  } catch (error) {
    res
      .status(500)
      .json({ msg: "Internal server error", error: error.message });
  }
};

export const getGeofenceById = async (req, res) => {
  const { id } = req.params;

  try {
    const [geofence] = await Geofence.findById(id);
    if (geofence.length === 0) {
      return res.status(404).json({ msg: "Geofence not found" });
    }
    res.json(geofence[0]);
  } catch (error) {
    res
      .status(500)
      .json({ msg: "Internal server error", error: error.message });
  }
};

export const updateGeofence = async (req, res) => {
  const { id } = req.params;
  const { id_lokasi, geofence_data } = req.body;

  if (!id_lokasi || !geofence_data) {
    return res.status(400).json({ msg: "All fields are required" });
  }

  try {
    const [existingGeofence] = await Geofence.findById(id);
    if (existingGeofence.length === 0) {
      return res.status(404).json({ msg: "Geofence not found" });
    }

    await Geofence.update(id, { id_lokasi, geofence_data });
    res.json({ msg: "Geofence updated successfully" });
  } catch (error) {
    res
      .status(500)
      .json({ msg: "Internal server error", error: error.message });
  }
};

export const deleteGeofence = async (req, res) => {
  const { id } = req.params;

  try {
    const [existingGeofence] = await Geofence.findById(id);
    if (existingGeofence.length === 0) {
      return res.status(404).json({ msg: "Geofence not found" });
    }

    await Geofence.delete(id);
    res.json({ msg: "Geofence deleted successfully" });
  } catch (error) {
    res
      .status(500)
      .json({ msg: "Internal server error", error: error.message });
  }
};
