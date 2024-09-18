import db from "../config/Database.js";

class Geofence {
  static async create(data) {
    const sql = `
      INSERT INTO geofence (id_lokasi, geofence_data, latitude, longitude, alamat) 
      VALUES (?, ?, ?, ?, ?)`;
    const params = [
      data.id_lokasi,
      data.geofence_data,
      data.latitude,
      data.longitude,
      data.alamat,
    ];
    return db.execute(sql, params);
  }

  static async findAll() {
    const sql = "SELECT * FROM geofence";
    return db.execute(sql);
  }

  static async findById(id) {
    const sql = "SELECT * FROM geofence WHERE id = ?";
    return db.execute(sql, [id]);
  }

  static async update(id, data) {
    const sql = `
      UPDATE geofence 
      SET id_lokasi = ?, geofence_data = ?, latitude = ?, longitude = ?, alamat = ? 
      WHERE id = ?`;
    const params = [
      data.id_lokasi,
      data.geofence_data,
      data.latitude,
      data.longitude,
      data.alamat,
      id,
    ];
    return db.execute(sql, params);
  }

  static async delete(id) {
    const sql = "DELETE FROM geofence WHERE id = ?";
    return db.execute(sql, [id]);
  }

  static async findByLokasiId(id_lokasi) {
    try {
      const sql = "SELECT * FROM geofence WHERE id_lokasi = ?";
      const [results] = await db.execute(sql, [id_lokasi]);
      return results;
    } catch (error) {
      console.error("Error in findByLokasiId:", error);
      throw error;
    }
  }
}

export default Geofence;
