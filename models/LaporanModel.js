// LaporanModel.js
import db from "../config/Database.js";

// Fungsi untuk mengambil data laporan dari check_points dan lokasi
export const getLaporan = async () => {
  try {
    const sql = `
      SELECT 
          cp.no_do,
          cp.nama_petugas,
          l.lokasi AS lokasi,
          cp.tanggal,
          cp.jam,
          cp.dokumentasi,
          cp.keterangan,
          cp.no_hp,
          cp.geofence_data,
          cp.alamat,
          cp.nama_pengemudi,
          cp.no_truck,
          cp.distributor,
          cp.ekspeditur
      FROM check_points cp
      JOIN lokasi l ON cp.titik_lokasi = l.id_lokasi
    `;

    const [rows] = await db.execute(sql);
    return rows; // Mengembalikan hasil query
  } catch (error) {
    console.error("Error fetching laporan: ", error);
    throw error; // Lemparkan error agar bisa ditangani di controller
  }
};
