-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 10, 2024 at 01:52 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_puskesmas`
--

-- --------------------------------------------------------

--
-- Table structure for table `paramedik`
--

CREATE TABLE `paramedik` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `gender` char(1) NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `kategori` enum('umum','spesialis','','') NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `unit_kerja_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paramedik`
--

INSERT INTO `paramedik` (`id`, `nama`, `gender`, `tmp_lahir`, `tgl_lahir`, `kategori`, `telpon`, `alamat`, `unit_kerja_id`) VALUES
(3, 'Dr. Vivi Novita', 'p', 'Aceh', '2005-03-12', 'spesialis', '08121109287', 'Jl. Sidamukti No.20 RT08/RW09', 3),
(6, 'Rifa Hamura', 'p', 'Bekasi', '2002-05-22', 'umum', '08121230698', 'Jl. Rahma Sita No.92 RT09/RW02', 6),
(8, 'Dr. Dinda Kamila', 'p', 'Jakarta', '2005-02-14', 'umum', '08112976257', 'Jl. Ahmad Mustofa No.02 RT02/RW02', 1),
(9, 'Dr. Jihan Rahian', 'p', 'Bogor', '2003-04-03', 'spesialis', '08234574567', 'Jl. Ani mulia No.02 RT05/RW02', 3),
(21, 'Dr. Raima Farras', 'p', 'Bogor', '2004-12-20', 'spesialis', '08129812467', 'Jl. Kurnia  No.12 RT09/RW01', 2),
(23, 'adah', 'p', 'Bogor', '2003-03-12', 'umum', '081298276876', 'Sssssssss', 7),
(30, 'Dr. Vivi Novita', 'P', '3', '2005-03-12', 'umum', '08121109287', 'Jl. Sidamukti No.20 RT08/RW09', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `paramedik`
--
ALTER TABLE `paramedik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unit_kerja_id` (`unit_kerja_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `paramedik`
--
ALTER TABLE `paramedik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `paramedik`
--
ALTER TABLE `paramedik`
  ADD CONSTRAINT `paramedik_ibfk_1` FOREIGN KEY (`unit_kerja_id`) REFERENCES `unit_kerja` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `kode` varchar(45) DEFAULT NULL,
  `tmp_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `kelurahan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id`, `nama`, `kode`, `tmp_lahir`, `tgl_lahir`, `gender`, `email`, `alamat`, `kelurahan_id`) VALUES
(1, 'Cthrine Giacomuzzi', '1', 'Железный порт', '2004-05-05', 'P', 'cgiacomuzzi0@fastcompany.com', '05041 Center Circle', 1),
(2, 'Zane Cherm', '1', 'Ostravice', '2008-10-22', 'M', 'zcherm1@behance.net', '46 Bayside Court', 5),
(3, 'Garrot Buxey', '1', 'Lapuan', '2000-07-16', 'F', 'gbuxey2@edublogs.org', '809 Boyd Way', 4),
(4, 'Lacy Manolov', '5', 'Gandekan', '2000-06-22', 'F', 'lmanolov3@tuttocitta.it', '5967 Nelson Junction', 3),
(5, 'Sindee Escott', '1', 'Bakunase', '2007-07-06', 'M', 'sescott4@europa.eu', '2507 Superior Lane', 5),
(6, 'Mallory Ollander', '3', 'Arkhaía Kórinthos', '2023-01-16', 'M', 'mollander5@github.io', '47 Parkside Road', 4),
(7, 'Zelda Groveham', '3', 'Longhua', '2008-07-21', 'M', 'zgroveham6@engadget.com', '0673 Stang Alley', 4),
(8, 'Lacy Faithfull', '2', 'Kentau', '2015-03-23', 'M', 'lfaithfull7@goodreads.com', '0161 Hansons Hill', 3),
(9, 'Fleurette Peiser', '4', 'Huangshan', '1993-05-15', 'M', 'fpeiser8@ycombinator.com', '7233 Darwin Place', 4),
(10, 'Rhea Veldstra', '2', 'Villa Florida', '2012-05-24', 'F', 'rveldstra9@tripod.com', '76 Myrtle Hill', 5),
(11, 'Zachary Doul', '5', 'Citundun', '2008-04-11', 'M', 'zdoula@goodreads.com', '22 Saint Paul Parkway', 4),
(12, 'Bale Maudett', '3', 'Kostanay', '2008-06-15', 'M', 'bmaudettb@mediafire.com', '397 Merrick Street', 3),
(13, 'Earlie Murrow', '3', 'Yoiqag', '1997-05-09', 'M', 'emurrowc@amazon.co.uk', '4785 Fieldstone Street', 3),
(14, 'Amos Lannen', '1', 'Chinú', '2004-05-21', 'F', 'alannend@bravesites.com', '641 Golf Hill', 5),
(15, 'Earle Bummfrey', '1', 'Lugang', '1994-03-25', 'M', 'ebummfreye@livejournal.com', '6520 Monument Terrace', 4),
(16, 'Erena Flea', '2', 'El Cardo', '2003-07-14', 'M', 'efleaf@tmall.com', '68760 Buell Circle', 1),
(17, 'Lorelei Leed', '1', 'Bałtów', '2016-02-01', 'M', 'lleedg@amazon.de', '029 Waywood Pass', 4),
(18, 'Marinna Davidsohn', '4', 'Shenglilu', '2002-08-28', 'F', 'mdavidsohnh@bloglines.com', '8 Hooker Crossing', 1),
(19, 'Carena Roscrigg', '4', 'Banjar Batanpoh', '2015-09-24', 'M', 'croscriggi@springer.com', '55742 Harbort Park', 3),
(20, 'Leeann Reyner', '1', 'Lyon', '2015-06-28', 'M', 'lreynerj@census.gov', '300 Hermina Parkway', 3),
(21, 'Kali Curcher', '4', 'Saint-Jean-de-Védas', '2005-09-06', 'F', 'kcurcherk@mozilla.com', '572 Hoffman Drive', 3),
(22, 'Claudio Green', '5', 'Baghlān', '2005-11-11', 'M', 'cgreenl@surveymonkey.com', '7719 Magdeline Junction', 3),
(23, 'Morris Lynd', '1', 'Chirilagua', '2016-02-07', 'F', 'mlyndm@tamu.edu', '129 Bluejay Lane', 4),
(24, 'Noland Thew', '2', 'Jeju-si', '2002-10-22', 'F', 'nthewn@123-reg.co.uk', '27 Superior Pass', 4),
(25, 'Duffy Bustin', '1', 'Borzęta', '1995-07-19', 'M', 'dbustino@ameblo.jp', '7 New Castle Hill', 5),
(26, 'Lloyd Nipper', '1', 'Qingfeng', '2007-03-25', 'M', 'lnipperp@studiopress.com', '75999 Westport Plaza', 4),
(27, 'Guendolen Sowthcote', '4', 'Oetuke', '1999-01-06', 'F', 'gsowthcoteq@blogger.com', '733 Blaine Lane', 4),
(28, 'Cello McComas', '4', 'San Antonio de Los Altos', '2009-03-03', 'F', 'cmccomasr@histats.com', '21 Sugar Way', 5),
(29, 'Connie Bird', '3', 'Chicago', '1993-04-10', 'M', 'cbirds@technorati.com', '904 Talisman Way', 5),
(30, 'Therine Peplay', '2', 'Caticugan', '2014-05-28', 'F', 'tpeplayt@bbc.co.uk', '1 Eastwood Crossing', 4),
(31, 'Teri Freezor', '1', 'Bezlyudivka', '2019-06-18', 'F', 'tfreezoru@apache.org', '196 Bluestem Drive', 4),
(32, 'Grenville Goldingay', '4', 'Qingshi', '1994-09-24', 'M', 'ggoldingayv@friendfeed.com', '582 Glacier Hill Alley', 3),
(33, 'Chico Longstaffe', '5', 'Stockholm', '2011-04-03', 'F', 'clongstaffew@amazon.com', '546 Rowland Place', 3),
(34, 'Stan McVeagh', '5', 'Ban Lŭng', '1998-01-25', 'F', 'smcveaghx@unblog.fr', '92081 Cascade Parkway', 3),
(35, 'Caldwell Amies', '1', 'Tete', '2017-05-03', 'M', 'camiesy@harvard.edu', '20 Michigan Street', 3),
(36, 'Betsy Bridgen', '5', 'Kiukasen', '2001-05-01', 'F', 'bbridgenz@samsung.com', '0808 Dottie Point', 3),
(37, 'Thaddeus Nunan', '3', 'Túquerres', '2017-12-01', 'F', 'tnunan10@comsenz.com', '7 Corben Plaza', 5),
(38, 'Cari Jansky', '2', 'Zhaowanzhuang', '1994-09-25', 'M', 'cjansky11@unblog.fr', '9756 Bultman Plaza', 5),
(39, 'Aurelie Opdenorth', '1', 'Tuapse', '2007-02-19', 'M', 'aopdenorth12@linkedin.com', '8 Manitowish Place', 2),
(40, 'Wallis Hubbold', '3', 'Kasangulu', '1992-04-29', 'F', 'whubbold13@examiner.com', '733 Karstens Avenue', 5),
(41, 'Whitney Mardy', '4', 'Dakoutun', '2012-01-12', 'F', 'wmardy14@msu.edu', '5791 Melvin Junction', 3),
(42, 'Devonna Land', '1', 'Usman’', '1993-06-09', 'M', 'dland15@ibm.com', '25816 Forster Plaza', 2),
(43, 'Lottie Hayth', '4', 'Kaz', '2007-05-27', 'M', 'lhayth16@state.gov', '98 Clove Park', 4),
(44, 'Vinson Dole', '3', 'Los Aquijes', '2018-05-24', 'F', 'vdole17@photobucket.com', '19 Service Hill', 3),
(45, 'Wendel Sute', '3', 'Syriam', '2019-02-02', 'M', 'wsute18@opensource.org', '1838 Cardinal Parkway', 4),
(46, 'Chev Burgwin', '2', 'Gumel', '1998-10-31', 'M', 'cburgwin19@blog.com', '5 Brentwood Alley', 3),
(47, 'Oralia Longfield', '4', 'Ḩāfiz̧ Moghul', '2022-12-10', 'M', 'olongfield1a@twitter.com', '4 Kropf Alley', 5),
(48, 'Agace Cossans', '5', 'La Azulita', '2016-08-22', 'M', 'acossans1b@newyorker.com', '7734 Mcbride Point', 3),
(49, 'Carver Broomhall', '5', 'Independencia', '2008-01-11', 'M', 'cbroomhall1c@imgur.com', '2694 Lillian Pass', 5),
(50, 'Frasquito Pendre', '1', 'Putina', '2002-07-02', 'F', 'fpendre1d@joomla.org', '2 Muir Junction', 1),
(68, 'Naufal Zainul', 'P003', 'Bogor', '2005-05-09', 'L', 'naufalzainul473@gmail.com', 'Jl. Cikema 1', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `periksa`
--

CREATE TABLE `periksa` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `berat` double NOT NULL,
  `tinggi` double NOT NULL,
  `tensi` varchar(20) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `pasien_id` int(11) NOT NULL,
  `dokter_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `periksa`
--

INSERT INTO `periksa` (`id`, `tanggal`, `berat`, `tinggi`, `tensi`, `keterangan`, `pasien_id`, `dokter_id`) VALUES
(1, '2024-04-01', 65, 170, '90/80 mmhg', 'tidak normal', 36, 1),
(2, '2024-04-02', 55, 160, '100/90 mmhg', 'normal', 21, 9),
(4, '2024-04-09', 65, 164, '90/90 mmhg', 'ngambil obat', 68, 7),
(5, '2024-04-16', 65, 170, '90/80 mmhg', 'tidak normal', 35, 3),
(6, '2024-04-17', 55, 160, '100/90 mmhg', 'normal', 39, 8),
(8, '2024-04-27', 65, 164, '90/90 mmhg', 'bayar tagihan', 2, 6),
(9, '2024-04-29', 60, 154, '90/100', 'normal', 39, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `unit_kerja`
--

CREATE TABLE `unit_kerja` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `unit_kerja`
--

INSERT INTO `unit_kerja` (`id`, `nama`) VALUES
(1, 'poli umum'),
(2, 'poli kebidanan'),
(3, 'poli anak'),
(4, 'poli gizi'),
(5, 'poli mata'),
(6, 'ruang administrasi'),
(7, 'farmasi'),
(9, 'poli mental');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Naufal Zainul', 'naufalzainul@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `paramedik`
--
ALTER TABLE `paramedik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unit_kerja_id` (`unit_kerja_id`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelurahan_id` (`kelurahan_id`);

--
-- Indeks untuk tabel `periksa`
--
ALTER TABLE `periksa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pasien_id` (`pasien_id`),
  ADD KEY `dokter_id` (`dokter_id`);

--
-- Indeks untuk tabel `unit_kerja`
--
ALTER TABLE `unit_kerja`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kelurahan`
--
ALTER TABLE `kelurahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `paramedik`
--
ALTER TABLE `paramedik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT untuk tabel `periksa`
--
ALTER TABLE `periksa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `unit_kerja`
--
ALTER TABLE `unit_kerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `paramedik`
--
ALTER TABLE `paramedik`
  ADD CONSTRAINT `paramedik_ibfk_1` FOREIGN KEY (`unit_kerja_id`) REFERENCES `unit_kerja` (`id`);

--
-- Ketidakleluasaan untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD CONSTRAINT `pasien_ibfk_1` FOREIGN KEY (`kelurahan_id`) REFERENCES `kelurahan` (`id`);

--
-- Ketidakleluasaan untuk tabel `periksa`
--
ALTER TABLE `periksa`
  ADD CONSTRAINT `periksa_ibfk_1` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`),
  ADD CONSTRAINT `periksa_ibfk_2` FOREIGN KEY (`dokter_id`) REFERENCES `paramedik` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
