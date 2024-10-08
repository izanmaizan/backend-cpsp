// LaporanModel.js di folder models
import db from "../config/Database.js";

// Fungsi untuk mengambil data laporan dari check_points
export const getLaporan = async () => {
  try {
    const sql = `
      SELECT 
          no_do,
          nama_petugas,
          titik_lokasi,
          tanggal,
          jam,
          dokumentasi,
          keterangan,
          no_hp,
          geofence_data,
          alamat,
          nama_pengemudi,
          no_truck,
          distributor,
          ekspeditur
      FROM check_points
    `;

    const [rows] = await db.execute(sql);
    return rows; // Mengembalikan hasil query
  } catch (error) {
    console.error("Error fetching laporan: ", error);
    throw error; // Lemparkan error agar bisa ditangani di controller
  }
};
