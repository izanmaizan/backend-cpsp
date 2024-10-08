import db from "../config/Database.js";

class Petugas {
  static async create(data) {
    const sql =
      "INSERT INTO petugas (id_petugas, nama_petugas, no_hp, id_lokasi) VALUES (?, ?, ?, ?)";
    const params = [
      data.id_petugas,
      data.nama_petugas,
      data.no_hp,
      data.id_lokasi,
    ];
    return db.execute(sql, params);
  }

  static async findByLokasi(id_lokasi) {
    const sql = "SELECT * FROM petugas WHERE id_lokasi = ?";
    return db.execute(sql, [id_lokasi]);
  }

  static async findById(id_petugas) {
    const sql = "SELECT * FROM petugas WHERE id_petugas = ?";
    return db.execute(sql, [id_petugas]);
  }

  // Add this method to PetugasModel.js
  static async findByIdAndLokasi(id_petugas, id_lokasi) {
    const sql = "SELECT * FROM petugas WHERE id_petugas = ? AND id_lokasi = ?";
    return db.execute(sql, [id_petugas, id_lokasi]);
  }

  static async update(id_petugas, data) {
    const sql =
      "UPDATE petugas SET nama_petugas = ?, no_hp = ? WHERE id_petugas = ?";
    const params = [data.nama_petugas, data.no_hp, id_petugas];
    return db.execute(sql, params);
  }

  static async delete(id_petugas) {
    const sql = "DELETE FROM petugas WHERE id_petugas = ?";
    return db.execute(sql, [id_petugas]);
  }


  // Tambahkan metode ini
  static async findLastId() {
    const sql = "SELECT id_petugas FROM petugas ORDER BY id_petugas DESC LIMIT 1";
    return db.execute(sql);
  }
}

export default Petugas;
