import { getDetail as fetchDetail } from "../models/DetailModel.js";
import db from "../config/Database.js"; // Adjust the import according to your setup

export const getDetail = async (req, res) => {
  const no_do = req.params.no_do;

  try {
    const detailCheckPoint = await fetchDetail(no_do);

    if (detailCheckPoint.length === 0) {
      return res.status(404).json({ message: "Data tidak ditemukan" });
    }

    const detail = detailCheckPoint[0];
    if (detail.dokumentasi) {
      // Pisahkan nama file jika ada beberapa file yang digabung menjadi satu string
      const dokumentasiFiles = detail.dokumentasi
        .split(",")
        .map((file) => file.trim());

      // Buat URL publik untuk setiap file dokumentasi
      detail.dokumentasiUrls = dokumentasiFiles.map(
        (file) => `${req.protocol}://${req.get("host")}/${file}`
      );
    }

    res.json(detail);
  } catch (error) {
    console.error("Error fetching detail: ", error);
    res.status(500).json({ message: "Terjadi kesalahan pada server" });
  }
};

// Function to update detail data
export const updateDetail = async (req, res) => {
  const no_do = req.params.no_do;
  const {
    nama_petugas,
    titik_lokasi,
    tanggal,
    jam,
    keterangan,
    nama_pengemudi,
    no_truck,
    distributor,
    ekspeditur,
  } = req.body; // Gunakan titik_lokasi untuk update

  try {
    const [result] = await db.execute(
      "UPDATE check_points SET nama_petugas = ?, titik_lokasi = ?, tanggal = ?, jam = ?, keterangan = ?, nama_petugas = ?, no_truck = ?, distributor = ?, ekspeditur = ? " +
        "WHERE no_do = ?",
      [
        nama_petugas,
        titik_lokasi,
        tanggal,
        jam,
        keterangan,
        nama_pengemudi,
        no_truck,
        distributor,
        ekspeditur,
        no_do,
      ]
    );

    if (result.affectedRows === 0) {
      return res.status(404).json({ message: "Data tidak ditemukan" });
    }

    res.json({ message: "Data berhasil diperbarui" });
  } catch (error) {
    console.error("Error updating detail: ", error);
    res.status(500).json({ message: "Terjadi kesalahan pada server" });
  }
};

// Function to delete detail data
export const deleteDetail = async (req, res) => {
  const no_do = req.params.no_do;

  try {
    const [result] = await db.execute(
      "DELETE FROM check_points WHERE no_do = ?",
      [no_do]
    );

    if (result.affectedRows === 0) {
      return res.status(404).json({ message: "Data tidak ditemukan" });
    }

    res.json({ message: "Data berhasil dihapus" });
  } catch (error) {
    console.error("Error deleting detail: ", error);
    res.status(500).json({ message: "Terjadi kesalahan pada server" });
  }
};
