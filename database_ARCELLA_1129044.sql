-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Dic 19, 2024 alle 11:15
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
-- Database: `formula1`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `afferisce`
--

CREATE TABLE `afferisce` (
  `id_piloti` int(11) NOT NULL,
  `id_gp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `afferisce`
--

INSERT INTO `afferisce` (`id_piloti`, `id_gp`) VALUES
(1, 7),
(2, 20),
(3, 16),
(4, 23),
(5, 5),
(6, 10),
(7, 11),
(8, 12),
(9, 22),
(10, 21),
(11, 4),
(12, 2),
(13, 11),
(14, 18),
(15, 8),
(16, 18),
(17, 16),
(18, 5),
(19, 4),
(20, 11),
(21, 23),
(22, 24);

-- --------------------------------------------------------

--
-- Struttura della tabella `comporta`
--

CREATE TABLE `comporta` (
  `id_gp` int(11) NOT NULL,
  `id_sessione` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `comporta`
--

INSERT INTO `comporta` (`id_gp`, `id_sessione`) VALUES
(1, 1),
(2, 16),
(3, 5),
(4, 17),
(5, 10),
(6, 22),
(7, 2),
(8, 4),
(9, 21),
(10, 7),
(11, 6),
(12, 12),
(13, 14),
(14, 8),
(15, 18),
(16, 13),
(17, 3),
(18, 11),
(19, 20),
(20, 15),
(21, 9),
(22, 19),
(23, 22),
(24, 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `gran_premio`
--

CREATE TABLE `gran_premio` (
  `id_gp` int(11) NOT NULL,
  `nazione_ospite` text NOT NULL,
  `nome` text NOT NULL,
  `stagione` text NOT NULL,
  `vincitore` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `gran_premio`
--

INSERT INTO `gran_premio` (`id_gp`, `nazione_ospite`, `nome`, `stagione`, `vincitore`) VALUES
(1, 'Bahrain', 'GULF AIR BAHRAIN GRAND PRIX', 'Estate', 'Verstappen'),
(2, 'Arabia Saudita', 'SAUDI ARABIAN GRAND PRIX', 'Estate', 'Verstappen'),
(3, 'Australia', 'AUSTRALIAN GRAND PRIX', 'Autunno', 'Sainz'),
(4, 'Giappone', 'JAPANESE GRAND PRIX', 'Primavera', 'Verstappen'),
(5, 'Cina', 'CHINESE GRAND PRIX', 'Primavera', 'Verstappen'),
(6, 'Stati Uniti', 'CRYPTO COM MIAMI GRAND PRIX', 'Primavera', 'Norris'),
(7, 'Italia', 'FORMULA ONE MSC CRUISES GRAN PREMIO DEL MADE IN ITALY E DELL\'EMILIA-ROMAGNA', 'Primavera', 'Verstappen'),
(8, 'Monaco', 'FORMULA ONE GRAND PRIX DE MONACO', 'Primavera', 'Leclerc'),
(9, 'Canada', 'FORMULA ONE AWS GRAND PRIX DU CANADA', 'Estate', 'Verstappen'),
(10, 'Spain', 'FORMULA ONE ARAMCO GRAN PREMIO DE ESPANA', 'Estate', 'Verstappen'),
(11, 'Austria', 'FORMULA ONE QATAR AIRWAYS AUSTRIAN GRAND PRIX', 'Estate', 'Russell'),
(12, 'Gran Bretagna', 'FORMULA ONE QATAR AIRWAYS BRITISH GRAND ', 'Estate', 'Hamilton'),
(13, 'Ungheria', 'FORMULA ONE HUNGARIAN GRAND', 'Estate', 'Piastri'),
(14, 'Belgio', 'FORMULA ONE ROLEX BELGIAN GRAND PRIX', 'Estate', 'Hamilton'),
(15, 'Olanda', 'FORMULA ONE HEINEKEN DUTCH GRAND PRIX', 'Estate', 'Norris'),
(16, 'Italia', 'FORMULA ONE PIRELLI GRAN PREMIO D’ITALIA', 'Estate', 'Leclerc'),
(17, 'Azerbaijan', 'FORMULA ONE QATAR AIRWAYS AZERBAIJAN GRAND PRIX', 'Estate', 'Piastri'),
(18, 'Singapore', 'FORMULA ONE SINGAPORE AIRLINES SINGAPORE GRAND PRIX', 'Estate', 'Norris'),
(19, 'Stati Uniti', 'FORMULA ONE PIRELLI UNITED STATES GRAND PRIX', 'Autunno', 'Leclerc'),
(20, 'Messico', 'FORMULA ONE GRAN PREMIO DE LA CIUDAD DE MEXICO', 'Estate', 'Sainz'),
(21, 'Brasile', 'FORMULA ONE LENOVO GRANDE PREMIO DE SAO PAULO', 'Primavera', 'Verstappen'),
(22, 'Stati Uniti', 'LAS VEGAS GRAND PRIX', 'Autunno', 'Verstappen'),
(23, 'Qatar', 'QATAR AIRWAYS GRAND PRIX', 'Primavera', 'Leclerc'),
(24, 'Emirati Arabi Uniti', 'ABU DHABI GRAND PRIX', 'Inverno', 'Norris');

-- --------------------------------------------------------

--
-- Struttura della tabella `motore`
--

CREATE TABLE `motore` (
  `id_motore` int(8) NOT NULL,
  `tipo` text NOT NULL,
  `unita_cambiate` varchar(2000) NOT NULL,
  `usura_attuale_percentuale` varchar(101) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `motore`
--

INSERT INTO `motore` (`id_motore`, `tipo`, `unita_cambiate`, `usura_attuale_percentuale`) VALUES
(1, 'Ferrari', '3', '70'),
(2, 'Mercedes', '2', '50'),
(3, 'Redbull', '5', '20'),
(4, 'Renault', '3', '55'),
(5, 'Audi', '4', '75');

-- --------------------------------------------------------

--
-- Struttura della tabella `piloti`
--

CREATE TABLE `piloti` (
  `id_piloti` int(11) NOT NULL,
  `nome` text NOT NULL,
  `cognome` text NOT NULL,
  `nazionalita` text NOT NULL,
  `id_scuderia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `piloti`
--

INSERT INTO `piloti` (`id_piloti`, `nome`, `cognome`, `nazionalita`, `id_scuderia`) VALUES
(1, 'Charles', 'Leclerc', 'Monegasco', 1),
(2, 'Carlos', 'Sainz Jr', 'Spagnolo', 1),
(3, 'Lewis', 'Hamilton', 'Inglese', 2),
(4, 'George ', 'Russell', 'Inglese', 2),
(5, 'Max', 'Verstappen', 'Olandese', 3),
(6, 'Sergio', 'Perez', 'Messicano', 3),
(7, 'Oscar', 'Piastri', 'Australiano', 4),
(8, 'Lando', 'Norris', 'Inglese', 4),
(9, 'Fernando ', 'Alonso', 'Spagnolo', 5),
(10, 'Lance', 'Stroll', 'Canadese', 5),
(11, 'Pierre', 'Gasly', 'Francese', 6),
(12, 'Esteban ', 'Ocon', 'Francese', 6),
(13, 'Nico ', 'Hulkenberg', 'Tedesco', 7),
(14, 'Kevin ', 'Magnussen', 'Danese', 7),
(15, 'Valtteri', 'Bottas', 'Finlandese', 8),
(16, 'Guanyu', 'Zhou', 'Cinese', 8),
(17, 'Yuki', 'Tsunoda', 'Giapponese', 9),
(18, 'Liam', 'Lawson', 'Neo zelandese', 9),
(19, 'Alexander', 'Albon', 'Thailandese', 10),
(20, 'Franco ', 'Colapinto', 'Argentino', 10),
(21, 'Daniel ', 'Ricciardo ', 'Australiano', 11),
(22, 'Logan', 'Sargeant', 'Americano', 11);

-- --------------------------------------------------------

--
-- Struttura della tabella `scuderia`
--

CREATE TABLE `scuderia` (
  `id_scuderia` int(11) NOT NULL,
  `nome` text NOT NULL,
  `citta_sede` text NOT NULL,
  `titoli` int(200) NOT NULL,
  `id_motore` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `scuderia`
--

INSERT INTO `scuderia` (`id_scuderia`, `nome`, `citta_sede`, `titoli`, `id_motore`) VALUES
(1, 'Scuderia Ferrari Hp', 'Maranello, Modena (ITA).', 31, 1),
(2, 'Mercedes-AMG Petronas\r\nFormula One Team', 'Brackley, West Northamptonshireord (ENG)', 17, 2),
(3, 'Oracle Red Bull Racing', 'Milton Keynes, Buckinghamshire (ENG)', 13, 3),
(4, 'McLaren Formula 1 Team', 'Woking, Surrey (ENG)', 20, 3),
(5, 'Aston Martin Cognizant F1 Team', 'Silverstone, Northamptonshire (ENG)', 0, 2),
(6, 'Alpine F1 Team', 'Enstone, West Oxfordshire (ENG)', 4, 4),
(7, 'MoneyGram Haas F1 Team', 'Kannapolis, Carolina del Nord (USA)', 0, 1),
(8, 'Stake F1 Team Kick Sauber', 'Hinwil, Zurigo (CHE)', 0, 1),
(9, 'Visa Cash App RB Formula One Team', 'Faenza, Ravenna (ITA)', 0, 3),
(10, 'Williams Racing', 'Grove, Oxfordshire (ENG)', 16, 2),
(11, 'Audi F1', 'Hinwil, Zurigo (CHE)', 0, 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `sessione`
--

CREATE TABLE `sessione` (
  `id_sessione` int(11) NOT NULL,
  `pilota` text NOT NULL,
  `gomma_montata` text NOT NULL,
  `posizione` varchar(20) NOT NULL,
  `tipo_sessione` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `sessione`
--

INSERT INTO `sessione` (`id_sessione`, `pilota`, `gomma_montata`, `posizione`, `tipo_sessione`) VALUES
(1, 'Leclerc', 'Rossa', '2', 'Qualifica'),
(2, 'Sainz', 'Media', '3', 'Prova uno'),
(3, 'Hamilton', 'Blu', '10', 'Gara'),
(4, 'Russell', 'Bianca', '5', 'Gara'),
(5, 'Verstappen', 'Verde', '1', 'Gara'),
(6, 'Perez', 'Rossa', '7', 'Gara'),
(7, 'Piastri', 'Gialla', '1', 'Gara'),
(8, 'Norris', 'Rossa', '1', 'Qualifica'),
(9, 'Alonso', 'Bianca', ' 15', 'Gara'),
(10, 'Stroll', 'Verde', '22', 'Gara'),
(11, 'Gasly', 'Gialla', '17', 'Prova due'),
(12, 'Ocon', 'Gialla', '6', 'Gara'),
(13, 'hulkenberg', 'Rossa', '19', 'Qualfica'),
(14, 'Magnussen', 'Blu', '7', 'Gara'),
(15, 'Bottas', 'Gialla', '16', 'Gara'),
(16, 'Zhou', 'Bianche', '18', 'Gara'),
(17, 'Tsunoda', 'Bianca', '10', 'Gara'),
(18, 'Lawson', 'Gialla', '21', 'Prova uno'),
(19, 'Albon', 'Rossa', '15', 'Gara'),
(20, 'Colapinto', 'Verde', '16', 'Gara'),
(21, 'Ricciardo', 'Gialla', '5', 'Prova due'),
(22, 'Sargeant', 'Bianca', '8', 'Prova');

-- --------------------------------------------------------

--
-- Struttura della tabella `telefono`
--

CREATE TABLE `telefono` (
  `id_scuderia` int(11) NOT NULL,
  `numero` int(12) NOT NULL,
  `id_scud` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `telefono`
--

INSERT INTO `telefono` (`id_scuderia`, `numero`, `id_scud`) VALUES
(1, 340123456, 1),
(2, 791112345, 2),
(3, 788855555, 3),
(4, 77123456, 4),
(5, 5552233, 5),
(6, 767346300, 6),
(7, 20349562, 7),
(8, 25262778, 8),
(9, 234892345, 9),
(10, 789578245, 10),
(11, 26998911, 11);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `afferisce`
--
ALTER TABLE `afferisce`
  ADD KEY `codPIL` (`id_piloti`),
  ADD KEY `codGP2` (`id_gp`);

--
-- Indici per le tabelle `comporta`
--
ALTER TABLE `comporta`
  ADD KEY `codGP` (`id_gp`),
  ADD KEY `codSES` (`id_sessione`);

--
-- Indici per le tabelle `gran_premio`
--
ALTER TABLE `gran_premio`
  ADD PRIMARY KEY (`id_gp`);

--
-- Indici per le tabelle `motore`
--
ALTER TABLE `motore`
  ADD PRIMARY KEY (`id_motore`);

--
-- Indici per le tabelle `piloti`
--
ALTER TABLE `piloti`
  ADD PRIMARY KEY (`id_piloti`),
  ADD KEY `id_scud` (`id_scuderia`);

--
-- Indici per le tabelle `scuderia`
--
ALTER TABLE `scuderia`
  ADD PRIMARY KEY (`id_scuderia`),
  ADD KEY `id_mot` (`id_motore`);

--
-- Indici per le tabelle `sessione`
--
ALTER TABLE `sessione`
  ADD PRIMARY KEY (`id_sessione`);

--
-- Indici per le tabelle `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`id_scuderia`),
  ADD KEY `id_scud2` (`id_scud`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `gran_premio`
--
ALTER TABLE `gran_premio`
  MODIFY `id_gp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT per la tabella `motore`
--
ALTER TABLE `motore`
  MODIFY `id_motore` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `piloti`
--
ALTER TABLE `piloti`
  MODIFY `id_piloti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT per la tabella `scuderia`
--
ALTER TABLE `scuderia`
  MODIFY `id_scuderia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `sessione`
--
ALTER TABLE `sessione`
  MODIFY `id_sessione` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT per la tabella `telefono`
--
ALTER TABLE `telefono`
  MODIFY `id_scuderia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `afferisce`
--
ALTER TABLE `afferisce`
  ADD CONSTRAINT `codGP2` FOREIGN KEY (`id_gp`) REFERENCES `gran_premio` (`id_gp`),
  ADD CONSTRAINT `codPIL` FOREIGN KEY (`id_piloti`) REFERENCES `piloti` (`id_piloti`);

--
-- Limiti per la tabella `comporta`
--
ALTER TABLE `comporta`
  ADD CONSTRAINT `codGP` FOREIGN KEY (`id_gp`) REFERENCES `gran_premio` (`id_gp`),
  ADD CONSTRAINT `codSES` FOREIGN KEY (`id_sessione`) REFERENCES `sessione` (`id_sessione`);

--
-- Limiti per la tabella `piloti`
--
ALTER TABLE `piloti`
  ADD CONSTRAINT `id_scud` FOREIGN KEY (`id_scuderia`) REFERENCES `scuderia` (`id_scuderia`);

--
-- Limiti per la tabella `scuderia`
--
ALTER TABLE `scuderia`
  ADD CONSTRAINT `id_mot` FOREIGN KEY (`id_motore`) REFERENCES `motore` (`id_motore`);

--
-- Limiti per la tabella `telefono`
--
ALTER TABLE `telefono`
  ADD CONSTRAINT `id_scud2` FOREIGN KEY (`id_scud`) REFERENCES `scuderia` (`id_scuderia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
