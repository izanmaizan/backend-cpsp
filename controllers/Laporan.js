// Laporan.js di folder controllers
import { getLaporan as fetchLaporan } from "../models/LaporanModel.js"; // Mengimpor getLaporan dengan nama alias

// Fungsi untuk memformat tanggal
const formatTanggal = (tanggal) => {
  const date = new Date(tanggal);
  const day = date.getDate().toString().padStart(2, "0");
  const month = (date.getMonth() + 1).toString().padStart(2, "0"); // Bulan dimulai dari 0
  const year = date.getFullYear();
  return `${day}-${month}-${year}`;
};

export const getLaporan = async (req, res) => {
  try {
      const laporan = await fetchLaporan(); // Memanggil fungsi model untuk mendapatkan data

      // Format tanggal untuk setiap item dalam laporan
      const laporanFormatted = laporan.map((item) => {
          return {
              ...item,
              tanggal: formatTanggal(item.tanggal), // Memformat tanggal
          };
      });

      res.json(laporanFormatted); // Kirim hasil yang telah diformat ke klien
  } catch (error) {
      console.error("Error fetching laporan: ", error); // Cetak kesalahan di konsol
      res.status(500).json({ msg: "Internal server error", error: error.message }); // Sertakan pesan kesalahan
  }
};
