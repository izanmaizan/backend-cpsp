import db from "../config/Database.js";

class Lokasi {
  static async create(data) {
    const sql = "INSERT INTO lokasi (lokasi) VALUES (?)";
    const params = [data.lokasi];
    return db.execute(sql, params);
  }

  static async findAll() {
    const sql = "SELECT * FROM lokasi";
    return db.execute(sql);
  }

  static async findById(id_lokasi) {
    const sql = "SELECT * FROM lokasi WHERE id_lokasi = ?";
    return db.execute(sql, [id_lokasi]);
  }

  static async update(id_lokasi, data) {
    const sql = "UPDATE lokasi SET lokasi = ? WHERE id_lokasi = ?";
    const params = [data.lokasi, id_lokasi];
    return db.execute(sql, params);
  }

  static async delete(id_lokasi) {
    const sql = "DELETE FROM lokasi WHERE id_lokasi = ?";
    return db.execute(sql, [id_lokasi]);
  }
}

export default Lokasi;
