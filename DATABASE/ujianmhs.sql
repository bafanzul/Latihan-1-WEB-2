-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 14 Mar 2024 pada 15.21
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujianmhs`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `kode_dosen` varchar(5) NOT NULL,
  `nama_dosen` varchar(35) NOT NULL,
  `jekel` enum('L','P') NOT NULL,
  `tmp_lahir` varchar(35) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`kode_dosen`, `nama_dosen`, `jekel`, `tmp_lahir`, `tgl_lahir`, `alamat`) VALUES
('D1001', 'Roy Suryo', 'L', 'Bogor', '1989-01-23', 'Jl. Mayjen Sungkono 93 Surabaya'),
('D1002', 'Ginanjar', 'L', 'Jakarta', '1971-03-21', 'Jl. Ahmad Yani 100 Malang'),
('D1003', 'Gina Sonia', 'P', 'Bandung', '1962-09-12', 'Jl. Citarum 53 Malang'),
('D1004', 'Ian Antono', 'L', 'Palembang', '1980-10-11', 'Jl. Raden Saleh II/42 Surabaya'),
('D1005', 'Indri Jelita', 'P', 'Bengkulu', '1983-07-19', 'Jl. Ahmad Yani 21 Surabaya'),
('D1006', 'Desi Ratnasari', 'P', 'Padang', '1980-11-09', 'Jl. Mayjen Panjaitan 45 Pasuruan'),
('D2001', 'Moh. Umar', 'L', 'Malang', '1983-12-25', 'Jl. Citandui 52 Batu'),
('D2002', 'Aisyah Kamila', 'P', 'Semarang', '1978-10-03', 'Jl. Panglima Sudirman 15 Kepanjen'),
('D2003', 'Ike Nurjannah', 'P', 'Surabaya', '1981-10-01', 'Jl. Sidodadi 76 Pasuruan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen_copy`
--

CREATE TABLE `dosen_copy` (
  `kode_dosen` varchar(50) DEFAULT NULL,
  `nama_dosen` char(50) DEFAULT NULL,
  `jekel` enum('L','P') NOT NULL,
  `tmp_lahir` varchar(35) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `tahun_lahir` char(10) DEFAULT NULL,
  `usia` char(5) DEFAULT NULL,
  `alamat` varchar(50) NOT NULL,
  `Kota` varchar(45) DEFAULT NULL,
  `Telepon` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dosen_copy`
--

INSERT INTO `dosen_copy` (`kode_dosen`, `nama_dosen`, `jekel`, `tmp_lahir`, `tgl_lahir`, `tahun_lahir`, `usia`, `alamat`, `Kota`, `Telepon`) VALUES
('D1001', 'Roy Suryo', 'L', 'Bogor', '1989-01-23', NULL, NULL, 'Jl. Mayjen Sungkono 93 Surabaya', NULL, NULL),
('D1002', 'Ginanjar', 'L', 'Jakarta', '1971-03-21', NULL, NULL, 'Jl. Ahmad Yani 100 Malang', NULL, NULL),
('D1003', 'Gina Sonia', 'P', 'Bandung', '1962-09-12', NULL, NULL, 'Jl. Citarum 53 Malang', NULL, NULL),
('D1004', 'Ian Antono', 'L', 'Palembang', '1980-10-11', NULL, NULL, 'Jl. Raden Saleh II/42 Surabaya', NULL, NULL),
('D1005', 'Indri Jelita', 'P', 'Bengkulu', '1983-07-19', NULL, NULL, 'Jl. Ahmad Yani 21 Surabaya', NULL, NULL),
('D1006', 'Desi Ratnasari', 'P', 'Padang', '1980-11-09', NULL, NULL, 'Jl. Mayjen Panjaitan 45 Pasuruan', NULL, NULL),
('D2001', 'Moh. Umar', 'L', 'Malang', '1983-12-25', NULL, NULL, 'Jl. Citandui 52 Batu', NULL, NULL),
('D2002', 'Aisyah Kamila', 'P', 'Semarang', '1978-10-03', NULL, NULL, 'Jl. Panglima Sudirman 15 Kepanjen', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_ujian`
--

CREATE TABLE `jenis_ujian` (
  `kode_ujian` varchar(8) NOT NULL,
  `nama_ujian` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_ujian`
--

INSERT INTO `jenis_ujian` (`kode_ujian`, `nama_ujian`) VALUES
('UAP', 'Ujian Praktikum'),
('UAS', 'Ujian Akhir Semester'),
('UM', 'Ujian Mandiri'),
('UTS', 'Ujian Tengah Semester');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(10) NOT NULL,
  `nama_mhs` varchar(35) NOT NULL,
  `jekel` enum('L','P') NOT NULL,
  `tmp_lahir` varchar(35) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(50) NOT NULL,
  `kota` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama_mhs`, `jekel`, `tmp_lahir`, `tgl_lahir`, `alamat`, `kota`) VALUES
('2022510001', 'Gogon', 'L', 'Medan', '2002-09-29', 'Jl. Arjuno 123', 'Medan'),
('2022510002', 'Tukul Arwana', 'L', 'Bogor', '2001-06-22', 'Jl. Letjen Sutoyo 87', 'Solo'),
('2022510003', 'Timbul', 'L', 'Semarang', '2003-04-19', 'Jl. Panglima Sudirman 63', 'Semarang'),
('2022510004', 'Nunung', 'P', 'Manado', '2002-06-09', 'Jl. Merdeka Barat 90', 'Jakarta'),
('2022510005', 'Rohana', 'P', 'Cianjur', '2001-01-13', 'Jl. Kesatrian 100', 'Bandung'),
('2022510006', 'Jujuk', 'P', 'Denpasar', '2003-11-07', 'Jl. Sarangan 75', 'Bogor'),
('2022510007', 'Eko', 'L', 'Surabaya', '2002-11-07', 'Jl. Gajayana IV/621B', 'Madiun'),
('2022510008', 'Basuki', 'L', 'Madiun', '2002-06-17', 'Jl. Sunan Giri 54', 'Nganjuk'),
('2022510009', 'Tarsan', 'L', 'Semarang', '2002-12-19', 'Jl. Ambarawa 34', 'Demak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_mtk` varchar(8) NOT NULL,
  `nama_mtk` varchar(35) NOT NULL,
  `sks` varchar(15) NOT NULL,
  `kode_dosen` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kode_mtk`, `nama_mtk`, `sks`, `kode_dosen`) VALUES
('KD_001', 'Sistem Basis Data', '3', 'D1006'),
('KD_002', 'Sistem Berkas', '2', 'D2002'),
('KD_003', 'Sistem Operasi', '2', 'D1004'),
('KD_004', 'Manajemen Proyek Sistem Informasi', '3', 'D1002'),
('KK_001', 'Algoritma dan Pemrograman', '2', 'D1001'),
('KK_002', 'Pemrograman Berbasis WEB', '3', 'D2001'),
('KK_003', 'Pemrograman Piranti Bergerak', '3', 'D1003'),
('KK_004', 'Pemrograman CPP', '3', 'D1003'),
('KK_005', 'Pemrograman Client Server', '3', 'D2003'),
('KK_006', 'Pemrograman Cloud', '3', 'D1005'),
('KK_007', 'Grid Computing', '3', 'D2001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah_copy`
--

CREATE TABLE `matakuliah_copy` (
  `kode_mtk` varchar(8) NOT NULL,
  `nama_mtk` varchar(35) NOT NULL,
  `sks` varchar(15) NOT NULL,
  `kode_dosen` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `matakuliah_copy`
--

INSERT INTO `matakuliah_copy` (`kode_mtk`, `nama_mtk`, `sks`, `kode_dosen`) VALUES
('KD_001', 'Sistem Basis Data', '3', 'D1006'),
('KD_002', 'Sistem Berkas', '2', 'D2002'),
('KD_003', 'Sistem Operasi', '2', 'D1004'),
('KD_004', 'Manajemen Proyek Sistem Informasi', '3', 'D1002'),
('KK_001', 'Algoritma dan Pemrograman', '2', 'D1001'),
('KK_002', 'Pemrograman Berbasis WEB', '3', 'D2001'),
('KK_003', 'Pemrograman Piranti Bergerak', '3', 'D1003'),
('KK_004', 'Pemrograman CPP', '3', 'D1003'),
('KK_005', 'Pemrograman Client Server', '3', 'D2003'),
('KK_006', 'Pemrograman Cloud', '3', 'D1005'),
('KK_007', 'Grid Computing', '3', 'D2001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `nim` varchar(12) NOT NULL,
  `kode_mtk` varchar(10) NOT NULL,
  `kode_ujian` varchar(8) NOT NULL,
  `angka` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`nim`, `kode_mtk`, `kode_ujian`, `angka`) VALUES
('2022510001', 'KK_002', 'UM', 74),
('2022510001', 'KK_003', 'UTS', 82),
('2022510001', 'KK_004', 'UAS', 65),
('2022510001', 'KK_005', 'UAP', 56),
('2022510002', 'KD_001', 'UTS', 95),
('2022510002', 'KD_002', 'UM', 83),
('2022510002', 'KK_006', 'UAP', 67),
('2022510002', 'KK_007', 'UM', 98),
('2022510003', 'KD_003', 'UTS', 65),
('2022510003', 'KD_004', 'UTS', 76),
('2022510003', 'KK_001', 'UAS', 85),
('2022510003', 'KK_002', 'UAP', 96),
('2022510004', 'KD_001', 'UTS', 88),
('2022510004', 'KD_002', 'UAS', 69),
('2022510004', 'KD_003', 'UTS', 74),
('2022510004', 'KK_003', 'UM', 97),
('2022510005', 'KD_004', 'UAS', 44),
('2022510005', 'KK_001', 'UAP', 55),
('2022510005', 'KK_002', 'UM', 86),
('2022510006', 'KK_003', 'UTS', 67),
('2022510006', 'KK_006', 'UAS', 78),
('2022510006', 'KK_007', 'UAS', 45),
('2022510007', 'KD_001', 'UAP', 56),
('2022510007', 'KD_002', 'UM', 64),
('2022510008', 'KD_003', 'UAS', 76);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_hasil`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_hasil` (
`nim` varchar(12)
,`nama_mhs` varchar(35)
,`nama_mtk` varchar(35)
,`nama_dosen` varchar(35)
,`angka` int(11)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `view_hasil`
--
DROP TABLE IF EXISTS `view_hasil`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_hasil`  AS SELECT `a`.`nim` AS `nim`, `b`.`nama_mhs` AS `nama_mhs`, `c`.`nama_mtk` AS `nama_mtk`, `d`.`nama_dosen` AS `nama_dosen`, `a`.`angka` AS `angka` FROM ((((`nilai` `a` join `mahasiswa` `b`) join `matakuliah` `c`) join `dosen` `d`) join `jenis_ujian` `e`) WHERE `a`.`nim` = `b`.`nim` AND `a`.`kode_mtk` = `c`.`kode_mtk` AND `d`.`kode_dosen` = `c`.`kode_dosen` AND `e`.`kode_ujian` = `a`.`kode_ujian` ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`kode_dosen`);

--
-- Indeks untuk tabel `jenis_ujian`
--
ALTER TABLE `jenis_ujian`
  ADD PRIMARY KEY (`kode_ujian`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_mtk`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`nim`,`kode_mtk`,`kode_ujian`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
