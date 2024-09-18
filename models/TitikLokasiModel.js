// import db from "../config/Database.js";

// class TitikLokasi {
//   static async create(data) {
//     // Ubah array menjadi string JSON
//     const petugasString = JSON.stringify(data.petugas || []);
//     const noHpString = JSON.stringify(data.no_hp || []);

//     const sql =
//       "INSERT INTO titik_lokasi (id_lokasi, lokasi, petugas, no_hp) VALUES (?, ?, ?, ?)";
//     const [result] = await db.execute(sql, [
//       data.id_lokasi || null,
//       data.lokasi || null,
//       petugasString,
//       noHpString,
//     ]);
//     return result.insertId;
//   }

//   static async findAll() {
//     const sql = "SELECT * FROM titik_lokasi";
//     const [rows] = await db.execute(sql);
//     return rows;
//   }

//   static async findById(id_lokasi) {
//     const sql = "SELECT * FROM titik_lokasi WHERE id_lokasi = ?";
//     const [rows] = await db.execute(sql, [id_lokasi]);

//     if (rows.length > 0) {
//       // Parse string JSON menjadi array
//       rows[0].petugas = JSON.parse(rows[0].petugas || "[]");
//       rows[0].no_hp = JSON.parse(rows[0].no_hp || "[]");
//     }

//     return rows[0];
//   }

//   static async findOne(condition) {
//     const { key, value } = condition;

//     // Tambahkan validasi atau escaping pada key
//     if (!["id_lokasi", "lokasi", "petugas", "no_hp"].includes(key)) {
//       throw new Error("Invalid key for search condition");
//     }

//     const sql = `SELECT * FROM titik_lokasi WHERE ${key} = ?`;
//     const [rows] = await db.execute(sql, [value]);
//     return rows[0];
//   }

//   // Adjust the update method to use correct parameters
//   // static async update(id_lokasi, data) {
//   //   const sql =
//   //     "UPDATE titik_lokasi SET lokasi = ?, petugas = ?, no_hp = ? WHERE id_lokasi = ?";
//   //   const [result] = await db.execute(sql, [
//   //     data.lokasi || null,
//   //     data.petugas || null,
//   //     data.no_hp || null,
//   //     id_lokasi,
//   //   ]);
//   //   return result.affectedRows;
//   // }

//   static async update(id_lokasi, data) {
//     const sql =
//       "UPDATE titik_lokasi SET lokasi = ?, petugas = ?, no_hp = ? WHERE id_lokasi = ?";
//     const [result] = await db.execute(sql, [
//       data.lokasi || null,
//       data.petugas || null,
//       data.no_hp || null,
//       id_lokasi,
//     ]);
//     return result.affectedRows;
//   }

//   // Adjust the delete method to use correct parameters
//   static async delete(id_lokasi) {
//     const sql = "DELETE FROM titik_lokasi WHERE id_lokasi = ?";
//     const [result] = await db.execute(sql, [id_lokasi]);
//     return result.affectedRows;
//   }
// }

// export default TitikLokasi;

import db from "../config/Database.js";

class TitikLokasi {
  static async create(data) {
    const petugasString = JSON.stringify(data.petugas || []);
    const noHpString = JSON.stringify(data.no_hp || []);

    const sql =
      "INSERT INTO titik_lokasi (id_lokasi, lokasi, petugas, no_hp) VALUES (?, ?, ?, ?)";
    const params = [data.id_lokasi, data.lokasi, petugasString, noHpString];

    try {
      const [results] = await db.execute(sql, params);
      console.log("Created new record:", results);
      return results;
    } catch (error) {
      console.error("Error creating record:", error);
      throw error;
    }
  }

  static async findAll() {
    const sql = "SELECT * FROM titik_lokasi";
    try {
      const [rows] = await db.execute(sql);
      console.log("Fetched records:", rows);
      return rows;
    } catch (error) {
      console.error("Error fetching records:", error);
      throw error;
    }
  }

  static async findById(id_lokasi) {
    const sql = "SELECT * FROM titik_lokasi WHERE id_lokasi = ?";
    try {
      const [rows] = await db.execute(sql, [id_lokasi]);
      return rows[0] || null;
    } catch (error) {
      console.error("Error fetching record by ID:", error);
      throw error;
    }
  }

  static async update(id_lokasi, data) {
    const petugasString = JSON.stringify(data.petugas || []);
    const noHpString = JSON.stringify(data.no_hp || []);

    const sql =
      "UPDATE titik_lokasi SET lokasi = ?, petugas = ?, no_hp = ? WHERE id_lokasi = ?";
    const params = [data.lokasi, petugasString, noHpString, id_lokasi];

    try {
      const [results] = await db.execute(sql, params);
      console.log("Updated record:", results);
      return results.affectedRows;
    } catch (error) {
      console.error("Error updating record:", error);
      throw error;
    }
  }

  static async delete(id_lokasi) {
    const sql = "DELETE FROM titik_lokasi WHERE id_lokasi = ?";
    try {
      const [results] = await db.execute(sql, [id_lokasi]);
      console.log("Deleted record:", results);
      return results.affectedRows;
    } catch (error) {
      console.error("Error deleting record:", error);
      throw error;
    }
  }
}

export default TitikLokasi;
