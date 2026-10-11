-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Dic 19, 2024 alle 11:23
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dw_formula1`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `anno`
--

CREATE TABLE `anno` (
  `id_anno` int(11) NOT NULL,
  `anno` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `anno`
--

INSERT INTO `anno` (`id_anno`, `anno`) VALUES
(1, '2020'),
(2, '2021'),
(3, '2022'),
(4, '2023'),
(5, '2024');

-- --------------------------------------------------------

--
-- Struttura della tabella `citta`
--

CREATE TABLE `citta` (
  `id_citta` int(11) NOT NULL,
  `nome_citta` varchar(50) NOT NULL,
  `id_regione` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `citta`
--

INSERT INTO `citta` (`id_citta`, `nome_citta`, `id_regione`) VALUES
(1, 'Sakhir', 1),
(2, 'Jeddah', 2),
(3, 'Melbourne', 3),
(4, 'Baku', 4),
(5, 'Miami', 5),
(6, 'Imola', 6),
(7, 'Monaco', 7),
(8, 'Barcellona', 8),
(9, 'Montreal', 9),
(10, 'Spielberg bei Knittelfeld', 10),
(11, 'Northampton', 11),
(12, 'Mogyoród', 12),
(13, 'Francorchamps', 13),
(14, 'Zandvoort', 14),
(15, 'Monza', 15),
(16, 'Singapore', 16),
(17, 'Suzuka', 17),
(18, 'Losail', 18),
(19, 'Austin', 19),
(20, 'Citta del Messico', 20),
(21, 'San Paolo', 21),
(22, 'Las Vegas', 22),
(23, 'Abu Dhabi', 23);

-- --------------------------------------------------------

--
-- Struttura della tabella `giorno`
--

CREATE TABLE `giorno` (
  `id_giorno` int(11) NOT NULL,
  `giorno` date NOT NULL,
  `id_mese` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `giorno`
--

INSERT INTO `giorno` (`id_giorno`, `giorno`, `id_mese`) VALUES
(1, '2020-03-05', 1),
(2, '2020-03-12', 1),
(3, '2020-03-19', 1),
(4, '2020-06-02', 4),
(5, '2020-06-16', 4),
(6, '2020-06-30', 4),
(7, '2020-07-06', 5),
(8, '2020-07-13', 5),
(9, '2020-07-27', 5),
(10, '2020-08-11', 6),
(11, '2020-08-25', 6),
(12, '2020-09-06', 7),
(13, '2020-09-13', 7),
(14, '2020-09-27', 7),
(15, '2020-10-11', 8),
(16, '2020-10-25', 8),
(17, '2020-11-01', 9),
(18, '2020-11-15', 9),
(19, '2020-11-29', 9),
(20, '2020-12-13', 10),
(21, '2021-03-28', 11),
(22, '2021-04-18', 12),
(23, '2021-05-02', 13),
(24, '2021-05-09', 13),
(25, '2021-05-23', 13),
(26, '2021-06-06', 14),
(27, '2021-06-20', 14),
(28, '2021-06-27', 14),
(29, '2021-07-18', 15),
(30, '2021-08-01', 16),
(31, '2021-08-29', 16),
(32, '2021-09-05', 17),
(33, '2021-09-12', 17),
(34, '2021-09-26', 17),
(35, '2021-10-10', 18),
(36, '2021-10-24', 18),
(37, '2021-11-07', 19),
(38, '2021-11-14', 19),
(39, '2021-11-21', 19),
(40, '2021-12-05', 20),
(41, '2021-12-12', 20),
(42, '2022-03-20', 21),
(43, '2022-03-27', 21),
(44, '2022-04-10', 22),
(45, '2022-04-24', 22),
(46, '2022-05-08', 23),
(47, '2022-05-29', 23),
(48, '2022-06-12', 24),
(49, '2022-06-19', 24),
(50, '2022-07-03', 25),
(51, '2022-07-10', 25),
(52, '2022-07-24', 25),
(53, '2022-07-31', 25),
(54, '2022-08-28', 26),
(55, '2022-09-04', 27),
(56, '2022-09-11', 27),
(57, '2022-10-02', 28),
(58, '2022-10-09', 28),
(59, '2022-10-23', 28),
(60, '2022-10-30', 28),
(61, '2022-11-13', 29),
(62, '2022-11-20', 29),
(63, '2023-03-05', 31),
(64, '2023-03-19', 31),
(65, '2023-04-02', 32),
(66, '2023-04-30', 32),
(67, '2023-05-07', 33),
(68, '2023-05-21', 33),
(69, '2023-05-28', 33),
(70, '2023-06-04', 34),
(71, '2023-06-18', 34),
(72, '2023-07-02', 35),
(73, '2023-07-09', 35),
(74, '2023-07-23', 35),
(75, '2023-07-30', 35),
(76, '2023-08-27', 36),
(77, '2023-09-03', 37),
(78, '2023-09-17', 9),
(79, '2023-09-24', 37),
(80, '2023-10-22', 38),
(81, '2023-10-29', 38),
(82, '2023-11-05', 39),
(83, '2023-11-19', 39),
(84, '2023-11-26', 39),
(85, '2024-03-02', 41),
(86, '2024-03-09', 41),
(87, '2024-03-23', 41),
(88, '2024-04-07', 42),
(89, '2024-04-21', 42),
(90, '2024-05-05', 43),
(91, '2024-05-19', 43),
(92, '2024-05-26', 43),
(93, '2024-06-09', 44),
(94, '2024-06-16', 44),
(95, '2024-06-30', 44),
(96, '2024-07-07', 45),
(97, '2024-07-21', 45),
(98, '2024-07-28', 45),
(99, '2024-08-25', 46),
(100, '2024-09-01', 47),
(101, '2024-09-15', 47),
(102, '2024-09-22', 47),
(103, '2024-10-06', 48),
(104, '2024-10-27', 48),
(105, '2024-11-03', 49),
(106, '2024-11-17', 49),
(107, '2024-12-01', 50);

-- --------------------------------------------------------

--
-- Struttura della tabella `gp`
--

CREATE TABLE `gp` (
  `id_gp` int(11) NOT NULL,
  `nome_gp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `gp`
--

INSERT INTO `gp` (`id_gp`, `nome_gp`) VALUES
(1, 'Bahrain International Circuit'),
(2, 'Jeddah Street Circuit'),
(3, 'Albert Park Circuit'),
(4, 'Baku City Circuit'),
(5, 'Miami International Autodrome'),
(6, 'Imola Circuit'),
(7, 'Monaco Circuit'),
(8, 'Circuit de Barcelona-Catalunya'),
(9, 'Circuit Gilles Villeneuve'),
(10, 'Red Bull Ring'),
(11, 'Silverstone Circuit'),
(12, 'Hungaroring'),
(13, 'Circuit de Spa-Francorchamps'),
(14, 'Zandvoort Circuit'),
(15, 'Monza Circuit'),
(16, 'Marina Bay Street Circuit'),
(17, 'Suzuka International Racing Course'),
(18, 'Losail International Circuit'),
(19, 'Circuit of the Americas'),
(20, 'Autodromo Hermanos Rodriguez'),
(21, 'Interlagos Circuit'),
(22, 'Las Vegas Street Circuit'),
(23, 'Yas Marina Circuit');

-- --------------------------------------------------------

--
-- Struttura della tabella `info_piloti`
--

CREATE TABLE `info_piloti` (
  `id_info_pilota` int(11) NOT NULL,
  `nazionalità` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `info_piloti`
--

INSERT INTO `info_piloti` (`id_info_pilota`, `nazionalità`) VALUES
(1, 'Olandese'),
(2, 'Messicana'),
(3, 'Monegasca'),
(4, 'Spagnola'),
(5, 'Inglese'),
(6, 'Inglese'),
(7, 'Francese'),
(8, 'Spagnola'),
(9, 'Finlandese'),
(10, 'Cinese'),
(11, 'Tedesca'),
(12, 'Danese'),
(13, 'Australiano'),
(14, 'Giapponese'),
(15, 'Thailandese'),
(16, 'Canadese'),
(17, 'Americana'),
(18, 'Brasileira');

-- --------------------------------------------------------

--
-- Struttura della tabella `info_scuderia`
--

CREATE TABLE `info_scuderia` (
  `id_info_scuderia` int(11) NOT NULL,
  `info_scuderia` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `info_scuderia`
--

INSERT INTO `info_scuderia` (`id_info_scuderia`, `info_scuderia`) VALUES
(1, 'Sede: Milton Keynes, Regno Unito'),
(2, 'Sede: Maranello, Italia'),
(3, 'Sede: Brackley, Regno Unito'),
(4, 'Sede: Enstone, Regno Unito'),
(5, 'Sede: Woking, Regno Unito'),
(6, 'Sede: Silverstone, Regno Unito'),
(7, 'Sede: Hinwil, Svizzera'),
(8, 'Sede: Banbury, Regno Unito'),
(9, 'Sede: Faenza, Italia'),
(10, 'Sede: Grove, Regno Unito');

-- --------------------------------------------------------

--
-- Struttura della tabella `mese`
--

CREATE TABLE `mese` (
  `id_mese` int(11) NOT NULL,
  `nome_mese` varchar(20) NOT NULL,
  `id_anno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `mese`
--

INSERT INTO `mese` (`id_mese`, `nome_mese`, `id_anno`) VALUES
(1, 'Marzo', 1),
(2, 'Aprile', 1),
(3, 'Maggio', 1),
(4, 'Giugno', 1),
(5, 'Luglio', 1),
(6, 'Agosto', 1),
(7, 'Settembre', 1),
(8, 'Ottobre', 1),
(9, 'Novembre', 1),
(10, 'Dicembre', 1),
(11, 'Marzo', 2),
(12, 'Aprile', 2),
(13, 'Maggio', 2),
(14, 'Giugno', 2),
(15, 'Luglio', 2),
(16, 'Agosto', 2),
(17, 'Settembre', 2),
(18, 'Ottobre', 2),
(19, 'Novembre', 2),
(20, 'Dicembre', 2),
(21, 'Marzo', 3),
(22, 'Aprile', 3),
(23, 'Maggio', 3),
(24, 'Giugno', 3),
(25, 'Luglio', 3),
(26, 'Agosto', 3),
(27, 'Settembre', 3),
(28, 'Ottobre', 3),
(29, 'Novembre', 3),
(30, 'Dicembre', 3),
(31, 'Marzo', 4),
(32, 'Aprile', 4),
(33, 'Maggio', 4),
(34, 'Giugno', 4),
(35, 'Luglio', 4),
(36, 'Agosto', 4),
(37, 'Settembre', 4),
(38, 'Ottobre', 4),
(39, 'Novembre', 4),
(40, 'Dicembre', 4),
(41, 'Marzo', 5),
(42, 'Aprile', 5),
(43, 'Maggio', 5),
(44, 'Giugno', 5),
(45, 'Luglio', 5),
(46, 'Agosto', 5),
(47, 'Settembre', 5),
(48, 'Ottobre', 5),
(49, 'Novembre', 5),
(50, 'Dicembre', 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `performance`
--

CREATE TABLE `performance` (
  `id_performance` int(11) NOT NULL,
  `id_giorno` int(11) NOT NULL,
  `id_citta` int(11) NOT NULL,
  `id_pilota` int(11) NOT NULL,
  `id_scuderia` int(11) NOT NULL,
  `posizione` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `performance`
--

INSERT INTO `performance` (`id_performance`, `id_giorno`, `id_citta`, `id_pilota`, `id_scuderia`, `posizione`) VALUES
(1, 23, 1, 1, 1, 1),
(2, 45, 1, 2, 1, 2),
(3, 87, 1, 3, 2, 3),
(4, 12, 1, 4, 2, 4),
(5, 78, 2, 5, 3, 1),
(6, 34, 2, 2, 1, 2),
(7, 56, 2, 1, 1, 3),
(8, 98, 2, 3, 2, 4),
(9, 22, 3, 1, 1, 1),
(10, 44, 3, 5, 3, 2),
(11, 67, 3, 4, 2, 3),
(12, 11, 3, 2, 1, 4),
(13, 88, 4, 3, 2, 1),
(14, 54, 4, 1, 1, 2),
(15, 19, 4, 2, 1, 3),
(16, 73, 4, 5, 3, 4),
(17, 31, 5, 5, 3, 1),
(18, 77, 5, 4, 2, 2),
(19, 46, 5, 3, 2, 3),
(20, 62, 5, 1, 1, 4),
(21, 10, 1, 2, 1, 1),
(22, 36, 1, 5, 3, 2),
(23, 59, 1, 4, 2, 3),
(24, 93, 1, 3, 2, 4),
(25, 28, 2, 1, 1, 1),
(26, 85, 2, 2, 1, 2),
(27, 41, 2, 4, 2, 3),
(28, 76, 2, 3, 2, 4),
(29, 39, 3, 5, 3, 1),
(30, 81, 3, 2, 1, 2),
(31, 64, 3, 1, 1, 3),
(32, 97, 3, 4, 2, 4),
(33, 15, 4, 3, 2, 1),
(34, 58, 4, 1, 1, 2),
(35, 82, 4, 5, 3, 3),
(36, 92, 4, 4, 2, 4),
(37, 27, 5, 2, 1, 1),
(38, 63, 5, 3, 2, 2),
(39, 48, 5, 5, 3, 3),
(40, 33, 5, 1, 1, 4),
(41, 18, 1, 4, 2, 1),
(42, 53, 1, 5, 3, 2),
(43, 42, 1, 3, 2, 3),
(44, 86, 1, 2, 1, 4),
(45, 40, 2, 1, 1, 1),
(46, 75, 2, 3, 2, 2),
(47, 29, 2, 4, 2, 3),
(48, 69, 2, 5, 3, 4),
(49, 16, 3, 1, 1, 1),
(50, 84, 3, 2, 1, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `piloti`
--

CREATE TABLE `piloti` (
  `id_pilota` int(11) NOT NULL,
  `pilota` varchar(50) NOT NULL,
  `id_info_pilota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `piloti`
--

INSERT INTO `piloti` (`id_pilota`, `pilota`, `id_info_pilota`) VALUES
(1, 'Max Verstappen', 1),
(2, 'Sergio Perez', 2),
(3, 'Charles Leclerc', 3),
(4, 'Carlos Sainz', 4),
(5, 'Lewis Hamilton', 5),
(6, 'George Russell', 6),
(7, 'Esteban Ocon', 7),
(8, 'Fernando Alonso', 8),
(9, 'Valtteri Bottas', 9),
(10, 'Guanyu Zhou', 10),
(11, 'Nico Hülkenberg', 11),
(12, 'Kevin Magnussen', 12),
(13, 'Oscar Piastri', 13),
(14, 'Yuki Tsunoda', 14),
(15, 'Alex Albon', 15),
(16, 'Lance Stroll', 16),
(17, 'Logan Sargeant', 17),
(18, 'Felipe Drugovich', 18);

-- --------------------------------------------------------

--
-- Struttura della tabella `regione`
--

CREATE TABLE `regione` (
  `id_regione` int(11) NOT NULL,
  `nome_regione` varchar(50) NOT NULL,
  `id_stato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `regione`
--

INSERT INTO `regione` (`id_regione`, `nome_regione`, `id_stato`) VALUES
(1, 'Regione Ovest Bahrain', 1),
(2, 'Regione Ovest Jeddah', 2),
(3, 'Regione Sud Australia', 3),
(4, 'Regione Est Azerbaijan', 4),
(5, 'Florida Est', 5),
(6, 'Emilia Romagna Nord Est', 6),
(7, 'Regione Nord Monaco', 7),
(8, 'Catalogna Nord Est', 8),
(9, 'Quebec Sud Est', 9),
(10, 'Stiria Est', 10),
(11, 'Northamptonshire Sud', 11),
(12, 'Pest Nord', 12),
(13, 'Ardenne Sud', 13),
(14, 'Regione Nord Olanda', 14),
(15, 'Lombardia Nord', 15),
(16, 'Regione Sud Singapore', 16),
(17, 'Mie Regione Centrale', 17),
(18, 'West Bay Lagoon Ovest', 18),
(19, 'Texas Sud', 19),
(20, 'Regione Centrale Messico', 20),
(21, 'Regione Sud Est Brasile', 21),
(22, 'Nevada Ovest', 22),
(23, 'Golfo Persico Nord', 23);

-- --------------------------------------------------------

--
-- Struttura della tabella `scuderia`
--

CREATE TABLE `scuderia` (
  `id_scuderia` int(11) NOT NULL,
  `nome_scuderia` varchar(50) NOT NULL,
  `id_info_scuderia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `scuderia`
--

INSERT INTO `scuderia` (`id_scuderia`, `nome_scuderia`, `id_info_scuderia`) VALUES
(1, 'Red Bull Racing', 1),
(2, 'Scuderia Ferrari', 2),
(3, 'Mercedes-AMG Petronas', 3),
(4, 'Alpine F1 Team', 4),
(5, 'McLaren F1 Team', 5),
(6, 'Aston Martin Aramco Cognizant', 6),
(7, 'Alfa Romeo F1 Team Stake', 7),
(8, 'Haas F1 Team', 8),
(9, 'Scuderia AlphaTauri', 9),
(10, 'Williams Racing', 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `stato`
--

CREATE TABLE `stato` (
  `id_stato` int(11) NOT NULL,
  `nome_stato` varchar(50) NOT NULL,
  `id_gp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `stato`
--

INSERT INTO `stato` (`id_stato`, `nome_stato`, `id_gp`) VALUES
(1, 'Bahrain', 1),
(2, 'Arabia Saudita', 2),
(3, 'Australia', 3),
(4, 'Azerbaijan ', 4),
(5, 'Stati Uniti', 5),
(6, 'Italia', 6),
(7, 'Principato di Monaco', 7),
(8, 'Spagna', 8),
(9, 'Canada', 9),
(10, 'Austria', 10),
(11, 'Inghilterra', 11),
(12, 'Ungheria', 12),
(13, 'Belgio', 13),
(14, 'Olanda', 14),
(15, 'Italia', 15),
(16, 'Singapore', 16),
(17, 'Giappone', 17),
(18, 'Qatar', 18),
(19, 'Stati Uniti', 19),
(20, 'Messico', 20),
(21, 'Brasile', 21),
(22, 'Stati Uniti', 22),
(23, 'Emirati Arabi', 23);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `anno`
--
ALTER TABLE `anno`
  ADD PRIMARY KEY (`id_anno`);

--
-- Indici per le tabelle `citta`
--
ALTER TABLE `citta`
  ADD PRIMARY KEY (`id_citta`),
  ADD KEY `id_regione` (`id_regione`);

--
-- Indici per le tabelle `giorno`
--
ALTER TABLE `giorno`
  ADD PRIMARY KEY (`id_giorno`),
  ADD KEY `id_mese` (`id_mese`);

--
-- Indici per le tabelle `gp`
--
ALTER TABLE `gp`
  ADD PRIMARY KEY (`id_gp`);

--
-- Indici per le tabelle `info_piloti`
--
ALTER TABLE `info_piloti`
  ADD PRIMARY KEY (`id_info_pilota`);

--
-- Indici per le tabelle `info_scuderia`
--
ALTER TABLE `info_scuderia`
  ADD PRIMARY KEY (`id_info_scuderia`);

--
-- Indici per le tabelle `mese`
--
ALTER TABLE `mese`
  ADD PRIMARY KEY (`id_mese`),
  ADD KEY `id_anno` (`id_anno`);

--
-- Indici per le tabelle `performance`
--
ALTER TABLE `performance`
  ADD PRIMARY KEY (`id_performance`),
  ADD KEY `id_giorno` (`id_giorno`),
  ADD KEY `id_citta` (`id_citta`),
  ADD KEY `id_pilota` (`id_pilota`),
  ADD KEY `id_scuderia` (`id_scuderia`);

--
-- Indici per le tabelle `piloti`
--
ALTER TABLE `piloti`
  ADD PRIMARY KEY (`id_pilota`),
  ADD KEY `id_info_pilota` (`id_info_pilota`);

--
-- Indici per le tabelle `regione`
--
ALTER TABLE `regione`
  ADD PRIMARY KEY (`id_regione`),
  ADD KEY `id_stato` (`id_stato`);

--
-- Indici per le tabelle `scuderia`
--
ALTER TABLE `scuderia`
  ADD PRIMARY KEY (`id_scuderia`),
  ADD KEY `id_info_scuderia` (`id_info_scuderia`);

--
-- Indici per le tabelle `stato`
--
ALTER TABLE `stato`
  ADD PRIMARY KEY (`id_stato`),
  ADD KEY `id_gp` (`id_gp`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `anno`
--
ALTER TABLE `anno`
  MODIFY `id_anno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `citta`
--
ALTER TABLE `citta`
  MODIFY `id_citta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT per la tabella `giorno`
--
ALTER TABLE `giorno`
  MODIFY `id_giorno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT per la tabella `gp`
--
ALTER TABLE `gp`
  MODIFY `id_gp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT per la tabella `info_piloti`
--
ALTER TABLE `info_piloti`
  MODIFY `id_info_pilota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT per la tabella `info_scuderia`
--
ALTER TABLE `info_scuderia`
  MODIFY `id_info_scuderia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `mese`
--
ALTER TABLE `mese`
  MODIFY `id_mese` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT per la tabella `performance`
--
ALTER TABLE `performance`
  MODIFY `id_performance` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT per la tabella `piloti`
--
ALTER TABLE `piloti`
  MODIFY `id_pilota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT per la tabella `regione`
--
ALTER TABLE `regione`
  MODIFY `id_regione` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT per la tabella `scuderia`
--
ALTER TABLE `scuderia`
  MODIFY `id_scuderia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `stato`
--
ALTER TABLE `stato`
  MODIFY `id_stato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `citta`
--
ALTER TABLE `citta`
  ADD CONSTRAINT `citta_ibfk_1` FOREIGN KEY (`id_regione`) REFERENCES `regione` (`id_regione`);

--
-- Limiti per la tabella `giorno`
--
ALTER TABLE `giorno`
  ADD CONSTRAINT `giorno_ibfk_1` FOREIGN KEY (`id_mese`) REFERENCES `mese` (`id_mese`);

--
-- Limiti per la tabella `mese`
--
ALTER TABLE `mese`
  ADD CONSTRAINT `mese_ibfk_1` FOREIGN KEY (`id_anno`) REFERENCES `anno` (`id_anno`);

--
-- Limiti per la tabella `performance`
--
ALTER TABLE `performance`
  ADD CONSTRAINT `performance_ibfk_1` FOREIGN KEY (`id_giorno`) REFERENCES `giorno` (`id_giorno`),
  ADD CONSTRAINT `performance_ibfk_2` FOREIGN KEY (`id_citta`) REFERENCES `citta` (`id_citta`),
  ADD CONSTRAINT `performance_ibfk_3` FOREIGN KEY (`id_pilota`) REFERENCES `piloti` (`id_pilota`),
  ADD CONSTRAINT `performance_ibfk_4` FOREIGN KEY (`id_scuderia`) REFERENCES `scuderia` (`id_scuderia`);

--
-- Limiti per la tabella `piloti`
--
ALTER TABLE `piloti`
  ADD CONSTRAINT `piloti_ibfk_1` FOREIGN KEY (`id_info_pilota`) REFERENCES `info_piloti` (`id_info_pilota`);

--
-- Limiti per la tabella `regione`
--
ALTER TABLE `regione`
  ADD CONSTRAINT `regione_ibfk_1` FOREIGN KEY (`id_stato`) REFERENCES `stato` (`id_stato`);

--
-- Limiti per la tabella `scuderia`
--
ALTER TABLE `scuderia`
  ADD CONSTRAINT `scuderia_ibfk_1` FOREIGN KEY (`id_info_scuderia`) REFERENCES `info_scuderia` (`id_info_scuderia`);

--
-- Limiti per la tabella `stato`
--
ALTER TABLE `stato`
  ADD CONSTRAINT `stato_ibfk_1` FOREIGN KEY (`id_gp`) REFERENCES `gp` (`id_gp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
