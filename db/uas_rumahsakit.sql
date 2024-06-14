-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2024 pada 12.25
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_rumahsakit`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_data`
--

CREATE TABLE `student_data` (
  `id` int(10) NOT NULL,
  `u_NIK` varchar(12) NOT NULL,
  `u_f_name` text NOT NULL,
  `u_l_name` text NOT NULL,
  `u_father` text NOT NULL,
  `u_ktp` varchar(12) NOT NULL,
  `u_birthday` text NOT NULL,
  `u_gender` varchar(6) NOT NULL,
  `u_email` text NOT NULL,
  `u_phone` varchar(15) NOT NULL,
  `u_type` varchar(12) NOT NULL,
  `u_hospital` text NOT NULL,
  `u_village` text NOT NULL,
  `u_submission` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_mother` varchar(30) NOT NULL,
  `status_ajuan` varchar(20) NOT NULL,
  `image` varchar(150) NOT NULL,
  `uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `student_data`
--

INSERT INTO `student_data` (`id`, `u_NIK`, `u_f_name`, `u_l_name`, `u_father`, `u_ktp`, `u_birthday`, `u_gender`, `u_email`, `u_phone`, `u_type`, `u_hospital`, `u_village`, `u_submission`, `u_mother`, `status_ajuan`, `image`, `uploaded`) VALUES
(107, 'sdfgsdfg', '', '', '', '', '', 'Choose', '', 'sfdgsdfg', 'Choose...', '', '', '', '', '', '', '2021-07-18 12:15:55'),
(108, 'fsdfgsdfg', 'sdfgsdfgsdfg', 'sdf', 'sdfgsgf', '', '', 'Choose', '', 'sdfgsdfg', 'Choose...', '', '', '', '', '', '', '2021-07-18 12:16:58'),
(109, 'f546456', 'dsfgsadfg45', 'sdf45g45', 'sdf45g', '', '', 'Choose', '', '564654654', 'Choose...', '', '', '', 'sdfg', '', '', '2021-07-18 12:19:02'),
(113, 'asdfasdf', 'adfasdfasdfasdf', 'asdfasdfasf', '', '', '', 'Choose', '', 'adsfasdfas', 'Choose...', '', '', '', '', '', '', '2021-07-18 12:23:58'),
(114, 'asdfasdf', 'adfasdfasdfasdf', 'asdfasdfasf', '', '', '', 'Choose', '', 'adsfasdfas', 'Choose...', '', '', '', '', '', '', '2021-07-18 12:25:14'),
(115, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '2021-07-18 12:25:22'),
(116, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '2021-07-18 12:28:01'),
(117, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '2021-07-18 12:28:38'),
(118, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '2021-07-18 12:29:05'),
(119, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '2021-07-18 12:29:24'),
(120, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '2021-07-18 12:29:36'),
(121, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '2021-07-18 12:30:55'),
(124, 'as', 'as', 'as', '', '', '', 'Choose', '', 'a', 'Choose...', '', '', '', '', '', '', '2023-08-27 12:44:59'),
(125, '1swms', 'fahmu', 'idajd', 'add', 'dsds', '2023-08-23', 'Male', 'qss@d', ' wq, ', 'Jharkhand', 'w', 'dsds', '', 'abb', 'w', 'logo-sekolah.png', '2023-08-27 22:03:43'),
(126, '1swms', 'fahmu', 'idajd', 'add', 'dsds', '2023-08-23', 'Male', 'qss@d', ' wq, ', 'Jharkhand', 'w', 'dsds', '', 'abb', 'w', 'logo-sekolah.png', '2023-08-27 22:05:43'),
(127, '1swms', 'fahmu', 'idajd', 'add', 'dsds', '2023-08-23', 'Male', 'qss@d', ' wq, ', 'Jharkhand', 'w', 'dsds', '', 'abb', 'w', 'logo-sekolah.png', '2023-08-27 22:15:00'),
(128, '91888273', 'as', 'asdkhk', 'dawfwa', 'fea', '2023-09-08', 'Female', 'fwa@s', '0812666263', 'Karnataka', 'eqw', 'eewd', '', 'wf', 'weq', '', '2023-08-28 14:05:13'),
(133, '123112', 'fahms', 'kidrus', 'wqe', 'fea', '2023-09-01', 'Male', 'gjlhdkkg@aq', '082113783310', 'Andhra Prade', 'q', 'JL BATU ALAM 1', '', 'ads', '“belum_diverifikasi”', '', '2023-08-28 19:23:52'),
(134, '766', 'fs', 'fs', 'fsfs', '', '', 'Choose', 'qaaqa@a', '12333', 'Andhra Prade', 'mit', '', '', 'fs', '“belum_diverifikasi”', '', '2023-08-28 19:26:25'),
(135, '766', 'fs', 'fs', 'fsfs', '', '', 'Choose', 'qaaqa@a', '12333', 'Andhra Prade', 'mit', '', '', 'fs', '“belum_diverifikasi”', '', '2023-08-28 19:37:49'),
(138, '766', 'fs', 'fs', 'fsfs', '', '', 'Choose', 'qaaqa@a', '12333', 'Andhra Prade', 'mit', '', '', 'fs', '“belum_diverifikasi”', '', '2023-08-28 19:57:45'),
(139, '12333', '', '', '', '', '', 'Choose', '', '574747', 'Andaman and ', '', '', '', '', '“belum_diverifikasi”', '', '2023-08-28 20:03:15'),
(140, '111', '', '', '', '', '', 'Choose', '', '111', 'Choose...', '', '', '', '', '“belum_diverifikasi”', '', '2023-08-28 20:03:56'),
(141, '111', '', '', '', '', '', 'Choose', '', '111', 'Choose...', '', '', '', '', '“belum_diverifikasi”', '', '2023-08-28 20:06:01'),
(142, '11', '', '', '', '', '', 'Choose', '', '1', 'Choose...', '', '', '', '', '“belum_diverifikasi”', '', '2023-08-28 20:06:28'),
(143, '11', '', '', '', '', '', 'Choose', '', '1', 'Choose...', '', '', '', '', '“belum_diverifikasi”', '', '2023-08-28 20:12:46'),
(144, '11', '', '', '', '', '', 'Choose', '', '1', 'Choose...', '', '', '', '', '“belum_diverifikasi”', '', '2023-08-28 20:12:51'),
(145, '11', '', '', '', '', '', 'Choose', '', '11211', 'Choose...', '', '', '2', '', '“belum_diverifikasi”', '', '2023-08-28 20:20:47'),
(147, '122', 'gej', 'de', 'erna', '', '', 'Choose', '', '11', 'Andhra Prade', '', '', '5', 'irni', '“belum_diverifikasi”', '', '2023-08-28 20:28:55'),
(148, '122', 'gej', 'de', 'erna', '', '', 'Choose', '', '11', 'Andhra Prade', '', '', '5', 'irni', '“belum_diverifikasi”', '', '2023-08-28 20:35:28'),
(149, '91772', 'erlanga', 'keren', 'papah', '122211', '2023-08-14', 'Male', 'fahmi@gmajkl', '1233', 'Andhra Prade', 'MIT', 'jalan batu alam', '4', 'mamah', '“belum_diverifikasi”', 'smas.jpg', '2023-08-28 20:36:47'),
(150, '12333', '', '', '', '', '', 'Choose', '', '574747', 'Andaman and ', '', '', '', '', '“belum_diverifikasi”', '', '2023-08-28 20:45:46'),
(151, '91772', 'erlanga', 'keren', 'papah', '', '2023-08-14', 'Male', 'fahmi@gmajkl', '1233', 'Andhra Prade', 'MIT', 'jalan batu alam', '4', 'mamah', '“belum_diverifikasi”', 'smas.jpg', '2023-08-28 20:45:55'),
(152, '91772', 'erlanga', 'keren', 'papah', '', '2023-08-14', 'Male', 'fahmi@gmajkl', '1233', 'Andhra Prade', 'MIT', 'jalan batu alam', '4', 'mamah', '“belum_diverifikasi”', 'smas.jpg', '2023-08-28 20:46:03'),
(155, '1223', 'as', 'asdkhk', '', '123423323114', '2023-08-03', 'Male', 'siwak@A', '1223', 'Beasiswa Dal', 'OXFORT', 'JL BATU ALAM 1', '1', '', 'Tidak lulus', '', '2023-08-28 20:52:12'),
(156, '1223', 'as', 'asdkhk', '', '123423323114', '2023-08-03', 'Male', 'siwak@A', '1223', 'Beasiswa DN', 'OXFORT', 'JL BATU ALAM 1', '1', '', '', '', '2023-08-28 20:55:45'),
(157, '122', '', '', '', '', '', 'Male', '', '21212', 'beasiswa DN', '', '', '2', '', 'belum_diverifikasi', '', '2023-08-28 20:57:45'),
(159, '12', 'siwak', 'asdkhk', 'diyas', '123423323114', '', 'Male', 'gjlhdkkg@aq', '21', 'Choose...', '', '', '4', 'abb', 'belum_diverifikasi', '', '2023-08-28 21:11:53'),
(160, '12', 'siwak', 'asdkhk', 'diyas', '123423323114', '', 'Male', 'gjlhdkkg@aq', '21', 'Choose...', '', '', '4', 'abb', 'belum_diverifikasi', '', '2023-08-28 21:13:16'),
(161, '1', '', '', '', '', '', 'Choose', '', '1', 'beasiswa DN', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-28 21:13:45'),
(162, 'gvj', '', '', '', '', '', 'Choose', '', 'asfaf', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 10:53:36'),
(163, 'gvj', '', '', '', '', '', 'Choose', '', 'asfaf', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 11:34:04'),
(164, 'gvj', '', '', '', '', '', 'Choose', '', 'asfaf', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 11:41:02'),
(165, 'gvj', '', '', '', '', '', 'Choose', '', 'asfaf', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 11:41:39'),
(166, 'gvj', '', '', '', '', '', 'Choose', '', 'asfaf', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 11:41:48'),
(167, '122', '', '', '', '', '', 'Choose', '', 'sasass', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 11:42:00'),
(168, '122', '', '', '', '', '', 'Choose', '', 'sasass', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 11:43:32'),
(169, '122', '', '', '', '', '', 'Choose', '', 'sasass', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 11:50:10'),
(170, '122312333', 'fahmi', 'idrus', 'papah', '91772819', '2023-07-31', 'Male', 'fahmi@gmajkl', '11233222', 'beasiswa LN', 'swdw', 'batu alam', '3', 'mamah', 'belum_diverifikasi', '', '2023-08-29 12:36:19'),
(171, '122312333', 'fahmi', 'idrus', 'papah', '91772819', '2023-07-31', 'Male', 'fahmi@gmajkl', '11233222', 'beasiswa LN', 'swdw', 'batu alam', '3', 'mamah', 'belum_diverifikasi', '', '2023-08-29 12:40:48'),
(172, '122312333', 'fahmi', 'idrus', 'papah', '91772819', '2023-07-31', 'Male', 'fahmi@gmajkl', '11233222', 'beasiswa LN', 'swdw', 'batu alam', '3', 'mamah', 'belum_diverifikasi', '', '2023-08-29 12:41:13'),
(173, 'a1', '', '', '', '', '', 'Choose', '', 'sssaas', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 18:59:20'),
(174, 'a1', '', '', '', '', '', 'Choose', '', 'sssaas', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 19:00:17'),
(175, 'a1', '', '', '', '', '', 'Choose', '', 'sssaas', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 19:04:24'),
(176, 'a1', '', '', '', '', '', 'Choose', '', 'sssaas', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 19:08:22'),
(177, 'a1', '', '', '', '', '', 'Choose', '', 'sssaas', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 19:41:46'),
(178, 'a1', '', '', '', '', '', 'Choose', '', 'sssaas', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 19:43:43'),
(179, 'a1', '', '', '', '', '', 'Choose', '', 'sssaas', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 19:47:43'),
(180, 'a1', '', '', '', '', '', 'Choose', '', 'sssaas', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 19:50:22'),
(181, '1212', '', '', '', '', '', 'Choose', '', '1222', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 19:50:28'),
(182, '1212', '', '', '', '', '', 'Choose', '', '1222', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 19:58:30'),
(183, '1212', '', '', '', '', '', 'Choose', '', '1222', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 20:00:30'),
(184, '1212', '', '', '', '', '', 'Choose', '', '1222', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 20:00:38'),
(185, '1212', '', '', '', '', '', 'Choose', '', '1222', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 20:02:32'),
(186, '1111', '', '', '', '', '', 'Choose', '', '111sdsaf', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 20:23:10'),
(187, '1111', '', '', '', '', '', 'Choose', '', '111sdsaf', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 20:24:25'),
(188, '1111', '', '', '', '', '', 'Choose', '', '111sdsaf', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 20:29:35'),
(189, '1111', '', '', '', '', '', 'Choose', '', '111sdsaf', 'Choose...', '', '', '1', '', 'belum_diverifikasi', '', '2023-08-29 20:47:38'),
(190, '11', 'as', 'asdkhk', 'fahmi', '123423323114', '2023-08-15', 'Male', '1112@gmail', '088210094890', 'beasiswa DN', 'mit', 'JL BATU ALAM 1', '3', 'dm, d', 'belum_diverifikasi', '', '2023-08-29 20:53:13'),
(191, '11', 'as', 'asdkhk', 'fahmi', '123423323114', '2023-08-15', 'Male', '1112@gmail', '088210094890', 'beasiswa DN', 'mit', 'JL BATU ALAM 1', '3', 'dm, d', 'belum_diverifikasi', '', '2023-08-29 20:53:24'),
(192, '11', 'as', 'asdkhk', 'fahmi', '123423323114', '2023-08-15', 'Male', '1112@gmail', '088210094890', 'beasiswa DN', 'mit', 'JL BATU ALAM 1', '3', 'dm, d', 'belum_diverifikasi', '', '2023-08-29 20:53:51'),
(193, '11', 'as', 'asdkhk', 'fahmi', '123423323114', '2023-08-15', 'Male', '1112@gmail', '088210094890', 'beasiswa DN', 'mit', 'JL BATU ALAM 1', '3', 'dm, d', 'belum_diverifikasi', '', '2023-08-29 20:54:23'),
(194, '11', 'as', 'asdkhk', 'fahmi', '123423323114', '2023-08-15', 'Male', '1112@gmail', '088210094890', 'beasiswa DN', 'mit', 'JL BATU ALAM 1', '3', 'dm, d', 'belum_diverifikasi', '', '2023-08-29 20:56:24'),
(195, '12', '21', '21', '21', 'dd', '2023-09-06', 'Male', '21@d', '082210094890', 'beasiswa DN', 'ds', 'JL BATU ALAM 1', '7', '21', 'belum_diverifikasi', 'logo beasiswa.jpg', '2023-08-29 20:58:44'),
(196, '12', '21', '21', '21', 'dd', '2023-09-06', 'Male', '21@d', '082210094890', 'beasiswa DN', 'ds', 'JL BATU ALAM 1', '7', '21', 'belum_diverifikasi', 'logo beasiswa.jpg', '2023-08-29 22:17:06'),
(197, '12', '21', '21', '21', 'dd', '2023-09-06', 'Male', '21@d', '082210094890', 'beasiswa DN', 'ds', 'JL BATU ALAM 1', '7', '21', 'belum_diverifikasi', 'logo beasiswa.jpg', '2023-08-29 22:18:25'),
(198, '12', '21', '21', '21', 'dd', '2023-09-06', 'Male', '21@d', '082210094890', 'beasiswa DN', 'ds', 'JL BATU ALAM 1', '7', '21', 'belum_diverifikasi', 'logo beasiswa.jpg', '2023-08-29 22:19:22'),
(199, '12', '21', '21', '21', 'dd', '2023-09-06', 'Male', '21@d', '082210094890', 'beasiswa DN', 'ds', 'JL BATU ALAM 1', '7', '21', 'belum_diverifikasi', 'logo beasiswa.jpg', '2023-08-29 22:26:21'),
(200, '12', '21', '21', '21', 'dd', '2023-09-06', 'Male', '21@d', '082210094890', 'beasiswa DN', 'ds', 'JL BATU ALAM 1', '7', '21', 'belum_diverifikasi', 'logo beasiswa.jpg', '2023-08-29 22:27:26'),
(201, '12', '21', '21', '21', 'dd', '2023-09-06', 'Male', '21@d', '082210094890', 'beasiswa DN', 'ds', 'JL BATU ALAM 1', '7', '21', 'belum_diverifikasi', 'logo beasiswa.jpg', '2023-08-29 22:28:07'),
(202, '12', '21', '21', '21', 'dd', '2023-09-06', 'Male', '21@d', '082210094890', 'beasiswa DN', 'ds', 'JL BATU ALAM 1', '7', '21', 'belum_diverifikasi', 'logo beasiswa.jpg', '2023-08-29 22:28:41'),
(203, '12113141516', 'fahmi', 'idrus', 'papah', '128391739', '2023-08-14', 'Male', 'fahmiidrus@gmail.com', '088210094890', 'beasiswa DN', 'upn veteran jakarta', 'jalan batu alam 1', '6', 'mamah', 'belum_diverifikasi', '2022-09-13 (1).png', '2023-08-30 19:36:04'),
(204, '121314143433', 'q', 'qq', 'q', '1231456745', '2004-02-23', 'Choose', 'ghghsag@gmail.com', '088210094890', 'beasiswa DN', 'UPN Veteran Jakarta', 'gorgon', '1', 'q', 'belum_diverifikasi', 'Web capture_30-8-2023_201158_.jpeg', '2023-08-30 20:13:58'),
(205, '121314143433', 'q', 'qq', 'q', '1231456745', '2004-02-23', 'Choose', 'ghghsag@gmail.com', '088210094890', 'beasiswa DN', 'UPN Veteran Jakarta', 'gorgon', '1', 'q', 'belum_diverifikasi', 'Web capture_30-8-2023_201158_.jpeg', '2023-08-30 20:15:23'),
(207, '123322444423', 'fahmi', 'idrus', 'marus', '917736542', '2004-02-23', 'Male', 'fahmi@gmail.com', '088210094890', 'beasiswa DN', 'UPN Veteran Jakarta', 'jalan batu alam', '5', 'rahmi', 'belum_diverifikasi', 'Web capture_30-8-2023_201158_.jpeg', '2023-09-02 21:16:32'),
(209, '2310511079', 'Fahmi', 'Rahmi', 'Marus', '2310511079', '2024-06-10', 'Male', 'fahmiidrus111@gmail.com', '088210094890', 'MANDIRI', 'Rumah Sakit BUNDA MULIA', 'Jl.batu alam 1 no.91,RT.06/RW.03, Kecamatan Cipayung, Kelurahan pondok jaya, kota Depok.', '7', 'Rahmi', 'belum_diverifikasi', '2023-12-10 (1).png', '2024-06-10 22:34:33'),
(210, '2310511079', 'Rudi', 'Gunsi', 'Ucup', '231949494', '2024-05-30', 'Choose', 'Root@gamil.com', '088210094821', 'BPJS', 'rumah sakit jiwa', 'jalanan', '5', 'Jariah', 'belum_diverifikasi', '1.1.png', '2024-06-10 22:49:17'),
(211, '231212121', 'yama', 'yaki', 'yana', '00000000', '2024-05-31', 'Female', 'gann@jmais', '08831021021', 'BPJS', 'rumah sakit bunda', 'asassaasas', 'Juli', 'yani', 'belum_diverifikasi', '2023-09-17.png', '2024-06-10 23:50:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(7, 'ss', '$2y$10$WYHfxnexTlCkB7dTpd0OHuAKSB5asgtZQYu8HiNxu.NUBeefNaidy', '2023-08-27 12:37:12'),
(8, 'fahmi', '$2y$10$6Ad6Fcx5jYikwRiKeKwH1ezJuv9ZTUBVLoOP2t3bw83GDivyEkDr2', '2023-08-29 13:11:34'),
(9, 'fahmi1', '$2y$10$e8ms.C/2Hoa9dJWEp3pGZez/7QMzVltovczOcvOxkbg58/L/QIY4a', '2023-08-30 19:56:30'),
(10, 'Fahmi123', '$2y$10$b6Mi6dux467MC1zUtspocuvr/LX.nZHQnrN7z4ywW9GBHUOHhe/oy', '2023-09-02 21:32:00'),
(11, 'admin', '$2y$10$Cgotkz0Ep9TxeGeZ4aGr/OmhFm99qhHi5brQeYpibxM/hQbuvfC6G', '2024-03-17 23:27:28'),
(12, 'kiyo', '$2y$10$GIFf19RiT7EoTlsQrgd3T.mevrTZqxyysh5ug8IjYkFAHkQteYwyG', '2024-06-10 22:14:14');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `student_data`
--
ALTER TABLE `student_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
