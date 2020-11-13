-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2020 at 03:41 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data-orang`
--

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telp` varchar(128) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `telp`, `created_at`, `updated_at`) VALUES
(1, 'Tira Palastri', 'Ds. Muwardi No. 820, Subulussalam 53585, Banten', '+6265163961191', '2013-08-07 04:07:12', '2020-11-07 03:08:18'),
(2, 'Umi Padmasari', 'Ki. Baladewa No. 610, Surakarta 70844, JaTim', '+6235560879697', '1993-03-04 09:21:38', '2012-02-16 13:36:57'),
(3, 'Farhunnisa Purwanti', 'Ki. Tambak No. 545, Pontianak 11766, DIY', '+6215435939693', '2005-09-12 00:43:08', '1973-07-30 07:53:00'),
(4, 'Enteng Budiman', 'Ki. Abdul No. 866, Kendari 38966, KalBar', '+6277578945622', '2005-02-05 21:58:54', '1980-03-15 18:04:13'),
(5, 'Ajeng Ella Yuniar S.H.', 'Gg. Sutan Syahrir No. 993, Tanjung Pinang 85137, Gorontalo', '+6220661463008', '1998-09-08 02:52:19', '2015-01-17 19:04:55'),
(6, 'Edi Ganjaran Iswahyudi', 'Kpg. Gajah No. 78, Tangerang Selatan 67226, PapBar', '+6220089814762', '1985-02-17 21:51:47', '1988-01-23 14:42:29'),
(7, 'Nasab Wibisono', 'Ds. Jayawijaya No. 315, Banda Aceh 24639, NTB', '+6255985386758', '2012-05-13 22:47:07', '1995-12-09 10:36:55'),
(8, 'Galar Wasita', 'Ds. Flora No. 206, Tangerang 43626, Banten', '+6219789333663', '1985-03-12 18:04:21', '2014-05-10 18:15:04'),
(9, 'Jayeng Kalim Megantara S.E.I', 'Psr. Ujung No. 556, Tual 76377, Bengkulu', '+6246326947049', '1984-12-28 08:42:06', '1985-10-13 12:24:24'),
(10, 'Okta Setiawan', 'Gg. Barasak No. 435, Pekanbaru 50813, KepR', '+6218252347003', '1978-12-04 13:06:53', '1983-06-22 15:50:26'),
(12, 'Ellis Rahmawati S.Pt', 'Jr. Ciwastra No. 452, Gunungsitoli 58981, JaBar', '+6240337146304', '1988-04-13 20:54:30', '1988-12-25 12:43:56'),
(13, 'Kacung Dabukke', 'Gg. Dahlia No. 731, Ternate 12093, Papua', '+6240456530316', '2012-11-18 08:31:15', '1999-12-04 20:26:21'),
(14, 'Lukman Rajasa S.Kom', 'Jln. Bakau No. 604, Cirebon 60312, NTT', '+6220630025539', '2001-10-22 22:03:57', '1985-04-28 08:08:48'),
(15, 'Bella Sarah Palastri', 'Ds. Pasir Koja No. 944, Medan 77428, JaBar', '+6259475810494', '2003-08-05 14:34:24', '1982-08-10 13:12:20'),
(16, 'Jamalia Anggraini', 'Gg. Panjaitan No. 3, Bandar Lampung 76698, SumBar', '+6283350455232', '1978-03-31 08:30:30', '1990-09-05 17:05:28'),
(17, 'Jane Uyainah', 'Psr. Kyai Mojo No. 296, Malang 35671, JaTim', '+6258364925144', '1979-01-18 00:24:26', '2004-09-14 11:52:29'),
(18, 'Caraka Napitupulu', 'Kpg. Bacang No. 350, Gunungsitoli 79098, Papua', '+6211099344046', '1976-09-30 01:34:02', '2014-12-02 13:42:22'),
(19, 'Dartono Enteng Kusumo S.Gz', 'Ki. Raya Setiabudhi No. 544, Yogyakarta 46905, MalUt', '+6275312961018', '1974-08-08 19:02:59', '2000-11-11 09:25:53'),
(20, 'Siti Yunita Suartini', 'Gg. Jakarta No. 346, Tual 47707, JaTeng', '+6277058730904', '1997-04-24 05:40:49', '1995-12-03 15:52:00'),
(21, 'Safina Laksita', 'Gg. Suprapto No. 440, Tangerang 13942, KalSel', '+6271850652536', '1985-02-01 14:39:54', '2002-05-24 17:43:36'),
(22, 'Irsad Uwais', 'Dk. Bawal No. 625, Surakarta 23331, Lampung', '+6287462040871', '1994-04-24 20:07:51', '1979-10-24 20:06:25'),
(23, 'Gambira Rajata', 'Kpg. Ciumbuleuit No. 294, Padang 66723, Gorontalo', '+6277746831910', '1992-07-09 10:50:22', '1980-06-11 02:12:26'),
(24, 'Kala Laswi Dabukke S.H.', 'Ds. Bak Mandi No. 448, Padangsidempuan 43448, JaTim', '+6291323535797', '1996-11-27 05:50:45', '1997-08-07 11:39:49'),
(25, 'Ajimin Irsad Januar M.TI.', 'Ds. Gajah Mada No. 579, Parepare 10014, Bali', '+6298177973681', '1992-08-30 17:11:54', '2017-01-08 02:29:12'),
(26, 'Prayitna Marbun S.Pt', 'Ds. Otista No. 101, Ambon 66080, SumSel', '+6234736779286', '2016-07-13 11:08:37', '1985-04-26 08:47:22'),
(27, 'Ana Farida', 'Kpg. Perintis Kemerdekaan No. 367, Palembang 58810, Jambi', '+6260328701342', '1991-02-15 17:56:23', '1970-04-25 09:23:02'),
(28, 'Sidiq Habibi', 'Dk. Katamso No. 749, Pangkal Pinang 80516, Lampung', '+6252914426754', '2008-09-18 04:26:53', '1984-05-23 13:59:29'),
(29, 'Edi Gamanto Siregar', 'Kpg. Bank Dagang Negara No. 367, Tebing Tinggi 44077, KalBar', '+6232286223917', '1983-11-01 05:09:18', '1987-07-28 02:30:38'),
(30, 'Eman Firgantoro', 'Dk. Dewi Sartika No. 763, Parepare 22697, Bali', '+6297753704716', '1983-01-09 23:30:02', '2019-05-14 23:18:40'),
(31, 'Dian Novitasari', 'Jln. K.H. Wahid Hasyim (Kopo) No. 904, Kediri 21391, SulBar', '+6257171356663', '2015-02-12 02:42:14', '2005-03-06 11:14:47'),
(32, 'Zelaya Raina Mayasari S.Kom', 'Kpg. Babadak No. 979, Subulussalam 23351, Jambi', '+6257441346107', '1986-11-25 08:12:04', '2015-06-29 07:06:42'),
(33, 'Rusman Hutasoit', 'Gg. Teuku Umar No. 225, Sawahlunto 69480, Bali', '+6226022085143', '2005-04-18 23:25:03', '1996-09-08 19:25:37'),
(34, 'Nurul Safitri', 'Ds. Diponegoro No. 402, Depok 81716, Aceh', '+6222471727145', '1980-08-17 00:25:53', '1973-06-24 13:32:05'),
(35, 'Daryani Pangestu', 'Gg. Suryo No. 668, Balikpapan 30664, Gorontalo', '+6240930062993', '2002-12-24 23:07:21', '1984-04-02 02:34:26'),
(36, 'Ella Wahyuni', 'Gg. Abdul Muis No. 967, Palopo 47019, Bengkulu', '+6296212015450', '2015-01-06 13:53:46', '2004-10-08 20:15:58'),
(37, 'Amalia Rahmi Hastuti S.Psi', 'Psr. Yohanes No. 503, Semarang 89797, Gorontalo', '+6285245377286', '1987-03-27 08:51:38', '2008-03-01 22:17:15'),
(38, 'Pangeran Mulyanto Halim M.Pd', 'Dk. Kalimantan No. 250, Kediri 95915, BaBel', '+6220307907544', '2015-06-01 04:53:47', '1997-06-16 05:52:24'),
(39, 'Unjani Unjani Nasyiah', 'Gg. Baranang Siang Indah No. 410, Singkawang 27027, SulTra', '+6222278500983', '2009-05-24 19:00:59', '1993-05-15 02:27:54'),
(40, 'Salsabila Usamah S.Pt', 'Dk. Hang No. 989, Payakumbuh 62072, KalSel', '+6286549993170', '1994-07-01 15:31:13', '1977-06-08 23:39:05'),
(41, 'Zulfa Yance Nurdiyanti S.E.I', 'Ds. Gedebage Selatan No. 721, Bukittinggi 78566, KalBar', '+6232412209252', '1988-12-24 11:43:01', '1999-06-17 11:55:43'),
(42, 'Pandu Hutapea', 'Dk. HOS. Cjokroaminoto (Pasirkaliki) No. 277, Cilegon 19635, SulBar', '+6298595976312', '1998-04-01 22:23:08', '2003-03-28 01:10:52'),
(43, 'Salwa Hasanah M.M.', 'Kpg. Yogyakarta No. 563, Ambon 88365, Riau', '+6298737172069', '1983-01-19 00:14:03', '1990-07-22 22:14:47'),
(44, 'Iriana Widiastuti', 'Jr. Eka No. 357, Tegal 35402, Banten', '+6283755688032', '1993-07-06 23:47:14', '1993-12-11 10:05:59'),
(45, 'Karya Darimin Permadi', 'Psr. Radio No. 497, Singkawang 14160, Lampung', '+6268124250872', '2019-09-23 15:19:17', '2015-02-27 23:49:19'),
(46, 'Estiono Eman Najmudin', 'Kpg. Basuki No. 289, Tarakan 29397, KalTim', '+6255397808808', '2014-01-24 19:52:06', '2010-05-01 12:39:59'),
(47, 'Joko Nainggolan', 'Jr. Soekarno Hatta No. 626, Tebing Tinggi 74973, JaTim', '+6292245664896', '1981-05-10 14:03:53', '1982-12-15 22:11:00'),
(48, 'Kambali Ardianto', 'Ki. Wahidin Sudirohusodo No. 763, Cilegon 92468, JaTim', '+6235203199873', '1990-08-01 18:16:14', '1989-09-03 03:45:17'),
(49, 'Lidya Kusmawati', 'Dk. Jaksa No. 148, Cimahi 10374, PapBar', '+6282823076059', '2003-12-09 22:40:53', '1971-04-21 09:56:32'),
(50, 'Karen Palastri', 'Ki. Kalimalang No. 265, Depok 62549, KalUt', '+6295207021284', '2007-01-06 01:02:23', '2001-09-03 18:55:09'),
(51, 'Puji Salwa Riyanti', 'Dk. Yosodipuro No. 786, Tanjung Pinang 18064, SulUt', '+6295478131116', '1979-10-22 13:12:35', '1971-01-01 08:07:29'),
(52, 'Padmi Paramita Lailasari S.Ked', 'Gg. Monginsidi No. 763, Pontianak 88996, Jambi', '+6213508139265', '1980-07-11 09:22:19', '1980-12-06 09:41:35'),
(53, 'Harja Salahudin', 'Kpg. Ronggowarsito No. 193, Cirebon 51222, DIY', '+6227868632481', '1989-09-04 12:54:05', '2004-02-20 12:57:24'),
(54, 'Ellis Kusmawati', 'Jr. Tambun No. 8, Banjarmasin 34583, PapBar', '+6240923895720', '1990-03-31 12:59:29', '1992-12-01 18:22:30'),
(55, 'Chelsea Uyainah', 'Jr. Daan No. 529, Sawahlunto 62532, PapBar', '+6211789985123', '1973-10-24 09:06:06', '1970-02-22 17:32:57'),
(56, 'Janet Suryatmi', 'Gg. Kalimalang No. 913, Palembang 25352, DIY', '+6284548520863', '2003-02-20 20:15:52', '1972-06-29 18:45:35'),
(57, 'Kawaca Maulana', 'Kpg. Pasteur No. 700, Sorong 34140, DKI', '+6266283514124', '1991-12-27 19:27:27', '2004-11-30 15:38:33'),
(58, 'Belinda Hilda Hasanah S.Sos', 'Kpg. Kartini No. 154, Depok 93471, Banten', '+6238927026143', '1988-07-30 05:45:01', '1996-09-03 02:36:27'),
(59, 'Johan Kamidin Rajasa', 'Psr. Baladewa No. 727, Bogor 33602, JaTeng', '+6247454935390', '2018-11-23 07:45:56', '2014-03-16 11:34:10'),
(60, 'Ikhsan Samosir', 'Dk. Ketandan No. 839, Sungai Penuh 62088, Papua', '+6228896413175', '2006-04-28 21:33:09', '1985-09-15 03:24:53'),
(61, 'Ganep Prakosa Maryadi S.T.', 'Jln. Muwardi No. 142, Administrasi Jakarta Timur 40610, JaTim', '+6283495726951', '1989-09-18 21:05:40', '2018-09-07 03:32:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
