import Petugas from "../models/PetugasModel.js";

// Get petugas by lokasi
export const getPetugasByLokasi = async (req, res) => {
  const { id_lokasi } = req.params;

  try {
    const [petugas] = await Petugas.findByLokasi(id_lokasi);
    res.json(petugas);
  } catch (error) {
    res
      .status(500)
      .json({ msg: "Internal server error", error: error.message });
  }
};

// Create a new petugas
export const createPetugas = async (req, res) => {
  const petugasArray = req.body; // Should be an array of petugas objects

  if (!Array.isArray(petugasArray) || petugasArray.length === 0) {
    return res
      .status(400)
      .json({ msg: "Invalid input. Must provide an array of petugas." });
  }

  const errors = [];
  const results = [];

  for (const petugas of petugasArray) {
    const { id_petugas, nama_petugas, no_hp, id_lokasi } = petugas;

    if (!id_petugas || !nama_petugas || !no_hp || !id_lokasi) {
      errors.push(`Missing fields for petugas with id ${id_petugas}`);
      continue; // Skip this item and continue with the next
    }

    try {
      await Petugas.create({ id_petugas, nama_petugas, no_hp, id_lokasi });
      results.push({ id_petugas, status: "created" });
    } catch (error) {
      errors.push(
        `Failed to create petugas with id ${id_petugas}: ${error.message}`
      );
    }
  }

  if (errors.length > 0) {
    return res
      .status(400)
      .json({ msg: "Some petugas could not be created", errors, results });
  }

  res.status(201).json({ msg: "All petugas successfully created", results });
};

// Update petugas
export const updatePetugas = async (req, res) => {
  const { id_petugas } = req.params;
  const { nama_petugas, no_hp } = req.body;

  if (!nama_petugas && !no_hp) {
    return res
      .status(400)
      .json({ msg: "At least one field (nama_petugas or no_hp) is required" });
  }

  try {
    // Check if petugas exists
    const [existingPetugas] = await Petugas.findById(id_petugas);
    if (existingPetugas.length === 0) {
      return res.status(404).json({ msg: "Petugas not found" });
    }

    // Update petugas
    const [result] = await Petugas.update(id_petugas, { nama_petugas, no_hp });
    if (result.affectedRows === 0) {
      return res.status(500).json({ msg: "Failed to update petugas" });
    }
    res.json({ msg: "Petugas updated successfully" });
  } catch (error) {
    res
      .status(500)
      .json({ msg: "Internal server error", error: error.message });
  }
};

// Delete petugas
export const deletePetugas = async (req, res) => {
  const { id_petugas } = req.params;

  try {
    // Check if petugas exists
    const [existingPetugas] = await Petugas.findById(id_petugas);
    if (existingPetugas.length === 0) {
      return res.status(404).json({ msg: "Petugas not found" });
    }

    // Delete petugas
    const [result] = await Petugas.delete(id_petugas);
    if (result.affectedRows === 0) {
      return res.status(500).json({ msg: "Failed to delete petugas" });
    }
    res.json({ msg: "Petugas deleted successfully" });
  } catch (error) {
    res
      .status(500)
      .json({ msg: "Internal server error", error: error.message });
  }
};

// Add this function to PetugasController.js
export const getPetugasByLokasiAndId = async (req, res) => {
  const { id_lokasi, id_petugas } = req.params;

  try {
    const [petugas] = await Petugas.findByIdAndLokasi(id_petugas, id_lokasi);
    if (petugas.length === 0) {
      return res.status(404).json({ msg: "Petugas not found" });
    }
    res.json(petugas);
  } catch (error) {
    res
      .status(500)
      .json({ msg: "Internal server error", error: error.message });
  }
};
