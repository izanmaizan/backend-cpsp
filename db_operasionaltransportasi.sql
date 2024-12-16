-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2024 at 08:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_operasionaltransportasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `check_points`
--

CREATE TABLE `check_points` (
  `no_do` varchar(15) NOT NULL,
  `nama_petugas` varchar(100) DEFAULT NULL,
  `titik_lokasi` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `dokumentasi` varchar(500) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `geofence_data` varchar(255) DEFAULT NULL,
  `nama_pengemudi` varchar(100) DEFAULT NULL,
  `no_truck` varchar(50) DEFAULT NULL,
  `distributor` varchar(100) DEFAULT NULL,
  `ekspeditur` varchar(100) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `keterangan` varchar(500) DEFAULT NULL,
  `no_hp` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `check_points`
--

INSERT INTO `check_points` (`no_do`, `nama_petugas`, `titik_lokasi`, `tanggal`, `jam`, `dokumentasi`, `alamat`, `geofence_data`, `nama_pengemudi`, `no_truck`, `distributor`, `ekspeditur`, `name`, `keterangan`, `no_hp`) VALUES
('0711770000', 'Andi Sutrisno', 'CP SUMSEL', '2024-11-25', '08:30:00', 'Dokumentasi A', 'Kampung Cengkeh, Sumsel', '-0.95697300,100.39741710', 'Budi Santoso', 'BA-0001-AA', 'PT. Sumber Alam', 'CV. Lintas Mandiri', 'Petugas Sumsel', 'Kondisi truk baik', '081234567890'),
('0711770001', 'Dedi Prabowo', 'CP SOLOK', '2024-11-20', '09:00:00', 'Dokumentasi B', 'Kampung Baru, Solok', '-0.94568200,100.65012310', 'Rudi Hartono', 'BA-0002-AB', 'PT. Solok Jaya', 'PT. Transindo', 'Petugas Solok', 'Ban terkilir sedikit', '081234567891'),
('0711770002', 'Joko Widodo', 'CP LAMPUNG', '2024-11-18', '14:15:00', 'Dokumentasi C', 'Desa Sukajadi, Lampung', '-0.94597300,104.01678910', 'Yanto Pranata', 'BA-0003-AC', 'PT. Lampung Sejahtera', 'PT. Ekspres Logistik', 'Petugas Lampung', 'Lampu indikator mati', '081234567892'),
('0711770003', 'Arief Rahman', 'CP KAB SOLOK', '2024-11-05', '16:45:00', 'Dokumentasi D', 'Desa Malang, Kab Solok', '-0.94456900,100.78011510', 'Sandi Nugraha', 'BA-0004-AD', 'PT. Sumatera Logistics', 'PT. Gracia Express', 'Petugas Kab Solok', 'Rantai truk kendur', '081234567893'),
('0711770004', 'Eko Prasetyo', 'CP INDARUNG', '2024-11-12', '11:00:00', 'Dokumentasi E', 'Desa Tanjung, Indarung', '-0.91087600,100.39674120', 'Herman Wijaya', 'BA-0005-AE', 'PT. Indarung Mandiri', 'CV. Logistik Sejahtera', 'Petugas Indarung', 'Kondisi truk normal', '081234567894'),
('0711770005', 'Bambang Sumarno', 'GP DUMAI', '2024-11-19', '13:30:00', 'Dokumentasi F', 'Desa Suka Maju, Dumai', '-0.91538500,101.48501710', 'Doni Santoso', 'BA-0006-AF', 'PT. Dumai Perkasa', 'PT. Trans Ekspres', 'Petugas Dumai', 'Sistem GPS tidak berfungsi', '081234567895'),
('0711770006', 'Hendra Gunawan', 'CP BENGKULU', '2024-11-15', '10:30:00', 'Dokumentasi G', 'Desa Pasar Baru, Bengkulu', '-3.79041800,102.26371910', 'Anton Suharto', 'BA-0007-AG', 'PT. Bengkulu Logistik', 'PT. Ekspres Antar', 'Petugas Bengkulu', 'Kondisi mesin truk stabil', '081234567896'),
('0711770007', 'Sigit Prasetya', 'CP JAMBI', '2024-11-10', '07:45:00', 'Dokumentasi H', 'Desa Jambi Lestari, Jambi', '-1.63174600,103.61318510', 'Wawan Setiawan', 'BA-0008-AH', 'PT. Jambi Sejahtera', 'PT. Lintas Dunia', 'Petugas Jambi', 'Rem truk kurang responsif', '081234567897'),
('0711770008', 'Teguh Santoso', 'CP ACEH', '2024-11-03', '16:00:00', 'Dokumentasi I', 'Kampung Aceh, Aceh', '4.51728700,96.74994610', 'Agus Susanto', 'BA-0009-AI', 'PT. Aceh Perkasa', 'PT. Ekspeditur Mandiri', 'Petugas Aceh', 'Pintu truk sedikit berkarat', '081234567898'),
('0711770009', 'Fajar Pramudito', 'CP SUMSEL', '2024-10-22', '12:00:00', 'Dokumentasi J', 'Desa Beringin, Sumsel', '-0.97543000,100.22233410', 'Deden Sugiharto', 'BA-0010-AJ', 'PT. Sumsel Terang', 'PT. Transindo Jaya', 'Petugas Sumsel', 'Kondisi truk baik', '081234567899'),
('0711770010', 'Yusuf Firmansyah', 'CP SOLOK', '2024-10-18', '14:30:00', 'Dokumentasi K', 'Desa Semangka, Solok', '-0.95642700,100.52872510', 'Budi Prasetyo', 'BA-0011-AK', 'PT. Solok Mandiri', 'CV. Lintas Perkasa', 'Petugas Solok', 'Ban belakang bocor', '081234567900'),
('0711770011', 'Dani Prasetya', 'CP LAMPUNG', '2024-10-16', '09:15:00', 'Dokumentasi L', 'Kampung Sumber, Lampung', '-0.92934800,104.17365310', 'Raka Wijaya', 'BA-0012-AL', 'PT. Lampung Jaya', 'PT. Lintas Logistik', 'Petugas Lampung', 'Kondisi mesin optimal', '081234567901'),
('0711770012', 'Mulyadi Setiawan', 'CP KAB SOLOK', '2024-10-14', '11:30:00', 'Dokumentasi M', 'Desa Semut, Kab Solok', '-0.95034800,100.76341010', 'Heru Setiawan', 'BA-0013-AM', 'PT. Solok Jaya', 'CV. Ekspres Sejahtera', 'Petugas Kab Solok', 'Kondisi truk prima', '081234567902'),
('0711770013', 'Taufik Rahman', 'CP INDARUNG', '2024-10-11', '13:45:00', 'Dokumentasi N', 'Desa Keluarga, Indarung', '-0.91967300,100.35112510', 'Irwan Wijaya', 'BA-0014-AN', 'PT. Indarung Sejahtera', 'PT. Trans Ekspeditur', 'Petugas Indarung', 'Kondisi truk kurang stabil', '081234567903'),
('0711770014', 'Hendra Setiawan', 'GP DUMAI', '2024-10-09', '15:30:00', 'Dokumentasi O', 'Kampung Baru, Dumai', '-0.91917800,101.40519210', 'Tio Setiawan', 'BA-0015-AO', 'PT. Dumai Jaya', 'PT. Lintas Mandiri', 'Petugas Dumai', 'Mesin truk berasap', '081234567904'),
('0711770015', 'Santo Nugroho', 'CP BENGKULU', '2024-10-05', '17:00:00', 'Dokumentasi P', 'Kampung Merdeka, Bengkulu', '-3.79641200,102.28211310', 'Ali Guntur', 'BA-0016-AP', 'PT. Bengkulu Mandiri', 'PT. Ekspeditur Cepat', 'Petugas Bengkulu', 'Kondisi truk bagus', '081234567905'),
('0711770016', 'Anton Suharto', 'CP JAMBI', '2024-10-02', '08:00:00', 'Dokumentasi Q', 'Kampung Jambi, Jambi', '-1.62782000,103.62487410', 'Dimas Pramudya', 'BA-0017-AQ', 'PT. Jambi Sejahtera', 'PT. Lintas Logistik', 'Petugas Jambi', 'Mesin bergetar sedikit', '081234567906'),
('0711770017', 'Sandi Nugraha', 'CP ACEH', '2024-09-29', '12:45:00', 'Dokumentasi R', 'Kampung Aceh Utara, Aceh', '4.54578700,96.74983710', 'Riki Pratama', 'BA-0018-AR', 'PT. Aceh Perkasa', 'CV. Ekspedisi Cepat', 'Petugas Aceh', 'Truk mengalami sedikit goresan', '081234567907'),
('0711770018', 'Rudi Hartono', 'CP SUMSEL', '2024-09-22', '10:00:00', 'Dokumentasi S', 'Kampung Harapan, Sumsel', '-0.98657400,100.32187910', 'Dani Kusuma', 'BA-0019-AS', 'PT. Sumsel Terang', 'PT. Ekspres Logistik', 'Petugas Sumsel', 'Kondisi truk prima', '081234567908'),
('0711770019', 'Yanto Pranata', 'CP SOLOK', '2024-09-15', '11:15:00', 'Dokumentasi T', 'Desa Kuning, Solok', '-0.95823600,100.48712110', 'Sigit Santoso', 'BA-0020-AT', 'PT. Solok Jaya', 'CV. Lintas Mandiri', 'Petugas Solok', 'Sistem AC truk bermasalah', '081234567909'),
('0711770020', 'Andi Wibowo', 'CP BENGKULU', '2024-09-30', '14:30:00', 'Dokumentasi U', 'Desa Terang, Bengkulu', '-3.80587400,102.30319610', 'Benny Setiawan', 'BA-0021-AU', 'PT. Bengkulu Jaya', 'PT. Transindo', 'Petugas Bengkulu', 'Truk sedikit goyang', '081234567910'),
('0711770021', 'Hendra Nugroho', 'CP JAMBI', '2024-09-28', '09:00:00', 'Dokumentasi V', 'Desa Jaya, Jambi', '-1.64391500,103.64958210', 'Rudi Prasetyo', 'BA-0022-AV', 'PT. Jambi Mandiri', 'PT. Lintas Perkasa', 'Petugas Jambi', 'Kondisi truk baik', '081234567911'),
('0711770022', 'Teguh Adi', 'CP ACEH', '2024-09-25', '10:15:00', 'Dokumentasi W', 'Kampung Baru, Aceh', '4.56321900,96.74823310', 'Irwan Setiawan', 'BA-0023-AW', 'PT. Aceh Perkasa', 'CV. Transindo', 'Petugas Aceh', 'Mesin truk prima', '081234567912'),
('0711770023', 'Mulyadi Agung', 'CP SUMSEL', '2024-09-22', '12:30:00', 'Dokumentasi X', 'Desa Sukajadi, Sumsel', '-0.98021700,100.36042710', 'Toni Prasetyo', 'BA-0024-AX', 'PT. Sumsel Terang', 'PT. Lintas Cepat', 'Petugas Sumsel', 'Truk berasap sedikit', '081234567913'),
('0711770024', 'Yanto Kurniawan', 'CP SOLOK', '2024-09-19', '13:45:00', 'Dokumentasi Y', 'Desa Mandiri, Solok', '-0.95175600,100.53834910', 'Sandi Nugraha', 'BA-0025-AY', 'PT. Solok Jaya', 'PT. Ekspedisi Cepat', 'Petugas Solok', 'Kondisi truk normal', '081234567914'),
('0711770025', 'Budi Santoso', 'CP LAMPUNG', '2024-09-16', '15:00:00', 'Dokumentasi Z', 'Desa Maju, Lampung', '-0.94842100,104.13524710', 'Heru Pranata', 'BA-0026-AZ', 'PT. Lampung Mandiri', 'PT. Ekspedisi Transindo', 'Petugas Lampung', 'Rem truk sedikit lemah', '081234567915'),
('0711770026', 'Deni Hermawan', 'CP KAB SOLOK', '2024-09-12', '11:30:00', 'Dokumentasi AA', 'Desa Gembira, Kab Solok', '-0.96543100,100.71451310', 'Ricky Suharto', 'BA-0027-BA', 'PT. Solok Jaya', 'PT. Lintas Jaya', 'Petugas Kab Solok', 'Kondisi truk stabil', '081234567916'),
('0711770027', 'Yusuf Pratama', 'CP INDARUNG', '2024-09-08', '08:30:00', 'Dokumentasi AB', 'Desa Lestari, Indarung', '-0.92767600,100.33249110', 'Didi Setiawan', 'BA-0028-BB', 'PT. Indarung Jaya', 'CV. Lintas Ekspres', 'Petugas Indarung', 'Ban depan sedikit aus', '081234567917'),
('0711770028', 'Anton Purnama', 'GP DUMAI', '2024-09-04', '16:00:00', 'Dokumentasi AC', 'Desa Jaya, Dumai', '-0.93048200,101.41561410', 'Bambang Santoso', 'BA-0029-BC', 'PT. Dumai Perkasa', 'PT. Transindo', 'Petugas Dumai', 'Kondisi truk baik', '081234567918'),
('0711770029', 'Sigit Prabowo', 'CP BENGKULU', '2024-09-01', '14:30:00', 'Dokumentasi AD', 'Desa Merdeka, Bengkulu', '-3.78167500,102.28045910', 'Dani Wijaya', 'BA-0030-BD', 'PT. Bengkulu Mandiri', 'CV. Lintas Ekspres', 'Petugas Bengkulu', 'Kondisi mesin sedikit overheat', '081234567919'),
('0711770030', 'Mardiono Prasetyo', 'CP SUMSEL', '2024-09-18', '08:00:00', 'Dokumentasi U', 'Kampung Pinang, Sumsel', '-0.97649200,100.31271110', 'Dedi Santoso', 'BA-0021-AU', 'PT. Sumsel Sejahtera', 'PT. Transindo Jaya', 'Petugas Sumsel', 'Kondisi mesin truk baik', '081234567910'),
('0711770031', 'Ari Setiawan', 'CP SOLOK', '2024-09-20', '10:30:00', 'Dokumentasi V', 'Desa Sawit, Solok', '-0.95285300,100.51531710', 'Budi Santoso', 'BA-0022-AV', 'PT. Solok Maju', 'CV. Logistik Perkasa', 'Petugas Solok', 'Rem truk sedikit bermasalah', '081234567911'),
('0711770032', 'Eko Hadi', 'CP LAMPUNG', '2024-09-22', '13:00:00', 'Dokumentasi W', 'Desa Jati, Lampung', '-0.93323500,104.18242310', 'Hendra Suhardi', 'BA-0023-AW', 'PT. Lampung Lestari', 'PT. Ekspres Logistik', 'Petugas Lampung', 'Ban belakang truk bocor', '081234567912'),
('0711770033', 'Dwi Setiawan', 'CP KAB SOLOK', '2024-09-25', '09:45:00', 'Dokumentasi X', 'Desa Salak, Kab Solok', '-0.94826400,100.75962510', 'Toni Prawira', 'BA-0024-AX', 'PT. Solok Sejahtera', 'PT. Lintas Mandiri', 'Petugas Kab Solok', 'Kondisi truk normal', '081234567913'),
('0711770034', 'Fahmi Ramadhan', 'CP INDARUNG', '2024-09-27', '16:15:00', 'Dokumentasi Y', 'Desa Tanjung, Indarung', '-0.91168400,100.35516210', 'Arief Nugroho', 'BA-0025-AY', 'PT. Indarung Mandiri', 'PT. Transindo', 'Petugas Indarung', 'Sistem GPS tidak berfungsi', '081234567914'),
('0711770035', 'Rifqi Ramadhan', 'GP DUMAI', '2024-09-30', '12:30:00', 'Dokumentasi Z', 'Desa Cempaka, Dumai', '-0.91726400,101.41943810', 'Suleiman Ardiansyah', 'BA-0026-AZ', 'PT. Dumai Perkasa', 'PT. Lintas Ekspres', 'Petugas Dumai', 'Truk mengalami sedikit goresan', '081234567915'),
('0711770036', 'Arif Wibowo', 'CP BENGKULU', '2024-10-03', '14:00:00', 'Dokumentasi AA', 'Kampung Sumber, Bengkulu', '-3.79532200,102.28134210', 'Arman Luthfi', 'BA-0027-BA', 'PT. Bengkulu Jaya', 'PT. Transindo', 'Petugas Bengkulu', 'Kondisi truk stabil', '081234567916'),
('0711770037', 'Joko Prasetyo', 'CP JAMBI', '2024-10-05', '10:00:00', 'Dokumentasi AB', 'Desa Bukit, Jambi', '-1.62353200,103.59872110', 'Heru Setiawan', 'BA-0028-BB', 'PT. Jambi Lestari', 'PT. Lintas Mandiri', 'Petugas Jambi', 'Rem truk sedikit bunyi', '081234567917'),
('0711770038', 'Samsul Arifin', 'CP ACEH', '2024-10-07', '13:30:00', 'Dokumentasi AC', 'Desa Gunung, Aceh', '4.51874500,96.75330210', 'Rudi Santoso', 'BA-0029-BC', 'PT. Aceh Perkasa', 'PT. Ekspeditur Cepat', 'Petugas Aceh', 'Lampu belakang truk mati', '081234567918'),
('0711770039', 'Rizky Wijaya', 'CP SUMSEL', '2024-10-09', '08:30:00', 'Dokumentasi AD', 'Kampung Tengah, Sumsel', '-0.97544100,100.31049010', 'Teguh Rachman', 'BA-0030-BD', 'PT. Sumsel Terang', 'PT. Lintas Jaya', 'Petugas Sumsel', 'Kondisi mesin truk prima', '081234567919'),
('0711770040', 'Mira Wijaya', 'CP SUMSEL', '2024-09-30', '13:00:00', 'Dokumentasi U', 'Desa Cendana, Sumsel', '-0.98847300,100.35248910', 'Hendra Prasetyo', 'BA-0021-AU', 'PT. Sumsel Sejahtera', 'PT. Transindo', 'Petugas Sumsel', 'Kondisi truk normal', '081234567910'),
('0711770041', 'Aldi Santoso', 'CP SOLOK', '2024-09-28', '08:15:00', 'Dokumentasi V', 'Kampung Pahlawan, Solok', '-0.96017400,100.48587210', 'Doni Subagio', 'BA-0022-AV', 'PT. Solok Mandiri', 'PT. Lintas Ekspres', 'Petugas Solok', 'Lampu truk tidak menyala', '081234567911'),
('0711770042', 'Mery Utami', 'CP LAMPUNG', '2024-09-25', '11:30:00', 'Dokumentasi W', 'Desa Tegal, Lampung', '-0.92987400,104.24531910', 'Gilang Mulyadi', 'BA-0023-AW', 'PT. Lampung Jaya', 'PT. Trans Lintas', 'Petugas Lampung', 'Kondisi truk baik', '081234567912'),
('0711770043', 'Fahmi Rahmat', 'CP KAB SOLOK', '2024-09-20', '14:45:00', 'Dokumentasi X', 'Kampung Indah, Kab Solok', '-0.94631800,100.76653910', 'Rudi Hartono', 'BA-0024-AX', 'PT. Solok Terang', 'PT. Lintas Ekspedisi', 'Petugas Kab Solok', 'Kondisi mesin truk optimal', '081234567913'),
('0711770044', 'Lina Sari', 'CP INDARUNG', '2024-09-18', '10:00:00', 'Dokumentasi Y', 'Kampung Pertiwi, Indarung', '-0.91959200,100.39125010', 'Zaki Pratama', 'BA-0025-AY', 'PT. Indarung Sejahtera', 'CV. Transindo', 'Petugas Indarung', 'Truk mengalami sedikit kerusakan di pintu', '081234567914'),
('0711770045', 'Wawan Nugroho', 'GP DUMAI', '2024-09-15', '16:30:00', 'Dokumentasi Z', 'Desa Harapan, Dumai', '-0.91212500,101.44254110', 'Rian Setiawan', 'BA-0026-AZ', 'PT. Dumai Perkasa', 'PT. Lintas Mandiri', 'Petugas Dumai', 'Kondisi ban truk rusak', '081234567915'),
('0711770046', 'Rina Putri', 'CP BENGKULU', '2024-09-10', '09:15:00', 'Dokumentasi AA', 'Kampung Rimba, Bengkulu', '-3.79418300,102.27543610', 'Ardiansyah Setiawan', 'BA-0027-BA', 'PT. Bengkulu Sejahtera', 'CV. Lintas Perkasa', 'Petugas Bengkulu', 'Kondisi truk dalam keadaan baik', '081234567916'),
('0711770047', 'Arianto Sutrisno', 'CP JAMBI', '2024-09-07', '12:00:00', 'Dokumentasi AB', 'Desa Barito, Jambi', '-1.61948800,103.61847910', 'Fajar Nugroho', 'BA-0028-BB', 'PT. Jambi Mandiri', 'PT. Ekspres Sejahtera', 'Petugas Jambi', 'Rem truk terasa sedikit blong', '081234567917'),
('0711770048', 'Siti Nurhaliza', 'CP ACEH', '2024-09-02', '10:30:00', 'Dokumentasi AC', 'Kampung Merdeka, Aceh', '4.52117300,96.74828510', 'Taufik Hidayat', 'BA-0029-BC', 'PT. Aceh Sejahtera', 'PT. Lintas Ekspeditur', 'Petugas Aceh', 'Truk dalam kondisi baik', '081234567918'),
('0711770049', 'Zulfiqar Ali', 'CP SUMSEL', '2024-08-30', '15:45:00', 'Dokumentasi AD', 'Desa Raya, Sumsel', '-0.96856100,100.37587410', 'Yusuf Ridwan', 'BA-0030-BD', 'PT. Sumsel Terang', 'PT. Transindo', 'Petugas Sumsel', 'AC truk tidak dingin', '081234567919'),
('0711770050', 'Dwi Putri', 'CP SOLOK', '2024-08-28', '14:00:00', 'Dokumentasi AE', 'Kampung Maju, Solok', '-0.95123700,100.51130310', 'Herman Santoso', 'BA-0031-BE', 'PT. Solok Perkasa', 'CV. Ekspres Mandiri', 'Petugas Solok', 'Sistem kelistrikan truk bermasalah', '081234567920'),
('0711770051', 'Riki Santoso', 'CP LAMPUNG', '2024-08-25', '13:30:00', 'Dokumentasi AF', 'Desa Sumber Rejeki, Lampung', '-0.92681200,104.25714710', 'Budi Prasetyo', 'BA-0032-BF', 'PT. Lampung Jaya', 'PT. Lintas Ekspres', 'Petugas Lampung', 'Kondisi truk normal', '081234567921'),
('0711770052', 'Febri Hidayat', 'CP KAB SOLOK', '2024-08-23', '10:00:00', 'Dokumentasi AG', 'Desa Citra, Kab Solok', '-0.94030500,100.75938710', 'Dani Kusuma', 'BA-0033-BG', 'PT. Solok Mandiri', 'CV. Transindo', 'Petugas Kab Solok', 'Kondisi truk baik', '081234567922'),
('0711770053', 'Indah Puspita', 'CP INDARUNG', '2024-08-20', '12:15:00', 'Dokumentasi AH', 'Kampung Jaya, Indarung', '-0.91747500,100.40009210', 'Zaki Hadi', 'BA-0034-BH', 'PT. Indarung Sejahtera', 'PT. Ekspedisi Jaya', 'Petugas Indarung', 'Pintu belakang truk sedikit macet', '081234567923'),
('0711770054', 'Rendi Wijaya', 'GP DUMAI', '2024-08-17', '16:00:00', 'Dokumentasi AI', 'Kampung Baru, Dumai', '-0.91233700,101.48063510', 'Mulyadi Adi', 'BA-0035-BI', 'PT. Dumai Perkasa', 'PT. Lintas Mandiri', 'Petugas Dumai', 'Kondisi truk baik', '081234567924'),
('0711770055', 'Eka Lestari', 'CP BENGKULU', '2024-08-12', '10:30:00', 'Dokumentasi AJ', 'Desa Suka Maju, Bengkulu', '-3.80112600,102.26814710', 'Rudi Pramudito', 'BA-0036-BJ', 'PT. Bengkulu Terang', 'PT. Transindo', 'Petugas Bengkulu', 'Kondisi mesin truk baik', '081234567925'),
('0711770056', 'Siti Ayu', 'CP JAMBI', '2024-08-08', '12:30:00', 'Dokumentasi AK', 'Desa Serasi, Jambi', '-1.62383500,103.62374010', 'Wahid Setiawan', 'BA-0037-BK', 'PT. Jambi Sejahtera', 'PT. Lintas Mandiri', 'Petugas Jambi', 'Truk berjalan lancar', '081234567926'),
('0711770057', 'Dian Prasetyo', 'CP ACEH', '2024-08-05', '09:45:00', 'Dokumentasi AL', 'Kampung Sejahtera, Aceh', '4.52471500,96.74687210', 'Edi Santoso', 'BA-0038-BL', 'PT. Aceh Perkasa', 'PT. Ekspres Cepat', 'Petugas Aceh', 'Kondisi truk baik', '081234567927'),
('0711770058', 'Naufal Akbar', 'CP SUMSEL', '2024-09-30', '09:00:00', 'Dokumentasi U', 'Desa Bumi Raya, Sumsel', '-0.97213400,100.33927810', 'Rudi Ardianto', 'BA-0021-AU', 'PT. Sumsel Mandiri', 'PT. Transindo', 'Petugas Sumsel', 'Ban depan truk kempes', '081234567910'),
('0711770059', 'Alfian Syahputra', 'CP SOLOK', '2024-09-28', '10:30:00', 'Dokumentasi V', 'Desa Cempaka, Solok', '-0.94837800,100.58091210', 'Deddy Kristanto', 'BA-0022-AV', 'PT. Solok Perkasa', 'PT. Lintas Jaya', 'Petugas Solok', 'Kondisi mesin truk baik', '081234567911'),
('0711770060', 'Ridho Fadilah', 'CP LAMPUNG', '2024-09-24', '11:45:00', 'Dokumentasi W', 'Desa Sukoharjo, Lampung', '-0.92464700,104.20785110', 'Andi Wibowo', 'BA-0023-AW', 'PT. Lampung Mandiri', 'PT. Trans Ekspres', 'Petugas Lampung', 'Lampu indikator rusak', '081234567912'),
('0711770061', 'Dwi Rachmawati', 'CP KAB SOLOK', '2024-09-20', '12:00:00', 'Dokumentasi X', 'Desa Gunung, Kab Solok', '-0.94023700,100.75946010', 'Bambang Susanto', 'BA-0024-AX', 'PT. Solok Sejahtera', 'CV. Ekspeditur Cepat', 'Petugas Kab Solok', 'Kondisi truk optimal', '081234567913'),
('0711770062', 'Amirudin Abdullah', 'CP INDARUNG', '2024-09-18', '13:15:00', 'Dokumentasi Y', 'Desa Indah, Indarung', '-0.91247000,100.38864310', 'Sutrisno Wibowo', 'BA-0025-AY', 'PT. Indarung Jaya', 'PT. Lintas Sejahtera', 'Petugas Indarung', 'Kondisi truk prima', '081234567914'),
('0711770063', 'Mikael Fajrin', 'GP DUMAI', '2024-09-15', '14:30:00', 'Dokumentasi Z', 'Kampung Baru, Dumai', '-0.92045900,101.39573210', 'Yusuf Prasetyo', 'BA-0026-AZ', 'PT. Dumai Sejahtera', 'PT. Lintas Mandiri', 'Petugas Dumai', 'Mesin truk kurang stabil', '081234567915'),
('0711770064', 'Iqbal Setyawan', 'CP BENGKULU', '2024-09-12', '15:00:00', 'Dokumentasi AA', 'Desa Sejahtera, Bengkulu', '-3.80071300,102.26598710', 'Taufik Hidayat', 'BA-0027-BA', 'PT. Bengkulu Jaya', 'PT. Ekspeditur Cepat', 'Petugas Bengkulu', 'AC truk tidak dingin', '081234567916'),
('0711770065', 'Rudi Prasetyo', 'CP JAMBI', '2024-09-10', '16:00:00', 'Dokumentasi AB', 'Desa Makmur, Jambi', '-1.63358100,103.61908010', 'Nugroho Hartanto', 'BA-0028-BB', 'PT. Jambi Perkasa', 'PT. Lintas Jaya', 'Petugas Jambi', 'Kondisi truk normal', '081234567917'),
('0711770066', 'Eko Pratama', 'CP ACEH', '2024-09-08', '17:30:00', 'Dokumentasi AC', 'Desa Sumber Rejeki, Aceh', '4.54034500,96.73426710', 'Benny Pranata', 'BA-0029-BC', 'PT. Aceh Sejahtera', 'PT. Ekspedisi Sejahtera', 'Petugas Aceh', 'Pintu truk sedikit macet', '081234567918'),
('0711770067', 'Budi Santosa', 'CP SUMSEL', '2024-09-05', '08:00:00', 'Dokumentasi AD', 'Desa Terang, Sumsel', '-0.97658300,100.33104410', 'Iwan Setiawan', 'BA-0030-BD', 'PT. Sumsel Sejahtera', 'PT. Transindo', 'Petugas Sumsel', 'Kondisi truk baik', '081234567919'),
('0711770068', 'Herman Susanto', 'CP SOLOK', '2024-09-02', '09:00:00', 'Dokumentasi AE', 'Desa Sejahtera, Solok', '-0.94182000,100.57484010', 'Dion Prasetyo', 'BA-0031-BE', 'PT. Solok Perkasa', 'PT. Lintas Jaya', 'Petugas Solok', 'Kondisi mesin truk stabil', '081234567920'),
('0711770069', 'Agus Wibowo', 'CP LAMPUNG', '2024-08-30', '10:30:00', 'Dokumentasi AF', 'Desa Harapan, Lampung', '-0.92051000,104.21549910', 'Tio Nugroho', 'BA-0032-BF', 'PT. Lampung Mandiri', 'PT. Trans Ekspres', 'Petugas Lampung', 'Lampu belakang truk rusak', '081234567921'),
('0711770070', 'Taufik Setiawan', 'CP KAB SOLOK', '2024-08-28', '11:15:00', 'Dokumentasi AG', 'Desa Raya, Kab Solok', '-0.93786000,100.76829310', 'Wanto Prasetyo', 'BA-0033-BG', 'PT. Solok Jaya', 'CV. Ekspeditur Cepat', 'Petugas Kab Solok', 'Ban belakang kempes', '081234567922'),
('0711770071', 'Dina Wulandari', 'CP INDARUNG', '2024-08-25', '12:00:00', 'Dokumentasi AH', 'Desa Indah, Indarung', '-0.91195700,100.38044410', 'Sandy Pramudito', 'BA-0034-BH', 'PT. Indarung Sejahtera', 'PT. Lintas Sejahtera', 'Petugas Indarung', 'Kondisi truk optimal', '081234567923'),
('0711770072', 'Rika Hidayat', 'GP DUMAI', '2024-08-23', '13:30:00', 'Dokumentasi AI', 'Kampung Baru, Dumai', '-0.91874100,101.39918310', 'Eko Setiawan', 'BA-0035-BI', 'PT. Dumai Jaya', 'PT. Lintas Mandiri', 'Petugas Dumai', 'Pintu belakang truk rusak', '081234567924'),
('0711770073', 'Deni Wira', 'CP BENGKULU', '2024-08-20', '14:45:00', 'Dokumentasi AJ', 'Desa Sukamakmur, Bengkulu', '-3.79219100,102.26287710', 'Fajar Nugroho', 'BA-0036-BJ', 'PT. Bengkulu Jaya', 'PT. Ekspeditur Cepat', 'Petugas Bengkulu', 'Mesin truk kurang optimal', '081234567925'),
('0711770074', 'Sultan Anwar', 'CP JAMBI', '2024-08-17', '15:30:00', 'Dokumentasi AK', 'Desa Makmur, Jambi', '-1.62987700,103.61608110', 'Agung Prasetyo', 'BA-0037-BK', 'PT. Jambi Mandiri', 'PT. Lintas Jaya', 'Petugas Jambi', 'Truk dalam kondisi prima', '081234567926'),
('0711770075', 'Rahman Suharto', 'CP ACEH', '2024-08-14', '16:00:00', 'Dokumentasi AL', 'Desa Sejahtera, Aceh', '4.54304200,96.74104510', 'Rizki Pranata', 'BA-0038-BL', 'PT. Aceh Sejahtera', 'PT. Ekspedisi Sejahtera', 'Petugas Aceh', 'Pintu depan truk berkarat', '081234567927'),
('0711770076', 'Joko Santoso', 'CP SUMSEL', '2024-08-12', '17:30:00', 'Dokumentasi AM', 'Desa Raya, Sumsel', '-0.97384500,100.32719310', 'Tegar Prasetyo', 'BA-0039-BM', 'PT. Sumsel Sejahtera', 'PT. Transindo', 'Petugas Sumsel', 'AC truk berfungsi dengan baik', '081234567928'),
('0711770077', 'Siti Hajar', 'CP SOLOK', '2024-08-10', '08:30:00', 'Dokumentasi AN', 'Desa Harapan, Solok', '-0.94645000,100.56397110', 'Diana Pratama', 'BA-0040-BN', 'PT. Solok Jaya', 'PT. Lintas Mandiri', 'Petugas Solok', 'Sistem navigasi truk tidak berfungsi', '081234567929'),
('0711770078', 'Rina Suryani', 'CP DUMAI', '2024-09-30', '14:30:00', 'Dokumentasi U', 'Desa Teratai, Dumai', '-0.92435800,101.48592310', 'Eka Kurniawan', 'BA-0021-AU', 'PT. Dumai Sejahtera', 'CV. Transindo', 'Petugas Dumai', 'Rem truk agak blong', '081234567910'),
('0711770079', 'Ika Wulandari', 'CP LAMPUNG', '2024-09-28', '09:00:00', 'Dokumentasi V', 'Kampung Terang, Lampung', '-0.93082700,104.17020210', 'Yudha Prasetya', 'BA-0022-AV', 'PT. Lampung Jaya', 'PT. Ekspeditur Lestari', 'Petugas Lampung', 'Pintu belakang truk macet', '081234567911'),
('0711770080', 'Tari Santika', 'CP SOLOK', '2024-09-25', '11:45:00', 'Dokumentasi W', 'Desa Subur, Solok', '-0.94988800,100.52043710', 'Hadi Wibowo', 'BA-0023-AW', 'PT. Solok Sejahtera', 'PT. Transindo Cepat', 'Petugas Solok', 'Mesin truk panas', '081234567912'),
('0711770081', 'Dina Ayu', 'CP KAB SOLOK', '2024-09-18', '16:00:00', 'Dokumentasi X', 'Kampung Makmur, Kab Solok', '-0.96025400,100.77123410', 'Sandy Ardiansyah', 'BA-0024-AX', 'PT. Solok Perkasa', 'CV. Lintas Perkasa', 'Petugas Kab Solok', 'Kondisi rem perlu pengecekan', '081234567913'),
('0711770082', 'Nina Marlina', 'CP JAMBI', '2024-09-12', '13:30:00', 'Dokumentasi Y', 'Desa Kencana, Jambi', '-1.61032800,103.58843210', 'Taufik Setiawan', 'BA-0025-AY', 'PT. Jambi Perkasa', 'PT. Ekspeditur Jaya', 'Petugas Jambi', 'Kondisi truk stabil', '081234567914'),
('0711770083', 'Lina Pratiwi', 'CP ACEH', '2024-09-10', '12:15:00', 'Dokumentasi Z', 'Kampung Baru, Aceh', '4.51567800,96.74678910', 'Rico Prasetyo', 'BA-0026-AZ', 'PT. Aceh Sejahtera', 'PT. Trans Lintas', 'Petugas Aceh', 'Kondisi ban truk stabil', '081234567915'),
('0711770084', 'Wina Nuraini', 'CP DUMAI', '2024-09-05', '10:45:00', 'Dokumentasi AA', 'Desa Sumber Makmur, Dumai', '-0.92634500,101.48864210', 'Doni Saputra', 'BA-0027-BA', 'PT. Dumai Logistik', 'PT. Lintas Mandiri', 'Petugas Dumai', 'Pintu truk tidak terkunci', '081234567916'),
('0711770085', 'Cici Sari', 'CP LAMPUNG', '2024-09-03', '15:30:00', 'Dokumentasi AB', 'Desa Tanjung Rasa, Lampung', '-0.93846300,104.18276310', 'Fajar Gunawan', 'BA-0028-BB', 'PT. Lampung Jaya', 'CV. Transindo Sejahtera', 'Petugas Lampung', 'Kondisi mesin baik', '081234567917'),
('0711770086', 'Maya Prasasti', 'CP SOLOK', '2024-08-28', '17:00:00', 'Dokumentasi AC', 'Desa Suka Maju, Solok', '-0.95067900,100.53533410', 'Dwi Rahayu', 'BA-0029-BC', 'PT. Solok Jaya', 'PT. Ekspeditur Mandiri', 'Petugas Solok', 'Sistem penggerak truk bermasalah', '081234567918'),
('0711770087', 'Ratna Sari', 'CP KAB SOLOK', '2024-08-25', '14:00:00', 'Dokumentasi AD', 'Kampung Bahagia, Kab Solok', '-0.95568800,100.74861210', 'Dino Feryanto', 'BA-0030-BD', 'PT. Solok Lestari', 'CV. Ekspeditur Cepat', 'Petugas Kab Solok', 'Ban depan sedikit aus', '081234567919'),
('0711770088', 'Gita Ramadhani', 'CP JAMBI', '2024-08-22', '10:00:00', 'Dokumentasi AE', 'Desa Jambi Indah, Jambi', '-1.63478200,103.58647110', 'Budi Santoso', 'BA-0031-BE', 'PT. Jambi Mandiri', 'PT. Lintas Jaya', 'Petugas Jambi', 'Mesin truk dalam kondisi baik', '081234567920'),
('0711770089', 'Siti Nuraini', 'CP ACEH', '2024-08-18', '12:30:00', 'Dokumentasi AF', 'Desa Aceh Selatan, Aceh', '4.50937700,96.73573810', 'Taufik Kurniawan', 'BA-0032-BF', 'PT. Aceh Perkasa', 'PT. Transindo Sejahtera', 'Petugas Aceh', 'Lampu depan truk rusak', '081234567921'),
('0711770090', 'Rita Mariani', 'CP DUMAI', '2024-08-15', '08:30:00', 'Dokumentasi AG', 'Desa Bumi Rakyat, Dumai', '-0.92877400,101.48013910', 'Sugianto Prasetyo', 'BA-0033-BG', 'PT. Dumai Perkasa', 'PT. Ekspeditur Cepat', 'Petugas Dumai', 'Kondisi truk stabil', '081234567922'),
('0711770091', 'Nina Agustina', 'CP LAMPUNG', '2024-08-10', '16:00:00', 'Dokumentasi AH', 'Desa Rahayu, Lampung', '-0.93145200,104.16072410', 'Nirwan Kusuma', 'BA-0034-BH', 'PT. Lampung Mandiri', 'CV. Transindo Jaya', 'Petugas Lampung', 'Ban belakang truk sedikit kempes', '081234567923'),
('0711770092', 'Gina Yulia', 'CP SOLOK', '2024-08-06', '11:30:00', 'Dokumentasi AI', 'Desa Lestari, Solok', '-0.94867900,100.52385210', 'Eko Setiawan', 'BA-0035-BI', 'PT. Solok Sejahtera', 'PT. Lintas Logistik', 'Petugas Solok', 'Sistem rem perlu diperiksa', '081234567924'),
('0711770093', 'Aulia Fariha', 'CP KAB SOLOK', '2024-08-03', '09:00:00', 'Dokumentasi AJ', 'Desa Tunas Muda, Kab Solok', '-0.95790300,100.74021510', 'Dian Pratama', 'BA-0036-BJ', 'PT. Solok Jaya', 'CV. Transindo Mandiri', 'Petugas Kab Solok', 'Kondisi truk baik', '081234567925'),
('0711770094', 'Sari Kurniati', 'CP JAMBI', '2024-07-30', '10:15:00', 'Dokumentasi AK', 'Desa Kemuning, Jambi', '-1.62518200,103.57210310', 'Bagus Santoso', 'BA-0037-BK', 'PT. Jambi Perkasa', 'PT. Lintas Ekspres', 'Petugas Jambi', 'Kondisi truk normal', '081234567926'),
('0711770095', 'Tari Lestari', 'CP ACEH', '2024-07-28', '14:45:00', 'Dokumentasi AL', 'Kampung Aceh Timur, Aceh', '4.51201300,96.74125710', 'Agus Wijaya', 'BA-0038-BL', 'PT. Aceh Sejahtera', 'PT. Transindo Lestari', 'Petugas Aceh', 'Mesin dalam kondisi baik', '081234567927'),
('0711770096', 'Maya Utami', 'CP DUMAI', '2024-07-25', '12:00:00', 'Dokumentasi AM', 'Desa Riau, Dumai', '-0.93018800,101.48762110', 'Alfian Prasetyo', 'BA-0039-BM', 'PT. Dumai Lestari', 'PT. Ekspeditur Jaya', 'Petugas Dumai', 'Kondisi rem cukup baik', '081234567928'),
('0711770097', 'Budi Santoso', 'CP SUMSEL', '2024-09-23', '13:00:00', 'Dokumentasi U', 'Desa Mandiri, Sumsel', '-0.98647100,100.31187910', 'Dani Prasetya', 'BA-0021-AU', 'PT. Sumsel Terang', 'PT. Lintas Mandiri', 'Petugas Sumsel', 'Kondisi truk stabil', '081234567910'),
('0711770098', 'Andi Sutrisno', 'CP SOLOK', '2024-09-20', '15:30:00', 'Dokumentasi V', 'Kampung Harapan, Solok', '-0.94547600,100.51237910', 'Yusuf Firmansyah', 'BA-0022-AV', 'PT. Solok Jaya', 'PT. Ekspres Cepat', 'Petugas Solok', 'Truk membutuhkan servis rem', '081234567911'),
('0711770099', 'Joko Widodo', 'CP LAMPUNG', '2024-09-18', '09:45:00', 'Dokumentasi W', 'Desa Suka Maju, Lampung', '-0.92768000,104.16547410', 'Eko Prasetyo', 'BA-0023-AW', 'PT. Lampung Jaya', 'PT. Ekspres Logistik', 'Petugas Lampung', 'Sistem GPS truk error', '081234567912'),
('0711770100', 'Arief Rahman', 'CP KAB SOLOK', '2024-09-12', '11:00:00', 'Dokumentasi X', 'Desa Selamet, Kab Solok', '-0.95247600,100.74152310', 'Sandi Nugraha', 'BA-0024-AX', 'PT. Solok Mandiri', 'PT. Transindo Jaya', 'Petugas Kab Solok', 'Kondisi mesin truk prima', '081234567913'),
('0711770101', 'Eko Prasetyo', 'CP INDARUNG', '2024-09-07', '14:30:00', 'Dokumentasi Y', 'Desa Tanjung, Indarung', '-0.91034500,100.39212710', 'Anton Suharto', 'BA-0025-AY', 'PT. Indarung Sejahtera', 'PT. Ekspres Antar', 'Petugas Indarung', 'Kondisi truk dalam keadaan baik', '081234567914'),
('0711770102', 'Bambang Sumarno', 'GP DUMAI', '2024-09-04', '16:00:00', 'Dokumentasi Z', 'Kampung Suka Maju, Dumai', '-0.91607500,101.39023910', 'Fajar Pramudito', 'BA-0026-AZ', 'PT. Dumai Jaya', 'PT. Lintas Mandiri', 'Petugas Dumai', 'Kondisi truk sangat baik', '081234567915'),
('0711770103', 'Hendra Gunawan', 'CP BENGKULU', '2024-08-29', '10:15:00', 'Dokumentasi AA', 'Kampung Terang, Bengkulu', '-3.78943600,102.26840910', 'Heru Setiawan', 'BA-0027-BA', 'PT. Bengkulu Mandiri', 'PT. Lintas Perkasa', 'Petugas Bengkulu', 'Sistem pendingin truk berfungsi normal', '081234567916'),
('0711770104', 'Sigit Prasetya', 'CP JAMBI', '2024-08-27', '13:30:00', 'Dokumentasi AB', 'Desa Jambi, Jambi', '-1.62235800,103.62097310', 'Riki Pratama', 'BA-0028-BB', 'PT. Jambi Sejahtera', 'PT. Ekspres Logistik', 'Petugas Jambi', 'Kondisi ban truk baik', '081234567917'),
('0711770105', 'Teguh Santoso', 'CP ACEH', '2024-08-24', '15:45:00', 'Dokumentasi AC', 'Kampung Aceh Utara, Aceh', '4.55076000,96.74991710', 'Raka Wijaya', 'BA-0029-BC', 'PT. Aceh Perkasa', 'CV. Ekspeditur Cepat', 'Petugas Aceh', 'Kondisi truk dalam keadaan stabil', '081234567918'),
('0711770106', 'Fajar Pramudito', 'CP SUMSEL', '2024-08-20', '17:00:00', 'Dokumentasi AD', 'Desa Mandiri, Sumsel', '-0.97655400,100.33347810', 'Dedi Prabowo', 'BA-0030-BD', 'PT. Sumsel Terang', 'PT. Transindo Jaya', 'Petugas Sumsel', 'Kondisi mesin truk optimal', '081234567919'),
('0711770107', 'Yusuf Firmansyah', 'CP SOLOK', '2024-08-15', '12:00:00', 'Dokumentasi AE', 'Kampung Suka Maju, Solok', '-0.94437600,100.51481910', 'Agus Susanto', 'BA-0031-BE', 'PT. Solok Jaya', 'PT. Ekspres Perkasa', 'Petugas Solok', 'Ban belakang bocor sedikit', '081234567920'),
('0711770108', 'Dedi Prabowo', 'CP LAMPUNG', '2024-08-11', '10:30:00', 'Dokumentasi AF', 'Desa Tanjung, Lampung', '-0.92687100,104.17534710', 'Sigit Santoso', 'BA-0032-BF', 'PT. Lampung Jaya', 'PT. Lintas Logistik', 'Petugas Lampung', 'Kondisi truk baik, hanya perlu servis ringan', '081234567921'),
('0711770109', 'Joko Widodo', 'CP KAB SOLOK', '2024-08-05', '09:00:00', 'Dokumentasi AG', 'Desa Lestari, Kab Solok', '-0.94847300,100.73358110', 'Rudi Hartono', 'BA-0033-BG', 'PT. Solok Mandiri', 'PT. Transindo Jaya', 'Petugas Kab Solok', 'Truk membutuhkan penggantian oli', '081234567922'),
('0711770110', 'Arief Rahman', 'CP INDARUNG', '2024-08-02', '11:45:00', 'Dokumentasi AH', 'Desa Malang, Indarung', '-0.90725400,100.39964210', 'Dimas Pramudya', 'BA-0034-BH', 'PT. Indarung Sejahtera', 'PT. Ekspres Cepat', 'Petugas Indarung', 'Ban truk sudah aus, perlu diganti', '081234567923'),
('0711770111', 'Eko Prasetyo', 'GP DUMAI', '2024-07-30', '12:30:00', 'Dokumentasi AI', 'Kampung Baru, Dumai', '-0.91645800,101.38497310', 'Yanto Pranata', 'BA-0035-BI', 'PT. Dumai Jaya', 'PT. Lintas Mandiri', 'Petugas Dumai', 'Kondisi truk dalam keadaan stabil', '081234567924'),
('0711770112', 'Bambang Sumarno', 'CP BENGKULU', '2024-07-28', '14:00:00', 'Dokumentasi AJ', 'Desa Sukajadi, Bengkulu', '-3.79232000,102.27766310', 'Hendra Setiawan', 'BA-0036-BJ', 'PT. Bengkulu Mandiri', 'PT. Ekspres Perkasa', 'Petugas Bengkulu', 'Mesin truk berjalan normal', '081234567925'),
('0711770113', 'Hendra Gunawan', 'CP JAMBI', '2024-07-25', '16:30:00', 'Dokumentasi AK', 'Desa Semangka, Jambi', '-1.62587300,103.63001710', 'Tio Setiawan', 'BA-0037-BK', 'PT. Jambi Sejahtera', 'PT. Lintas Logistik', 'Petugas Jambi', 'Rem truk dalam kondisi baik', '081234567926'),
('0711770114', 'Sigit Prasetya', 'CP ACEH', '2024-07-20', '15:00:00', 'Dokumentasi AL', 'Kampung Aceh Besar, Aceh', '4.55338700,96.75427410', 'Rudi Hartono', 'BA-0038-BL', 'PT. Aceh Perkasa', 'PT. Lintas Mandiri', 'Petugas Aceh', 'Kondisi truk dalam keadaan prima', '081234567927'),
('0711770115', 'Teguh Santoso', 'CP SUMSEL', '2024-07-18', '18:00:00', 'Dokumentasi AM', 'Desa Sumber Rejeki, Sumsel', '-0.98379400,100.32874410', 'Anton Suharto', 'BA-0039-BM', 'PT. Sumsel Terang', 'PT. Transindo Jaya', 'Petugas Sumsel', 'Truk dalam kondisi baik', '081234567928');

-- --------------------------------------------------------

--
-- Table structure for table `geofence`
--

CREATE TABLE `geofence` (
  `id` int(11) NOT NULL,
  `id_lokasi` varchar(15) NOT NULL,
  `geofence_data` text NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `geofence`
--

INSERT INTO `geofence` (`id`, `id_lokasi`, `geofence_data`, `latitude`, `longitude`, `alamat`) VALUES
(4, 'LOC0056', '5.148055522555724, 95.88096362634313', '5.148056', '95.880964', 'Ulee Gunong, Tangse, Pidie, Aceh, Sumatra, Indonesia'),
(5, 'LOC001', '-0.916539390888489, 100.46952720212029', '-0.916539', '100.469527', 'Jalan Kampus Unand, Padang, West Sumatra, Sumatra, 25163, Indonesia'),
(6, 'CP001', '-2.9783405376805616, 104.75883378268406', '-2.978341', '104.758834', 'RW 05 Kelurahan 17 Ilir, Kec Ilir Timur 1, Ilir Timur I, Palembang, South Sumatra, Sumatra, 30113, Indonesia'),
(7, 'LOC002', '1.6717858596264978, 101.43563372821721', '1.671786', '101.435634', 'Kecamatan Dumai Barat, Dumai City, Riau, Sumatra, 28813, Indonesia'),
(8, 'LOC003', '-3.624800089992015, 102.28421504426682', '-3.624800', '102.284215', 'Talang Panjang, Bengkulu Tengah, Bengkulu, Sumatra, Indonesia'),
(9, 'LOC004', '-1.513427396912496, 103.0176711208172', '-1.513427', '103.017671', 'Batanghari, Jambi, Sumatra, Indonesia'),
(11, 'IDL1', '-0.7879658303051178, 100.64404838922005', '-0.787966', '100.644048', 'Vi Suku, Solok, West Sumatra, Sumatra, Indonesia'),
(12, 'IDL2', '-0.8240128548975513, 100.66291599050764', '-0.824013', '100.662916', 'Koto Baru, Solok, West Sumatra, Sumatra, Indonesia'),
(13, 'IDL11', '-5.11998853654781, 105.33019259726335', '-5.119989', '105.330193', 'Tejoagung, Metro, Lampung, Sumatra, 34112, Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id_lokasi` varchar(15) NOT NULL,
  `lokasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id_lokasi`, `lokasi`) VALUES
('CP001', 'CP SUMSEL'),
('IDL1', 'CP SOLOK'),
('IDL11', 'CP LAMPUNG'),
('IDL2', 'CP KAB SOLOK'),
('LOC001', 'CP INDARUNG'),
('LOC002', 'GP DUMAI'),
('LOC003', 'CP BENGKULU'),
('LOC004', 'CP JAMBI'),
('LOC0056', 'CP ACEH');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` varchar(15) NOT NULL,
  `nama_petugas` varchar(100) NOT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `id_lokasi` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `no_hp`, `id_lokasi`) VALUES
('ID088', 'Budi Santoso', '08523324', 'IDL11'),
('ID1', 'Petugas sumsel 1', '082222222', 'CP001'),
('ID2', 'Petugas sumsel 2', '083333333', 'CP001'),
('ID3', 'Petugas sumsel 3', '084444444', 'CP001'),
('ID4', 'Petugas sumsel 4', '085555555', 'CP001'),
('IDP11', 'Ami 1', '0811', 'IDL1'),
('IDP22', 'Ami 2', '0822', 'IDL1'),
('IDP8', 'Ami 3', '0811', 'IDL2'),
('IDP9', 'Ami 4', '9822', 'IDL2'),
('P001', 'Petugas A', '081234567890', 'LOC001'),
('P002', 'Petugas B', '081234567891', 'LOC001'),
('P003', 'Petugas C', '08333', 'LOC002'),
('P004', 'Petugas D', '08444', 'LOC002'),
('P006', 'Petugas F', '08555', 'LOC003'),
('P007', 'Petugas C', '08333', 'LOC003'),
('P008', 'Petugas D', '08444', 'LOC003'),
('P01', 'Petugas Jambi 1', '08111', 'LOC004'),
('P02', 'Petugas Jambi 2', '08222', 'LOC004'),
('P03', 'Petugas Jambi 3', '08333', 'LOC004'),
('PET001', 'Petugas pertama', '08111', 'LOC001'),
('PET002', 'Petugas kedua', '08222', 'LOC001'),
('PTGS01', 'Petugas 1', '0822222', 'LOC0056'),
('PTGS02', 'Petugas 2', '0833333', 'LOC0056'),
('PTGS03', 'Petugas 3', '0844444', 'LOC0056');

-- --------------------------------------------------------

--
-- Table structure for table `titik_lokasi`
--

CREATE TABLE `titik_lokasi` (
  `id_lokasi` varchar(15) NOT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `petugas` text DEFAULT NULL,
  `no_hp` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `role`, `refresh_token`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', '$2b$10$cd6wv4hyhxi3K4oeTwMMEOM67SAt8.b3GX0gUv00N6vHeu3yYLiOG', 'administrator', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm5hbWUiOiJhZG1pbmlzdHJhdG9yIiwidXNlcm5hbWUiOiJhZG1pbiIsInJvbGUiOiJhZG1pbiIsImlhdCI6MTczNDM3NTIwMSwiZXhwIjoxNzM0NDYxNjAxfQ.WNLXxxTc9vQ_Rhh4ROgH9Rtv5dQSCQDpxmAPmHijJV0', '2024-06-05 07:39:54', '2024-06-19 10:43:53'),
(3, 'izanmaizan', '$2b$10$9vHmrE19f0TRk0xnpL3Hq.4ZG1TlmbShZJJIudqP6M1S1ac8KTx9q', 'Maizan aja', 'admin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'izan', '$2b$10$peCYaIhvb03NZvBP4uZLWuatrZ.X3BPA5K7Qp594v1HYCkWjSAAla', 'Maizan Insani Akbar', 'petugas', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJNYWl6YW4gSW5zYW5pIEFrYmFyIiwidXNlcm5hbWUiOiJpemFuIiwicm9sZSI6InBldHVnYXMiLCJpYXQiOjE3MzQzNzY1OTUsImV4cCI6MTczNDQ2Mjk5NX0.TFMomnuHtjpteR8W36MZwPOkZItMQAY6rSViA9nUED4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'amim', '$2b$10$mLEo8ZYAYKjm7e1NoOTLaeil1BI3KpWyl8FMXWRYFBQZwzWnrL/6m', 'Amim Febriza', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIyLCJuYW1lIjoiQW1pbSBGZWJyaXphIiwidXNlcm5hbWUiOiJhbWltIiwicm9sZSI6ImFkbWluIiwiaWF0IjoxNzM0Mzc2Njg4LCJleHAiOjE3MzQ0NjMwODh9.ehnZzN9eLadfR2OY8Lje5IFreVTyADBl1Dy2bj240hE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'pengguna', '$2b$10$CNsrdrQmeKhAEWcOk5jpOObArYe7D9kyOhn5/NNz9LDTYUzCjgYFG', 'pengguna akhir', 'user', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'petugas', '$2b$10$3zAPrPLKGqd8UVeARV4Stu.qKJWQpNr0r7LzwJ7aeCdkGj4SskZjS', 'Petugas daerah', 'user', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI3LCJuYW1lIjoiUGV0dWdhcyBkYWVyYWgiLCJ1c2VybmFtZSI6InBldHVnYXMiLCJyb2xlIjoidXNlciIsImlhdCI6MTczNDM3MzY4MSwiZXhwIjoxNzM0NDYwMDgxfQ.K3pSd6JvfRY_z_it-D5QQDNs_ZYunkqS7uPeFm7WYJA', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `check_points`
--
ALTER TABLE `check_points`
  ADD PRIMARY KEY (`no_do`);

--
-- Indexes for table `geofence`
--
ALTER TABLE `geofence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_lokasi` (`id_lokasi`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`),
  ADD KEY `id_lokasi` (`id_lokasi`);

--
-- Indexes for table `titik_lokasi`
--
ALTER TABLE `titik_lokasi`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `geofence`
--
ALTER TABLE `geofence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `geofence`
--
ALTER TABLE `geofence`
  ADD CONSTRAINT `geofence_ibfk_1` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`);

--
-- Constraints for table `petugas`
--
ALTER TABLE `petugas`
  ADD CONSTRAINT `petugas_ibfk_1` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
