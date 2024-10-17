// models/CheckPointModel.js
import db from "../config/Database.js";

class CheckPoint {
  static async create(data) {
    const sql = `
      INSERT INTO check_points (no_do, nama_petugas, no_hp, titik_lokasi, tanggal, jam, dokumentasi, keterangan, geofence_data, alamat, nama_pengemudi, no_truck, distributor, ekspeditur, name) 
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    `;
    const [result] = await db.execute(sql, [
      data.no_do || null,
      data.nama_petugas || null,
      data.no_hp || null,
      data.titik_lokasi || null,
      data.tanggal || null,
      data.jam || null,
      data.dokumentasi || null,
      data.keterangan || null,
      data.geofence_data || null,
      data.alamat || null,
      data.nama_pengemudi || null,
      data.no_truck || null,
      data.distributor || null,
      data.ekspeditur || null,
      data.name || null,
    ]);
    return result.insertId;
  }

  static async findAll() {
    const sql = "SELECT * FROM check_points";
    const [rows] = await db.execute(sql);
    return rows;
  }

  static async findById(no_do) {
    const sql = "SELECT * FROM check_points WHERE no_do = ?";
    const [rows] = await db.execute(sql, [no_do]);
    return rows[0];
  }

  static async findOne(condition) {
    const { key, value } = condition;
    const sql = `SELECT * FROM check_points WHERE ${key} = ?`;
    const [rows] = await db.execute(sql, [value]);
    return rows[0];
  }

  static async update(no_do, data) {
    const sql = `
      UPDATE check_points SET 
        nama_petugas = ?, 
        titik_lokasi = ?, 
        tanggal = ?, 
        jam = ?, 
        dokumentasi = ?, 
        keterangan = ?, 
        nama_pengemudi = ?,
        no_truck = ?,
        distributor = ?,
        ekspeditur = ?
      WHERE no_do = ?
    `;
    const [result] = await db.execute(sql, [
      data.nama_petugas || null,
      data.titik_lokasi || null,
      data.tanggal || null,
      data.jam || null,
      data.dokumentasi || null,
      data.keterangan || null,
      data.nama_pengemudi || null,
      data.no_truck || null,
      data.distributor || null,
      data.ekspeditur || null,
      no_do,
    ]);
    return result.affectedRows;
  }

  static async delete(no_do) {
    const sql = "DELETE FROM check_points WHERE no_do = ?";
    const [result] = await db.execute(sql, [no_do]);
    return result.affectedRows;
  }

  static async searchPetugas(query) {
    const sql = "SELECT petugas FROM titik_lokasi WHERE petugas LIKE ?";
    const [rows] = await db.execute(sql, [`%${query}%`]);
    return rows;
  }

  static async getPetugasByLocation(lokasi = null) {
    const sql = "SELECT * FROM titik_lokasi WHERE id_lokasi = ?";
    const [rows] = await db.execute(sql, [lokasi]);
    return rows;
  }
}

export default CheckPoint;
