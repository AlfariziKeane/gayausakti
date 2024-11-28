-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Nov 2024 pada 15.15
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gayau_sakti`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `name`, `email`, `password`) VALUES
(1, 'ami', 'Fahmi RH', 'ramadhanhfahmi@gmail.com', '$2y$10$3kOojG3GwNOgdnSMrPLWd.2h90jdhH0SNGSGOS.x8T3FmlM6flGnG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kegiatan`
--

CREATE TABLE `data_kegiatan` (
  `nama_kegiatan` text NOT NULL,
  `tanggal_kegiatan` date NOT NULL,
  `isi` text NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_kegiatan`
--

INSERT INTO `data_kegiatan` (`nama_kegiatan`, `tanggal_kegiatan`, `isi`, `foto`) VALUES
('Jalan Sehat', '2024-10-14', 'Jalan sehat diselenggarakan oleh kknt', 'FAHMI.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_penduduk`
--

CREATE TABLE `data_penduduk` (
  `id` int(4) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `tempat_tanggal_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `nomor_telepon` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` enum('Kawin','Belum Kawin','Cerai Hidup','Cerai Mati') NOT NULL,
  `kewarganegaraan` varchar(50) NOT NULL
) ;

--
-- Dumping data untuk tabel `data_penduduk`
--

INSERT INTO `data_penduduk` (`id`, `nik`, `nama`, `jenis_kelamin`, `tempat_tanggal_lahir`, `tanggal_lahir`, `alamat`, `nomor_telepon`, `email`, `status`, `kewarganegaraan`) VALUES
(1, '3207092111030001', 'Fahmi Ramadhan Hidayat', 'L', 'Ciamis', '2003-11-21', 'Ciamis', '0895383176475', 'ramadhanhfahmi@gmail.com', 'Belum Kawin', 'Indonesia'),
(3, '3207092111030004', 'sa', 'P', 'Ciamis', '2024-10-07', 'Jl Nanggela Rt01/ Rw 04', '0895383176475', 'sa@gmail.com', 'Kawin', 'Indonesia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas`
--

CREATE TABLE `fasilitas` (
  `Foto` varchar(100) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `fasilitas`
--

INSERT INTO `fasilitas` (`Foto`, `Nama`, `Keterangan`) VALUES
('PONPES.jpg', 'Ponpes', 'Untuk menuntut ilmu'),
('PONPES.jpg', 'Ponpes', 'Untuk menuntut ilmu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemerintah_desa`
--

CREATE TABLE `pemerintah_desa` (
  `Sejarah` text NOT NULL,
  `Visi` text NOT NULL,
  `Misi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pemerintah_desa`
--

INSERT INTO `pemerintah_desa` (`Sejarah`, `Visi`, `Misi`) VALUES
('Seperti desa-desa transmigrasi lainnya di daerah Lampung khasanya Lampung Tengah. maka kampung Gayau Sakti pada mulanya juga merupakan hutan belukar.', 'Memajukan Gayau Sakti yang beriligius', 'Mengembangkan wisata religi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perangkat_desa`
--

CREATE TABLE `perangkat_desa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `pendidikan` varchar(50) NOT NULL,
  `tanggal_pengangkatan` date DEFAULT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `perangkat_desa`
--

INSERT INTO `perangkat_desa` (`id`, `nama`, `jabatan`, `pendidikan`, `tanggal_pengangkatan`, `foto`) VALUES
(1, 'Ami', 'Kepala Kampung', 'S3', '2024-10-10', 'Screenshot 2024-11-04 101311.png'),
(2, 'Jokowi', 'Sekertaris', 'S3', '2024-11-01', 'jokowi.jpeg'),
(3, 'Prabowo', 'Bendahara', 'S3', '2024-11-04', 'prabowo.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `nama_pengirim` varchar(100) NOT NULL,
  `no_telepon` int(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `isi_pesan` text NOT NULL,
  `tanggal_kirim` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`id`, `nama_pengirim`, `no_telepon`, `email`, `isi_pesan`, `tanggal_kirim`) VALUES
(1, 'ami', 0, '0895383176475', 'bagus', '2024-10-30 04:33:27'),
(2, 'mi', 2147483647, '', 'ngookk', '2024-10-30 04:36:11'),
(3, 'fahmi', 2147483647, '', 'ngookk', '2024-10-30 04:38:29'),
(4, 'saha', 2147483647, '', 'ngookk', '2024-10-30 04:39:04'),
(5, 'ngok', 2147483647, '', 'sip', '2024-10-30 04:40:46'),
(6, 'aku', 2147483647, '', 'shapp', '2024-10-30 04:45:41'),
(7, 'opal', 2147483647, '', 'bagus', '2024-10-30 04:50:10'),
(8, 'Naufal', 2147483647, '', 'Hoyong uih', '2024-11-11 17:42:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `umkm`
--

CREATE TABLE `umkm` (
  `id` int(11) NOT NULL,
  `nama_umkm` varchar(100) NOT NULL,
  `lokasi` varchar(225) DEFAULT NULL,
  `foto_produk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `umkm`
--

INSERT INTO `umkm` (`id`, `nama_umkm`, `lokasi`, `foto_produk`) VALUES
(1, 'Tiwul MARKOTOP', 'https://maps.app.goo.gl/qQ2xQMNFMk9HgXPT8', 'TIWUL.jpg'),
(2, 'Bakmi WENAKKK', 'https://maps.app.goo.gl/PaJD9GmqpiruiaDK6', 'BAKMI.jpg'),
(4, 'Rengginang KRIUK', 'https://maps.app.goo.gl/BZVt6KNHfyLFMkNh6', 'RENGGINANG.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_penduduk`
--
ALTER TABLE `data_penduduk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nik` (`nik`);

--
-- Indeks untuk tabel `perangkat_desa`
--
ALTER TABLE `perangkat_desa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `umkm`
--
ALTER TABLE `umkm`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `data_penduduk`
--
ALTER TABLE `data_penduduk`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `perangkat_desa`
--
ALTER TABLE `perangkat_desa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `umkm`
--
ALTER TABLE `umkm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
