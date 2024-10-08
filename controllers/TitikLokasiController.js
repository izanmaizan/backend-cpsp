import Lokasi from "../models/LokasiModel.js";
import Petugas from "../models/PetugasModel.js";
import Geofence from "../models/GeofenceModel.js";

// Get all locations
export const getTitikLokasi = async (req, res) => {
  try {
    const [lokasi] = await Lokasi.findAll();
    res.json(lokasi);
  } catch (error) {
    res
      .status(500)
      .json({ msg: "Internal server error", error: error.message });
  }
};

// Create a new location
export const createTitikLokasi = async (req, res) => {
  const { lokasi } = req.body;

  if (!lokasi) {
    return res.status(400).json({ msg: "Location field is required" });
  }

  try {
    // Generate id_lokasi otomatis (misalnya UUID atau bisa juga ID auto increment dari database)
    const generatedIdLokasi = `LOC-${Date.now()}`; // Contoh simple ID generator
    
    await Lokasi.create({ id_lokasi: generatedIdLokasi, lokasi });
    res.status(201).json({ msg: "Lokasi created successfully", id_lokasi: generatedIdLokasi });
  } catch (error) {
    res
      .status(500)
      .json({ msg: "Internal server error", error: error.message });
  }
};


// Get location by ID
export const getTitikLokasiById = async (req, res) => {
  const { id_lokasi } = req.params;

  try {
    const [lokasi] = await Lokasi.findById(id_lokasi);
    if (lokasi.length === 0) {
      return res.status(404).json({ msg: "Location not found" });
    }
    res.json(lokasi[0]);
  } catch (error) {
    res
      .status(500)
      .json({ msg: "Internal server error", error: error.message });
  }
};

// Update location
export const updateTitikLokasi = async (req, res) => {
  const { id_lokasi } = req.params;
  const { lokasi } = req.body;

  if (!lokasi) {
    return res.status(400).json({ msg: "Location field is required" });
  }

  try {
    const [existingLocation] = await Lokasi.findById(id_lokasi);
    if (existingLocation.length === 0) {
      return res.status(404).json({ msg: "Location not found" });
    }

    const [updated] = await Lokasi.update(id_lokasi, { lokasi });
    if (updated.affectedRows === 0) {
      return res.status(500).json({ msg: "Failed to update location" });
    }
    res.json({ msg: "Location updated successfully" });
  } catch (error) {
    res
      .status(500)
      .json({ msg: "Internal server error", error: error.message });
  }
};

// Delete location
export const deleteTitikLokasi = async (req, res) => {
  const { id_lokasi } = req.params;

  try {
    const [existingLocation] = await Lokasi.findById(id_lokasi);
    if (existingLocation.length === 0) {
      return res.status(404).json({ msg: "Location not found" });
    }

    const [deleted] = await Lokasi.delete(id_lokasi);
    if (deleted.affectedRows === 0) {
      return res.status(500).json({ msg: "Failed to delete location" });
    }
    res.json({ msg: "Location deleted successfully" });
  } catch (error) {
    res
      .status(500)
      .json({ msg: "Internal server error", error: error.message });
  }
};

// Get locations with petugas and geofence
export const getLokasiWithPetugasDanGeofence = async (req, res) => {
  try {
    const [lokasi] = await Lokasi.findAll();
    const lokasiWithDetails = [];

    for (const loc of lokasi) {
      // Fetch petugas for each location
      const [petugas] = await Petugas.findByLokasi(loc.id_lokasi);

      // Fetch geofence for each location
      const geofence = await Geofence.findByLokasiId(loc.id_lokasi); // Adjusted method

      lokasiWithDetails.push({
        ...loc,
        petugas: petugas,
        geofence: geofence.length > 0 ? geofence[0] : null,
      });
    }

    res.json(lokasiWithDetails);
  } catch (error) {
    res
      .status(500)
      .json({ msg: "Internal server error", error: error.message });
  }
};

// Delete geofence
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