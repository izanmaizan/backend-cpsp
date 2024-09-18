-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2024 at 01:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `dokumentasi` varchar(255) DEFAULT NULL,
  `keterangan` varchar(500) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `check_points`
--

INSERT INTO `check_points` (`no_do`, `nama_petugas`, `titik_lokasi`, `tanggal`, `jam`, `dokumentasi`, `keterangan`, `no_hp`) VALUES
('111', 'Petugas kedua', 'CP DUMAI', '2024-09-08', '10:48:00', 'uploads\\1725767378348-5c0d3857-7187-4249-a973-d12730dfe8a3.mp4, uploads\\1725767378789-274e48ac-1d31-471d-a3e9-75bf2e244b25.jpeg', 'Percobaan ke 32', NULL),
('1111', 'Petugas A', 'CP INDARUNG', '2024-09-11', '08:12:00', 'uploads\\1726017196993-376b9824-1c6e-4c04-a4d3-9e3f1d3d5199.jpeg, uploads\\1726017197059-927869a9-9994-4c27-9a6d-f77ff9fd82d2.jpeg', 'ok', NULL),
('1211', '[\"Petugas1\",\"Petugas2\"]', 'Lokasi Baru', '2024-09-08', '12:09:00', 'uploads\\1725772175494-3563e90b-a8fc-4d03-82ba-79ca77f2392c.jpeg', 'Percobaan 33', NULL),
('12345', 'Petugas1, Petugas 2, Petugas 3', 'Lokasi', '2024-08-28', '14:30:00', 'data:image/jpeg;base64,...', 'Keterangan tambahan', NULL),
('123456', 'John Doe', 'CP DUMAI', '2024-08-30', '12:00:00', 'fileBase64OrNull', 'Test checkpoint', NULL),
('212121', 'Petugas A', 'CP INDARUNG', '2024-09-10', '11:25:00', 'uploads\\1725942335573-7c8495ac-4c22-4896-a876-411beeb533d5.jpeg', 'ok', NULL),
('222', 'Petugas pertama', 'CP INDARUNG', '2024-09-03', '08:46:00', 'uploads\\1725587204678-0aa34ff3-f678-4ca2-afee-05c624c9304d.jpeg', 'Percobaan 31', NULL),
('2222', 'Petugas A, Petugas pertama', 'CP INDARUNG', '2024-09-11', '08:12:00', 'uploads\\1726017217420-d5f84388-715c-46a8-9b53-e4f176b2578c.jpeg, uploads\\1726017217509-a33055bb-3d86-4c98-8ac7-b3d6a385d294.jpeg', 'ok', NULL),
('3333', 'Petugas A', 'CP INDARUNG', '2024-09-11', '08:39:00', 'uploads\\1726018797945-63d6d5d2-5701-45a3-bf06-c7d6caac09e9.jpeg, uploads\\1726018798069-2de4bf42-34cb-4111-918f-51b4f79ecd78.jpeg', 'ok', '081234567890'),
('33333', 'Petugas C, Petugas D', 'GP DUMAI', '2024-09-11', '16:56:00', 'uploads\\1726049001750-50ac8b2a-e951-417e-b896-b2d5339f145b.jpeg', 'Percobaan ke 33', ', '),
('333444', 'Petugas A, Petugas pertama, Petugas B, Petugas kedua', 'CP INDARUNG', '2024-09-10', '11:22:00', 'uploads\\1725942171852-b52c6614-099c-4e29-bcc8-0947df5fefde.jpg, uploads\\1725942171894-940bb112-8f18-41ea-bf5a-3b71324a6305.jpg', 'Percobaan 33', NULL),
('4444', 'Petugas A, Petugas pertama', 'CP INDARUNG', '2024-09-11', '08:39:00', 'uploads\\1726018813681-53418b0f-d1e8-424f-95c1-28cf27c5a4a8.jpeg, uploads\\1726018813714-dfc39c41-4d73-4b12-97fb-ad537298e666.jpeg', 'ok', '081234567890, 08111'),
('4534', 'Petugas', 'CP JAMBI', '2024-09-04', '03:27:00', 'uploads\\1725310139446-099f5c1e-7d56-470d-936b-0b04a78871e8.jpeg', 'Test', NULL),
('456445', 'Jordan', 'CP DUMAI', '2024-08-30', '12:00:00', NULL, 'Percobaan Ketujuh', NULL),
('4654', 'Petugas', 'CP JAMBI', '2024-09-10', '04:10:00', 'uploads\\1725311452577-91d7db37-7276-4a97-a1b2-ab95236fcde9.png', 'keterangan', NULL),
('5555', 'Petugas A, Petugas pertama, Petugas B, Petugas kedua', 'CP INDARUNG', '2024-09-11', '08:50:00', 'uploads\\1726019456572-8e43e7ce-8479-405f-a62e-009ececcce14.jpeg, uploads\\1726019456594-a4547511-4452-449d-9773-a05a1afc5cab.jpeg', 'ok', '081234567890, 08111, 081234567891, 08222'),
('55555555', 'Petugas kedua', 'CP DUMAI', '2024-09-02', '10:34:00', 'uploads\\1725248120548-8c1bcc59-ee0d-49df-bff4-42daf8b4a81a.mp4', 'Percobaan kedelapanbelas', NULL),
('645243', 'Petugas', 'CP BENGKULU', '2024-09-03', '04:47:00', 'uploads\\1725313693057-0e34f9ba-9e3b-4256-91ef-d26d7ddcd954.gif', 'Percobaan', NULL),
('64554', 'ID003', 'ID003', '2024-09-03', '10:55:00', NULL, 'percobaan ke duapuluh satu', NULL),
('6666', 'Petugas C', 'GP DUMAI', '2024-09-11', '08:52:00', 'uploads\\1726019604942-7d8b69d4-32e6-415d-b488-38ce3b92584b.mp4, uploads\\1726019605641-68548b79-230f-4124-86a6-e8f00002a2e4.jpeg', 'ok', '08333'),
('676767676767', 'Budi Santoso', 'CP LAMPUNG', '2024-09-17', '14:37:00', 'uploads\\1726558703015-8f305604-ea3a-4a6d-8cee-7fca2f27eb74.png', 'Ok', '08235343243'),
('7142512512', 'Amim Febriza', 'CP INDARUNG', '2024-08-21', '16:53:00', NULL, 'Percobaan kelima', NULL),
('7144212121', 'Amim Febriza', 'CP INDARUNG', '2024-08-28', '16:15:00', NULL, 'Contoh pertama', NULL),
('71442222', 'Contoh Petugas', 'CP SUMUT', '2024-09-06', '09:31:00', 'uploads\\1725589985832-844d0ca3-b51e-41ca-b802-118d80befa84.jpeg, uploads\\1725589985899-7bb9b662-2eef-4a59-9203-83571735571c.mp4', 'Percobaan', NULL),
('71442312321', 'Saya', 'CP INDARUNG', '2024-08-28', '16:25:00', NULL, 'Percobaan Kedua', NULL),
('714452351', 'Amim Febriza', 'CP INDARUNG', '2024-08-28', '16:34:00', NULL, 'Percobaan ketiga', NULL),
('714452353', 'Amim Febriza', 'CP INDARUNG', '2024-08-28', '16:34:00', NULL, 'Percobaan keempat', NULL),
('714452512', 'Amim Febriza', 'CP INDARUNG', '2024-08-28', '17:00:00', NULL, 'Percobaan keenam', NULL),
('714471232', 'Ami', 'CP INDARUNG', '2024-08-28', '15:05:00', NULL, 'Roti Bakar', NULL),
('71447543', 'rahman', 'CP DUMAI', '2024-09-01', '14:51:00', 'uploads\\1725177138428-e9b31ef9-aadd-4892-a62f-a9d9bf33774e.jpeg', 'percobaan ketiga belas', NULL),
('724411', 'Petugas C, Petugas D', 'GP DUMAI', '2024-09-10', '10:50:00', 'uploads\\1725940250761-ad0882ec-6569-45cd-9bb7-b80c9c79732a.mp4, uploads\\1725940251019-f1e2175c-4235-4457-8f82-2f18d0a5afc3.jpeg', 'Ok', NULL),
('74632411', 'Petugas ketiga', 'function () { [native code] }', '2024-09-02', '10:27:00', 'uploads\\1725247673194-8ecd08ba-f66a-4cfb-8d71-cdc73609b455.mp4', 'Percobaan keenambelas', NULL),
('7477123', 'Amim Febriza', 'CP DUMAI', '2024-08-29', '11:27:00', 'uploads\\1724906117665-4b81c07c-1449-4ae7-90b4-12dd781da6fe.mp4, uploads\\1724906117739-193664c4-f9e9-453d-b041-b83dcde3f217.jpeg, uploads\\1724906117784-bedad40f-c5f9-4612-a843-cf9d7f842726.jpeg', 'Percobaan Keduabelas', NULL),
('74772121', 'Petugas Jambi 1, Petugas Jambi 2, Petugas Jambi 3', 'CP JAMBI', '2024-09-13', '10:53:00', 'uploads\\1726199683222-64015810-02fa-4beb-9586-9c894cb550e8.jpeg, uploads\\1726199683558-52672fb8-d730-4e03-89a3-c90c789a145b.jpeg, uploads\\1726199683616-af178f49-e231-4913-8e12-ecaa5b0854ff.jpeg, uploads\\1726199683629-c8822209-229e-4b59-8705-45cbc547323a.j', 'Percobaan ke 34', '08111, 08222, 08333'),
('747774545', 'Petugas ketiga', NULL, '2024-09-02', '09:42:00', 'uploads\\1725246915441-28b64951-792f-4b49-82d1-07566d257fa1.jpeg', 'Percobaan ke limabelas', NULL),
('7741256', 'Amim Febriza', 'CP INDARUNG', '2024-08-28', '14:46:00', NULL, 'Contoh', NULL),
('777', 'Petugas A, Petugas B, Petugas pertama, Petugas kedua', 'CP INDARUNG', '2024-09-10', '17:02:00', 'uploads\\1725962604655-8498c8ca-3332-49e9-9c4c-a81f8dc079ef.mp4, uploads\\1725962604936-cf9ab632-c825-41fc-8818-171f0e579d04.jpeg', 'ok', NULL),
('7777', 'Petugas C, Petugas D', 'GP DUMAI', '2024-09-11', '08:52:00', 'uploads\\1726019617740-30a879ac-9cf5-4b2d-95d2-4cadb9e5a6f0.mp4, uploads\\1726019617861-57f929ae-a672-4589-af03-d77ba1ac1265.jpeg', 'ok', '08333, 08444'),
('777777', 'Petugas ketiga', 'function () { [native code] }', '2024-09-02', '10:30:00', 'uploads\\1725247863556-c8804819-4aa8-4bf0-a2cd-3ce08eee432e.mp4', 'Percobaan ketujuhbelas', NULL),
('8765445', 'Michel', 'CP DUMAI', '2024-08-30', '12:00:00', NULL, 'Test checkpoint', NULL),
('88888', 'Ami 1, Ami 2', 'CP SOLOK', '2024-09-16', '10:11:00', 'uploads\\1726456296839-d2b7c234-89d8-4dd5-a904-de4e39e26458.png, uploads\\1726456296843-d47183bf-3a7d-41e9-99f8-a9c6dc924d77.jpeg', 'Ok', '0811, 0822'),
('89898989', 'Petugas sumsel 1, Petugas sumsel 2, Petugas sumsel 3, Petugas sumsel 4', 'CP SUMSEL', '2024-09-12', '11:59:00', 'uploads\\1726117167766-f3e61277-39a5-4605-a7b0-f255fe2054d9.jpg, uploads\\1726117168403-9faaea69-f813-48b8-b451-a160cdf2ba2d.jpg', 'Ok', '082222222, 083333333, 084444444, 085555555'),
('989898', 'Ami 3, Ami 4', 'CP KAB SOLOK', '2024-09-16', '10:17:00', 'uploads\\1726456640560-ab597f05-0b24-42e4-a07d-ddcbf4b51f94.jpeg, uploads\\1726456640561-a948f905-8faa-49a7-9d82-9802c339ea15.jpeg', 'Ok', '0811, 9822'),
('DO001', 'Petugas 1, Petugas 2', 'CP ACEH', '2024-09-14', '15:23:00', 'uploads\\1726302262613-0a9de83c-a498-4ec9-bc84-7c8ba4b9400b.mp4, uploads\\1726302263506-dd415f73-7ede-40f4-aa86-a5174dff938b.jpeg, uploads\\1726302263680-f24e0836-1a2f-42cd-9458-1bb4f18793b1.jpeg', 'Ok', '0822222, 0833333'),
('DO0909', 'Petugas A, Petugas B, Petugas pertama, Petugas kedua', 'CP INDARUNG', '2024-09-10', '10:47:00', 'uploads\\1725940106820-da966714-60e6-4efa-b376-04f3da9b8684.mp4, uploads\\1725940107274-7fd954a8-b97c-4f4b-a44e-b84d580fcf79.jpeg, uploads\\1725940107278-0aa78ee1-7153-4e76-8aa5-7610087b9bf8.jpeg, uploads\\1725940107313-a5082a82-e6bf-42c7-91ab-54202fb5dc1c.jp', 'Percobaan 32', NULL),
('DO111', 'John Doe, Kimo', 'CP INDARUNG', '2024-09-03', '12:01:00', 'uploads\\1725339688754-fa952899-0a47-4e13-ab56-50a1da13f834.jpeg, uploads\\1725339688793-88c1ceb6-b3db-4a31-bfb9-45f70c665419.jpeg', 'Percobaan keduapuluh tiga', NULL),
('DO112', 'ID002', 'ID002', '2024-09-03', '14:03:00', 'uploads\\1725347245748-e35dc1aa-5b5a-4a34-a144-cc8ae5cf0db5.ppt, uploads\\1725347246307-9368a6dd-a8f9-4479-b4d3-de2b54910cf4.png, uploads\\1725347246337-ce225826-e277-4b8f-9880-27bd11988767.png', 'Percobaan kedua puluh lima', NULL),
('DO1122', 'Petugas A, Petugas pertama', 'LOC001', '2024-09-10', '10:58:00', 'uploads\\1725940732191-1f5b991b-c7b1-42e9-9c92-fa2997a4d82c.jpg, uploads\\1725940732321-e8479825-4e58-452d-ae5f-36bb37bd13cd.jpg, uploads\\1725940732348-7a7b0130-a5c9-44de-b850-ed89f2302a0d.jpeg', 'Percobaan ke 33', NULL),
('DO122', 'Petugas kedua', 'ID002', '2024-09-03', '14:13:00', 'uploads\\1725347620021-62c37b1a-fc53-437f-9f3a-ed1feec4a3c6.jpeg, uploads\\1725347620055-71ef15ad-418a-43a0-beb4-6a455d9e05b0.jpeg, uploads\\1725347620058-926670ca-d40f-47d3-a965-ca252770e4e0.jpeg', 'Percobaan ke duapuluh enam', NULL),
('DO12345', 'John Doe', 'CP DUMAI', '2024-08-29', '10:00:00', 'uploads\\1724903769724-18e14429-4458-431d-b93b-daa1ba4f99fe.jpeg', 'Percobaan kedelapan', NULL),
('DO1313', 'Petugas pertama', 'ID001', '2024-09-03', '18:31:00', 'uploads\\1725363138974-a07370bc-85da-4402-bd18-9c8b020f318f.png', 'Percobaan ke 29', NULL),
('DO133', 'Petugas pertama', 'ID001', '2024-09-03', '16:41:00', 'uploads\\1725356512209-bb89438d-8895-4c3d-86d3-dde6345db52b.jpeg', 'Percobaan kedua puluh tujuh', NULL),
('DO154', 'John Chonor, Zazi', 'CP INDARUNG', '2024-09-03', '12:01:00', 'uploads\\1725351459678-b097698e-6a5d-4c4b-9ea6-30f6016eecd7.jpeg, uploads\\1725351459694-2251aeee-2bc6-4715-8ea5-ffd28d7f335d.jpeg', 'Percobaan keduapuluh tiga', NULL),
('DO231', 'Petugas pertama', 'ID001', '2024-09-03', '15:08:00', 'uploads\\1725350931390-57a70462-0dd8-4c58-b4ae-29d1b82085a1.gif, uploads\\1725350931504-88efe32a-87c1-4f6c-934b-f7ab23e10916.png', 'Percobaan ke duapuluh enam', NULL),
('DO3333', 'ID003', 'ID003', '2024-09-02', '07:48:00', NULL, 'Percobaan ke dua puluh empat', NULL),
('DO33333', 'ID003', 'ID003', '2024-09-02', '07:48:00', 'uploads\\1725343017410-4d037d45-30f2-46cf-90fe-f97f98de3e34.png', 'Percobaan ke dua puluh empat', NULL),
('DO333333', 'ID003', 'ID003', '2024-09-02', '07:48:00', 'uploads\\1725343060342-ebe64c92-860b-4723-8f72-9b150f5181b1.png, uploads\\1725343060455-1fc8401c-3e82-4a3b-83cb-d4cea6d15a15.png', 'Percobaan ke dua puluh lima', NULL),
('DO342432', 'admin', 'CP INDARUNG', '2024-08-29', '11:17:00', NULL, 'Percobaan kesepuluh', NULL),
('DO345234', 'admin', 'CP INDARUNG', '2024-08-29', '11:24:00', NULL, 'Percobaan kesebelaas', NULL),
('DO34523454', 'admin', 'CP INDARUNG', '2024-08-29', '11:24:00', 'uploads\\1724905518260-afe9985f-3430-4a91-94bf-be062f063681.jpeg', 'Percobaan kesebelaas', NULL),
('DO6789', 'John Doe', 'CP DUMAI', '2024-08-29', '10:00:00', 'uploads\\1724904003416-a3fc1b36-2718-4764-a47f-c98d4d94cec2.jpeg, uploads\\1724904003465-89063612-7783-46e8-b95f-bc98779b3c5e.jpeg', 'Percobaan kedelapan', NULL),
('DO678942', 'John Doe', 'CP DUMAI', '2024-08-29', '10:00:00', 'uploads\\1725310122854-97da47cd-cb4a-40e1-8bce-10db2f19e8ef.jpeg, uploads\\1725310122901-09432ffd-14d8-4a78-9947-1fe6f3c5e98f.jpeg', 'Percobaan kedelapan', NULL),
('DO6789425', 'John Doe', 'CP DUMAI', '2024-08-29', '10:00:00', 'uploads\\1725338800142-fc006cd2-adaa-4482-8c50-be934865ae18.jpeg, uploads\\1725338800213-c08af0c4-6e7f-4478-ba56-2ba5780efc16.jpeg', 'Percobaan kedelapan', NULL),
('DO67894254', 'John Doe, Kimo', 'CP DUMAI', '2024-08-29', '10:00:00', 'uploads\\1725338979354-420914e2-5bd3-4edf-ac33-043bf89ff22e.jpeg, uploads\\1725338979373-046b4d99-d49f-49b7-82d3-2679e0283d70.jpeg', 'Percobaan kedelapan', NULL),
('DO777', 'Petugas pertama', 'ID001', '2024-09-03', '18:20:00', 'uploads\\1725362477043-198716d3-3c3c-461f-ac96-29ee7668d825.mp4', 'Percobaan ke duapuluh delapan', NULL),
('DO999', 'Petugas pertama', 'CP INDARUNG', '2024-09-03', '21:50:00', 'uploads\\1725375175649-debfe569-6bde-4ce5-a9ec-dca4a7aca7d2.jpeg', 'Percobaan ke 31', NULL);

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
(4, 'LOC0056', '5.148055522555724, 95.88096362634313', 5.148056, 95.880964, 'Ulee Gunong, Tangse, Pidie, Aceh, Sumatra, Indonesia'),
(5, 'LOC001', '-0.916539390888489, 100.46952720212029', -0.916539, 100.469527, 'Jalan Kampus Unand, Padang, West Sumatra, Sumatra, 25163, Indonesia'),
(6, 'CP001', '-2.9783405376805616, 104.75883378268406', -2.978341, 104.758834, 'RW 05 Kelurahan 17 Ilir, Kec Ilir Timur 1, Ilir Timur I, Palembang, South Sumatra, Sumatra, 30113, Indonesia'),
(7, 'LOC002', '1.6717858596264978, 101.43563372821721', 1.671786, 101.435634, 'Kecamatan Dumai Barat, Dumai City, Riau, Sumatra, 28813, Indonesia'),
(8, 'LOC003', '-3.624800089992015, 102.28421504426682', -3.624800, 102.284215, 'Talang Panjang, Bengkulu Tengah, Bengkulu, Sumatra, Indonesia'),
(9, 'LOC004', '-1.513427396912496, 103.0176711208172', -1.513427, 103.017671, 'Batanghari, Jambi, Sumatra, Indonesia'),
(11, 'IDL1', '-0.7879658303051178, 100.64404838922005', -0.787966, 100.644048, 'Vi Suku, Solok, West Sumatra, Sumatra, Indonesia'),
(12, 'IDL2', '-0.8240128548975513, 100.66291599050764', -0.824013, 100.662916, 'Koto Baru, Solok, West Sumatra, Sumatra, Indonesia'),
(13, 'IDL11', '-5.11998853654781, 105.33019259726335', -5.119989, 105.330193, 'Tejoagung, Metro, Lampung, Sumatra, 34112, Indonesia');

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
(1, 'admin', '$2b$10$cd6wv4hyhxi3K4oeTwMMEOM67SAt8.b3GX0gUv00N6vHeu3yYLiOG', 'administrator', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm5hbWUiOiJhZG1pbmlzdHJhdG9yIiwidXNlcm5hbWUiOiJhZG1pbiIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzI2NTU5NzI3LCJleHAiOjE3MjY2NDYxMjd9.VD883dETKYReDkFTS0gO0O5FxrySGxUZxB_WsdjIvkY', '2024-06-05 07:39:54', '2024-06-19 10:43:53'),
(3, 'izanmaizan', '$2b$10$9vHmrE19f0TRk0xnpL3Hq.4ZG1TlmbShZJJIudqP6M1S1ac8KTx9q', 'Maizan aja', 'admin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'izan', '$2b$10$NttyYdsOjjtKWLUcugObeee0yKAJHlL2ZUT7egXIoMHwkH7chWl5K', 'Maizan Insani Akbar', 'admin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'amim', '$2b$10$mLEo8ZYAYKjm7e1NoOTLaeil1BI3KpWyl8FMXWRYFBQZwzWnrL/6m', 'Amim Febriza', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIyLCJuYW1lIjoiQW1pbSBGZWJyaXphIiwidXNlcm5hbWUiOiJhbWltIiwicm9sZSI6ImFkbWluIiwiaWF0IjoxNzI2NjE1NDQwLCJleHAiOjE3MjY3MDE4NDB9.1kon3BPPzJBMjMd3pj_4vipz3rQ3j4osZbZUWscxGPg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'pengguna', '$2b$10$CNsrdrQmeKhAEWcOk5jpOObArYe7D9kyOhn5/NNz9LDTYUzCjgYFG', 'pengguna akhir', 'user', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'petugas', '$2b$10$3zAPrPLKGqd8UVeARV4Stu.qKJWQpNr0r7LzwJ7aeCdkGj4SskZjS', 'Petugas daerah', 'user', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI3LCJuYW1lIjoiUGV0dWdhcyBkYWVyYWgiLCJ1c2VybmFtZSI6InBldHVnYXMiLCJyb2xlIjoidXNlciIsImlhdCI6MTcyNjYxNDk5NCwiZXhwIjoxNzI2NzAxMzk0fQ.sHTcfVf7qB68j4jQetAKd7dg8_tF27xL30Us8jOFjT0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
