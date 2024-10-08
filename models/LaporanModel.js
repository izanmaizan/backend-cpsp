// LaporanModel.js di folder models
import db from "../config/Database.js";

// Fungsi untuk mengambil data laporan dari check_points dan titik_lokasi
export const getLaporan = async () => {
  try {
    // const sql = `
    //   SELECT
    //     cp.nama_petugas AS petugas,
    //     tl.lokasi AS lokasi,
    //     cp.no_do,
    //     cp.tanggal,
    //     cp.jam
    //   FROM check_points cp
    //   LEFT JOIN titik_lokasi tl ON cp.titik_lokasi = tl.lokasi
    // `;
    const sql = `SELECT 
    cp.nama_petugas AS petugas,
    l.lokasi AS lokasi,
    cp.no_do,
    cp.no_truck,
    cp.nama_pengemudi,
    cp.distributor,
    cp.ekspeditur,
    cp.tanggal,
    cp.jam
FROM check_points cp
LEFT JOIN lokasi l ON cp.titik_lokasi = l.id_lokasi
    `;

    const [rows] = await db.execute(sql);
    return rows; // Kembalikan hasil query sebagai return
  } catch (error) {
    console.error("Error fetching laporan: ", error);
    throw error; // Lemparkan error agar bisa ditangani di controller
  }
};
