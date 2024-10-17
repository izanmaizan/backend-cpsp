import db from "../config/Database.js"; // Adjust import according to your setup

export const getDetail = async (no_do) => {
  const [rows] = await db.execute(
    "SELECT no_do, nama_petugas, titik_lokasi, tanggal, jam, dokumentasi, keterangan, no_hp, geofence_data, alamat, nama_pengemudi, no_truck, distributor, ekspeditur, name " +
      "FROM check_points WHERE no_do = ?",
    [no_do]
  );
  
  return rows;
};
