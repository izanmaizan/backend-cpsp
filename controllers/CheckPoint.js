// controllers/CheckPoint.js
import multer from "multer";
import { v4 as uuidv4 } from "uuid";
import CheckPoint from "../models/CheckPointModel.js";

// Konfigurasi multer
const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, "./uploads");
  },
  filename: (req, file, cb) => {
    const uniqueSuffix = Date.now() + "-" + uuidv4();
    const extension = file.originalname.split(".").pop();
    cb(null, `${uniqueSuffix}.${extension}`);
  },
});

const upload = multer({ storage: storage });


export const createCheckPoint = async (req, res) => {
  upload.array("dokumentasi")(req, res, async (err) => {
    if (err) {
      return res.status(400).json({ msg: "Error uploading files" });
    }

    const {
      nama_petugas,
      no_hp,
      titik_lokasi,
      no_do,
      tanggal,
      jam,
      keterangan,
    } = req.body;
    const dokumentasi = req.files ? req.files.map((file) => file.path) : [];

    try {
      const checkPointExists = await CheckPoint.findOne({
        key: "no_do",
        value: no_do,
      });

      if (checkPointExists) {
        return res
          .status(409)
          .json({ msg: "Checkpoint with this no_do number already exists" });
      }

      // Gabungkan data petugas dan no_hp jika ada lebih dari satu petugas
      const petugasString = Array.isArray(nama_petugas)
        ? nama_petugas.join(", ")
        : nama_petugas;
      const noHpString = Array.isArray(no_hp) ? no_hp.join(", ") : no_hp;

      const newCheckPointId = await CheckPoint.create({
        nama_petugas: petugasString,
        no_hp: noHpString, // Pastikan no_hp disimpan
        titik_lokasi,
        no_do,
        tanggal,
        jam,
        dokumentasi: dokumentasi.join(", "),
        keterangan,
      });

      res
        .status(201)
        .json({ msg: "Checkpoint created successfully", id: newCheckPointId });
    } catch (error) {
      console.error("Error creating checkpoint:", error);
      res.status(500).json({ msg: "Internal server error" });
    }
  });
};

export const getCheckPoints = async (req, res) => {
  try {
    const checkPoints = await CheckPoint.findAll();
    res.json(checkPoints);
  } catch (error) {
    console.error(error);
    res.status(500).json({ msg: "Internal server error" });
  }
};

export const getCheckPoint = async (req, res) => {
  const { no_do } = req.params;

  try {
    const checkPoint = await CheckPoint.findById(no_do);
    if (!checkPoint) {
      return res.status(404).json({ msg: "CheckPoint not found" });
    }
    res.json(checkPoint);
  } catch (error) {
    console.error(error);
    res.status(500).json({ msg: "Internal server error" });
  }
};

export const updateCheckPoint = async (req, res) => {
  const { no_do } = req.params;
  const { nama_petugas, titik_lokasi, tanggal, jam, keterangan } = req.body;
  const dokumentasi = req.files ? req.files.path : null;

  // Pastikan nama_petugas adalah array dan gabungkan menjadi string
  const petugasList = Array.isArray(nama_petugas)
    ? nama_petugas.join(", ")
    : nama_petugas;

  try {
    const checkPointExists = await CheckPoint.findById(no_do);
    if (!checkPointExists) {
      return res.status(404).json({ msg: "CheckPoint not found" });
    }

    const updatedRows = await CheckPoint.update(no_do, {
      nama_petugas: petugasList,
      titik_lokasi,
      tanggal,
      jam,
      dokumentasi,
      keterangan,
    });

    if (updatedRows === 0) {
      return res.status(400).json({ msg: "Update failed" });
    }

    res.json({ msg: "CheckPoint updated successfully" });
  } catch (error) {
    console.error(error);
    res.status(500).json({ msg: "Internal server error" });
  }
};

export const deleteCheckPoint = async (req, res) => {
  const { no_do } = req.params;

  try {
    const deletedRows = await CheckPoint.delete(no_do);
    if (deletedRows === 0) {
      return res.status(404).json({ msg: "CheckPoint not found" });
    }

    res.json({ msg: "CheckPoint deleted successfully" });
  } catch (error) {
    console.error(error);
    res.status(500).json({ msg: "Internal server error" });
  }
};

export const searchPetugas = async (req, res) => {
  const { lokasi } = req.query;

  if (!lokasi) {
    return res.status(400).json({ msg: "Parameter lokasi diperlukan" });
  }

  try {
    const petugas = await CheckPoint.getPetugasByLocation(lokasi);
    res.json(petugas);
  } catch (error) {
    console.error(error);
    res.status(500).json({ msg: "Internal server error" });
  }
};



// export const createCheckPoint = async (req, res) => {
//   upload.array("dokumentasi")(req, res, async (err) => {
//     if (err) {
//       return res.status(400).json({ msg: "Error uploading files" });
//     }

//     const { nama_petugas, titik_lokasi, no_do, tanggal, jam, keterangan } =
//       req.body;

//     const dokumentasi = req.files ? req.files.map((file) => file.path) : [];

//     console.log("Received titik_lokasi:", titik_lokasi); // Tambahkan log ini

//     try {
//       const checkPointExists = await CheckPoint.findOne({
//         key: "no_do",
//         value: no_do,
//       });

//       if (checkPointExists) {
//         return res
//           .status(409)
//           .json({ msg: "Checkpoint with this no_do number already exists" });
//       }

//       // Pastikan nama_petugas adalah string yang dipisahkan koma
//       const petugasString = Array.isArray(nama_petugas)
//         ? nama_petugas.join(", ")
//         : nama_petugas;

//       const newCheckPointId = await CheckPoint.create({
//         nama_petugas: petugasString,
//         titik_lokasi,
//         no_do,
//         tanggal,
//         jam,
//         dokumentasi: dokumentasi.join(", "),
//         keterangan,
//       });

//       res
//         .status(201)
//         .json({ msg: "Checkpoint created successfully", id: newCheckPointId });
//     } catch (error) {
//       console.error("Error creating checkpoint:", error);
//       res.status(500).json({ msg: "Internal server error" });
//     }
//   });
// };