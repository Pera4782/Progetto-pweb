-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Set 08, 2025 alle 19:23
-- Versione del server: 5.7.28
-- Versione PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peruzzi_672602`
--
CREATE DATABASE IF NOT EXISTS `peruzzi_672602` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `peruzzi_672602`;

-- --------------------------------------------------------

--
-- Struttura della tabella `games`
--

DROP TABLE IF EXISTS `games`;
CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `white_player` varchar(10) NOT NULL,
  `black_player` varchar(10) NOT NULL,
  `mode` int(11) NOT NULL DEFAULT '0',
  `winner` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `games`
--

INSERT INTO `games` (`id`, `white_player`, `black_player`, `mode`, `winner`) VALUES
(38, 'mario', 'marco', 1, 'white'),
(39, 'giovanni', 'tommaso', 2, 'white'),
(40, 'mario', 'francesco', 0, 'white'),
(41, 'marco', 'francesco', 1, 'white'),
(42, 'lorenzo', 'giovanni', 1, 'white');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(10) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `elo` int(11) DEFAULT '800'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`username`, `password`, `elo`) VALUES
('DELETED', '11111', -1),
('francesco', '$2y$10$unkGs5dgHdmUQYA2/gwcNOoESuY98lYNmn.YwCx50Tir7.zQT4ytG', 780),
('giovanni', '$2y$10$yBTvNpyX9Io4C5Zsqp1XrOMA7P1W8HqCH5115uOlz6.6rbUP1VJg6', 800),
('lorenzo', '$2y$10$Li6r6uTmUMTcjuehAQQJ8OUWXDwFWNGdbVJLLPNT/.b9aiQUhg1re', 810),
('marco', '$2y$10$XYqaVPyF7Y5udBeXHtRSNeciVlB4ERMO1iXjwaVZd2nAQxb9fJv/e', 800),
('mario', '$2y$10$TqoNbiadiFyK6pC.mEP18O7ZnB1V25VDQN8eHNhteplv7f4k/J.U.', 820),
('tommaso', '$2y$10$BG3YXw0oVEkBMri/41.ajOCoLKWBF7traqIsGBomp6kDDtFs7vc9q', 790);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD KEY `white_player` (`white_player`),
  ADD KEY `black_player` (`black_player`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `Games_ibfk_1` FOREIGN KEY (`white_player`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `Games_ibfk_2` FOREIGN KEY (`black_player`) REFERENCES `users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
