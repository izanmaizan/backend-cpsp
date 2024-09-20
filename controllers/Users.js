// controllers/Users.js
import bcrypt from "bcrypt";
import jwt from "jsonwebtoken";
import User from "../models/UserModel.js";

const SECRET_KEY =
  process.env.ACCESS_TOKEN_SECRET || "qwerttyuio12345asdfghjkl67890zxcvbnm";

// ini untuk menampilkan data user
export const getUsers = async (req, res) => {
  try {
    const users = await User.findAll();
    res.json(users);
  } catch (error) {
    console.log(error);
    res.status(500).json({ msg: "Internal server error" });
  }
};

// ini untuk mendaftar
export const Register = async (req, res) => {
  const { username, password, confirmPassword, name, role } = req.body;

  try {
    if (password !== confirmPassword) {
      return res.status(400).json({ msg: "Password tidak sama!" });
    }

    const user = await User.findOne({ key: "username", value: username });
    if (user) {
      return res.status(400).json({ msg: "Username sudah ada!" });
    }

    const salt = await bcrypt.genSalt();
    const hashPassword = await bcrypt.hash(password, salt);

    await User.create({
      username,
      password: hashPassword,
      name,
      role: role || "petugas", // Default to "user" if not provided
    });

    res.json({ msg: "Berhasil mendaftar" });
  } catch (error) {
    console.log(error);
    res.status(500).json({ msg: "Internal server error" });
  }
};

// ini untuk login
export const Login = async (req, res) => {
  try {
    const user = await User.findOne({
      key: "username",
      value: req.body.username,
    });

    if (!user) {
      return res.status(404).json({ msg: "User not found" });
    }

    const match = await bcrypt.compare(req.body.password, user.password);
    if (!match) {
      return res.status(400).json({ msg: "Wrong Password" });
    }

    const { id, name, username, role } = user;

    const accessToken = jwt.sign(
      {
        userId: id,
        name,
        username,
        role,
      },
      SECRET_KEY,
      {
        expiresIn: "1d",
      }
    );

    await User.update(id, {
      refresh_token: accessToken,
    });

    res.json({ accessToken, role });
  } catch (error) {
    console.error("Login error:", error);
    res
      .status(500)
      .json({ msg: "Internal server error", error: error.message });
  }
};

// ini untuk mendapatkan data pengguna yang sedang login
export const Me = async (req, res) => {
  try {
    const authHeader = req.headers["authorization"];
    const token = authHeader && authHeader.split(" ")[1];
    if (!token) return res.status(401).json({ msg: "Unauthorized" });

    const decoded = jwt.verify(token, SECRET_KEY);

    const user = await User.findOne({
      key: "id",
      value: decoded.userId,
    });

    res.json(user);
  } catch (error) {
    console.log(error.message);
    res.status(500).send("Internal server error");
  }
};

// ini untuk keluar
export const Logout = async (req, res) => {
  try {
    const authHeader = req.headers["authorization"];
    const token = authHeader && authHeader.split(" ")[1];
    if (!token) return res.status(204).json({ msg: "No token provided" });

    const user = await User.findOne({ key: "refresh_token", value: token });

    if (!user) {
      return res
        .status(204)
        .json({ msg: "User not found or already logged out" });
    }

    await User.update(user.id, { refresh_token: null });

    res.status(200).json({ msg: "Logout successful" });
  } catch (error) {
    console.log("Logout error:", error.message);
    res.status(500).json({ msg: "Internal server error" });
  }
};

// Ini untuk update user berdasarkan username
export const updateAkun = async (req, res) => {
  try {
    const { username } = req.params; // Menggunakan username alih-alih id
    const { name, newUsername, password, role } = req.body;

    const user = await User.findOne({ key: "username", value: username });

    if (!user) {
      return res.status(404).json({ msg: "User not found" });
    }

    const updates = {};
    if (name !== undefined) updates.name = name;
    if (newUsername !== undefined) updates.username = newUsername;
    if (password !== undefined) {
      const salt = await bcrypt.genSalt();
      updates.password = await bcrypt.hash(password, salt);
    }
    if (role !== undefined) updates.role = role;

    await User.updateByUsername(username, updates);

    res.status(200).json({ msg: "Account updated successfully" });
  } catch (error) {
    console.error("Error updating account:", error.message);
    res
      .status(500)
      .json({ msg: "Internal server error", error: error.message });
  }
};

// ini untuk menghapus user berdasarkan username tanpa token
export const deleteUserByUsername = async (req, res) => {
  const { username } = req.params;

  try {
    // Cari user berdasarkan username
    const existingUser = await User.findOne({
      key: "username",
      value: username,
    });

    if (!existingUser) {
      return res.status(404).json({ msg: "User not found" });
    }

    // Hapus user berdasarkan username
    const result = await User.deleteByUsername(username);

    if (result.affectedRows === 0) {
      return res.status(500).json({ msg: "Failed to delete user" });
    }

    res.json({ msg: "User deleted successfully" });
  } catch (error) {
    console.error("Error deleting user:", error.message); // Gunakan console.error untuk log error
    res
      .status(500)
      .json({ msg: "Internal server error", error: error.message });
  }
};
