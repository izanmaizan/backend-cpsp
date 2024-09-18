// models/UserModel.js
import db from "../config/Database.js";

class User {
  // ini Create akun
  static async create(data) {
    const sql =
      "INSERT INTO user (username, password, name, role) VALUES (?, ?, ?, ?)";
    const [result] = await db.execute(sql, [
      data.username || null,
      data.password || null,
      data.name || null,
      data.role || "user",
    ]);
    return result.insertId;
  }

  // ini mencari semua
  static async findAll() {
    const sql = "SELECT * FROM user";
    const [rows] = await db.execute(sql);
    return rows;
  }

  // ini mencari berdasarkan id
  static async findById(id) {
    const sql = "SELECT * FROM user WHERE id = ?";
    const [rows] = await db.execute(sql, [id]);
    console.log(`findById result for ${id}:`, rows); // Tambahkan log
    return rows[0];
  }

  // ini mencari satu persatu
  static async findOne(condition) {
    const { key, value } = condition;
    const sql = `SELECT * FROM user WHERE ${key} = ?`;
    const [rows] = await db.execute(sql, [value]);
    return rows[0]; // Pastikan ini mengembalikan objek atau null jika tidak ditemukan
  }

  // ini update
  static async update(id, data) {
    const updateFields = [];
    const values = [];

    if (data.username !== undefined) {
      updateFields.push("username = ?");
      values.push(data.username);
    }
    if (data.password !== undefined) {
      updateFields.push("password = ?");
      values.push(data.password);
    }
    if (data.name !== undefined) {
      updateFields.push("name = ?");
      values.push(data.name);
    }
    if (data.role !== undefined) {
      updateFields.push("role = ?");
      values.push(data.role);
    }
    if (data.refresh_token !== undefined) {
      updateFields.push("refresh_token = ?");
      values.push(data.refresh_token);
    }

    values.push(id);

    const sql = `UPDATE user SET ${updateFields.join(", ")} WHERE id = ?`;
    const [result] = await db.execute(sql, values);
    return result.affectedRows;
  }

  // ini update password
  static async updatePassword(id, data) {
    const sql = "UPDATE user SET password = ? WHERE id = ?";
    const [result] = await db.execute(sql, [data.password || null, id]);
    return result.affectedRows;
  }

  // Tambahkan metode ini untuk update berdasarkan username
  static async updateByUsername(username, data) {
    const updateFields = [];
    const values = [];

    if (data.username !== undefined) {
      updateFields.push("username = ?");
      values.push(data.username);
    }
    if (data.password !== undefined) {
      updateFields.push("password = ?");
      values.push(data.password);
    }
    if (data.name !== undefined) {
      updateFields.push("name = ?");
      values.push(data.name);
    }
    if (data.role !== undefined) {
      updateFields.push("role = ?");
      values.push(data.role);
    }
    if (data.refresh_token !== undefined) {
      updateFields.push("refresh_token = ?");
      values.push(data.refresh_token);
    }

    values.push(username);

    const sql = `UPDATE user SET ${updateFields.join(", ")} WHERE username = ?`;
    const [result] = await db.execute(sql, values);
    return result.affectedRows;
  }

  static async deleteByUsername(username) {
    const sql = "DELETE FROM user WHERE username = ?";
    const [result] = await db.execute(sql, [username]);
    return result; // Pastikan ini mengembalikan objek dengan property affectedRows
  }
}

export default User;
