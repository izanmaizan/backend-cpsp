// middleware/ftpUpload.js
import ftp from "basic-ftp";

const FTP_HOST = "ftp.checkpoint-sig.site";
const FTP_USER = "u232856820.cpsp";
const FTP_PASSWORD = "SIGcpsp2024";
const REMOTE_UPLOAD_DIR =
  "/home/u232856820/domains/checkpoint-sig.site/public_html/uploads";

const uploadFile = async (localFilePath, remoteFileName) => {
  const client = new ftp.Client();
  client.ftp.verbose = true; // Aktifkan logging untuk debugging

  try {
    await client.access({
      host: FTP_HOST,
      user: FTP_USER,
      password: FTP_PASSWORD,
      secure: true,
    });
    await client.ensureDir(REMOTE_UPLOAD_DIR); // Pastikan direktori ada
    await client.uploadFrom(localFilePath, remoteFileName); // Unggah file
    console.log(`File ${localFilePath} berhasil diunggah ke FTP.`);
  } catch (err) {
    console.error(`Gagal mengunggah file ${localFilePath}:`, err);
    throw new Error("Upload failed"); // Melempar error agar bisa ditangani di controller
  } finally {
    client.close(); // Tutup koneksi FTP
  }
};

export default uploadFile;
