// import TitikLokasi from "../models/TitikLokasiModel.js";

// export const getTitikLokasi = async (req, res) => {
//   try {
//     const titikLokasi = await TitikLokasi.findAll();
//     res.json(titikLokasi);
//   } catch (error) {
//     console.error(error);
//     res.status(500).json({ msg: "Internal server error" });
//   }
// };

// export const createTitikLokasi = async (req, res) => {
//   const { id_lokasi, lokasi, petugas, no_hp } = req.body;

//   if (!id_lokasi || !lokasi || !petugas || !no_hp) {
//     return res.status(400).json({ msg: "All fields are required" });
//   }

//   try {
//     const titikLokasiExists = await TitikLokasi.findById(id_lokasi);

//     if (titikLokasiExists) {
//       return res.status(409).json({
//         msg: "Titik Lokasi with this id_lokasi already exists",
//       });
//     }

//     const newTitikLokasi = await TitikLokasi.create({
//       id_lokasi,
//       lokasi,
//       petugas, // Pastikan ini adalah array
//       no_hp, // Pastikan ini adalah array
//     });

//     res.status(201).json({
//       msg: "Titik Lokasi created successfully",
//       id: newTitikLokasi.id,
//     });
//   } catch (error) {
//     console.error("Error creating titik lokasi: ", error);
//     res.status(500).json({ msg: "Internal server error" });
//   }
// };

// export const getTitikLokasiById = async (req, res) => {
//   const { id_lokasi } = req.params;

//   if (!id_lokasi) {
//     return res.status(400).json({ msg: "Parameter id_lokasi is required" });
//   }

//   try {
//     const titikLokasi = await TitikLokasi.findById(id_lokasi);
//     if (!titikLokasi) {
//       return res.status(404).json({ msg: "Titik Lokasi not found" });
//     }
//     res.json(titikLokasi);
//   } catch (error) {
//     console.error("Error in getTitikLokasiById: ", error);
//     res.status(500).json({ msg: "Internal server error" });
//   }
// };

// // Ini yang pertama
// // Fix `updateTitikLokasi` method to use correct parameters
// // export const updateTitikLokasi = async (req, res) => {
// //   const { id_lokasi } = req.params;
// //   const { lokasi, petugas, no_hp } = req.body;

// //   try {
// //     const titikLokasiExists = await TitikLokasi.findById(id_lokasi);
// //     if (!titikLokasiExists) {
// //       return res.status(404).json({
// //         msg: "Titik Lokasi not found",
// //       });
// //     }

// //     const updatedRows = await TitikLokasi.update(id_lokasi, {
// //       lokasi,
// //       petugas,
// //       no_hp,
// //     });

// //     if (updatedRows === 0) {
// //       return res.status(400).json({
// //         msg: "Update failed",
// //       });
// //     }

// //     res.json({
// //       msg: "Titik Lokasi updated successfully",
// //     });
// //   } catch (error) {
// //     console.error(error);
// //     res.status(500).json({
// //       msg: "Internal server error",
// //     });
// //   }
// // };

// // ini yang kedua
// // export const updateTitikLokasi = async (req, res) => {
// //   const { id_lokasi } = req.params;
// //   const { lokasi, petugas, no_hp } = req.body;

// //   try {
// //     const titikLokasiExists = await TitikLokasi.findById(id_lokasi);
// //     if (!titikLokasiExists) {
// //       return res.status(404).json({ msg: "Titik Lokasi not found" });
// //     }

// //     // Update the petugas and no_hp fields
// //     const updatedRows = await TitikLokasi.update(id_lokasi, {
// //       lokasi,
// //       petugas: JSON.stringify(petugas || []),
// //       no_hp: JSON.stringify(no_hp || []),
// //     });

// //     if (updatedRows === 0) {
// //       return res.status(400).json({ msg: "Update failed" });
// //     }

// //     res.json({ msg: "Titik Lokasi updated successfully" });
// //   } catch (error) {
// //     console.error(error);
// //     res.status(500).json({ msg: "Internal server error" });
// //   }
// // };

// // Fix `deleteTitikLokasi` method to use correct parameters
// export const deleteTitikLokasi = async (req, res) => {
//   const { id_lokasi } = req.params;

//   try {
//     const deletedRows = await TitikLokasi.delete(id_lokasi);
//     if (deletedRows === 0) {
//       return res.status(404).json({
//         msg: "Titik Lokasi not found",
//       });
//     }

//     res.json({
//       msg: "Titik Lokasi deleted successfully",
//     });
//   } catch (error) {
//     console.error(error);
//     res.status(500).json({
//       msg: "Internal server error",
//     });
//   }
// };

import TitikLokasi from "../models/TitikLokasiModel.js";

export const getTitikLokasi = async (req, res) => {
  try {
    console.log("Fetching all lokasi");
    const titikLokasi = await TitikLokasi.findAll();
    console.log("Fetched lokasi:", titikLokasi);
    res.json(titikLokasi);
  } catch (error) {
    console.error("Error fetching lokasi:", error);
    res.status(500).json({ msg: "Internal server error" });
  }
};

export const createTitikLokasi = async (req, res) => {
  const { id_lokasi, lokasi, petugas, no_hp } = req.body;

  console.log("Request body for create:", req.body);

  if (!id_lokasi || !lokasi || !petugas || !no_hp) {
    return res.status(400).json({ msg: "All fields are required" });
  }

  try {
    const titikLokasiExists = await TitikLokasi.findById(id_lokasi);

    if (titikLokasiExists) {
      return res.status(409).json({
        msg: "Titik Lokasi with this id_lokasi already exists",
      });
    }

    const newTitikLokasi = await TitikLokasi.create({
      id_lokasi,
      lokasi,
      petugas: JSON.stringify(petugas),
      no_hp: JSON.stringify(no_hp),
    });

    console.log("Created new titik lokasi:", newTitikLokasi);

    res.status(201).json({
      msg: "Titik Lokasi created successfully",
      id: newTitikLokasi,
    });
  } catch (error) {
    console.error("Error creating titik lokasi:", error);
    res.status(500).json({ msg: "Internal server error" });
  }
};

export const updateTitikLokasi = async (req, res) => {
  const { id_lokasi } = req.params;
  const { lokasi, petugas, no_hp } = req.body;

  try {
    const titikLokasiExists = await TitikLokasi.findById(id_lokasi);
    if (!titikLokasiExists) {
      return res.status(404).json({ msg: "Titik Lokasi not found" });
    }

    const updatedRows = await TitikLokasi.update(id_lokasi, {
      lokasi,
      petugas: JSON.stringify(petugas || []),
      no_hp: JSON.stringify(no_hp || []),
    });

    if (updatedRows === 0) {
      return res.status(400).json({ msg: "Update failed" });
    }

    res.json({ msg: "Titik Lokasi updated successfully" });
  } catch (error) {
    console.error("Error updating titik lokasi:", error);
    res.status(500).json({ msg: "Internal server error" });
  }
};

export const deleteTitikLokasi = async (req, res) => {
  const { id_lokasi } = req.params;

  console.log("Deleting lokasi with id:", id_lokasi);

  try {
    const deletedRows = await TitikLokasi.delete(id_lokasi);
    if (deletedRows === 0) {
      return res.status(404).json({ msg: "Titik Lokasi not found" });
    }

    res.json({ msg: "Titik Lokasi deleted successfully" });
  } catch (error) {
    console.error("Error deleting titik lokasi:", error);
    res.status(500).json({ msg: "Internal server error" });
  }
};
