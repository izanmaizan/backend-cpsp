import db from "../config/Database.js"; // Adjust import according to your setup

export const getDetail = async (no_do) => {
  const [rows] = await db.execute(
    "SELECT c.no_do, c.nama_petugas, l.lokasi AS titik_lokasi, c.tanggal, c.jam, c.dokumentasi, c.keterangan, c.no_hp, c.geofence_data, c.alamat, c.nama_pengemudi, c.no_truck, c.distributor, c.ekspeditur " +
      "FROM check_points c " +
      "LEFT JOIN lokasi l ON c.titik_lokasi = l.lokasi " +
      "LEFT JOIN petugas p ON c.nama_petugas = p.nama_petugas " +
      "WHERE c.no_do = ?",
    [no_do]
  );
  return rows;
};
