-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2021 at 11:57 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `egzaminas`
--

-- --------------------------------------------------------

--
-- Table structure for table `autoriai`
--

CREATE TABLE `autoriai` (
  `ID` int(11) NOT NULL,
  `Vardas_Pavarde` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `autoriai`
--

INSERT INTO `autoriai` (`ID`, `Vardas_Pavarde`) VALUES
(1, 'Jonas Jonaitis'),
(2, 'Petras Petraitis');

-- --------------------------------------------------------

--
-- Table structure for table `komentarai`
--

CREATE TABLE `komentarai` (
  `ID` int(11) NOT NULL,
  `Kurso_ID` int(11) NOT NULL,
  `Tekstas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komentarai`
--

INSERT INTO `komentarai` (`ID`, `Kurso_ID`, `Tekstas`) VALUES
(1, 1, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magni, neque dignissimos?\r\nAliquid ducimus atque facere deserunt nemo enim explicabo fuga?'),
(2, 2, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magni, neque dignissimos?\r\nAliquid ducimus atque facere deserunt nemo enim explicabo fuga?');

-- --------------------------------------------------------

--
-- Table structure for table `kursai`
--

CREATE TABLE `kursai` (
  `ID` int(11) NOT NULL,
  `Pavadinimas` varchar(255) NOT NULL,
  `Trumpas_apr` varchar(200) NOT NULL,
  `Platus_apr` text NOT NULL,
  `Nuotrauka` varchar(50) DEFAULT NULL,
  `Ikelimo_data` date DEFAULT current_timestamp(),
  `Kaina` int(11) DEFAULT NULL,
  `Populiarumas` int(11) DEFAULT NULL,
  `Autorius` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kursai`
--

INSERT INTO `kursai` (`ID`, `Pavadinimas`, `Trumpas_apr`, `Platus_apr`, `Nuotrauka`, `Ikelimo_data`, `Kaina`, `Populiarumas`, `Autorius`) VALUES
(1, 'PHP pagrindai', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magni, neque dignissimos?\r\nAliquid ducimus atque facere deserunt nemo enim explicabo fuga?', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magni, neque dignissimos?\r\nAliquid ducimus atque facere deserunt nemo enim explicabo fuga?\r\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Magni, neque dignissimos?\r\nAliquid ducimus atque facere deserunt nemo enim explicabo fuga?', 'img/php.jpg', '2021-06-22', 200, 5, 1),
(2, 'HTML/CSS Ivadas', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magni, neque dignissimos?\r\nAliquid ducimus atque facere deserunt nemo enim explicabo fuga?', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magni, neque dignissimos?\r\nAliquid ducimus atque facere deserunt nemo enim explicabo fuga?\r\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Magni, neque dignissimos?\r\nAliquid ducimus atque facere deserunt nemo enim explicabo fuga?', 'img/css.jpg', '2021-06-22', 200, 3, 2),
(3, 'Pazintis su GIT', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magni, neque dignissimos?\r\nAliquid ducimus atque facere deserunt nemo enim explicabo fuga?', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magni, neque dignissimos?\r\nAliquid ducimus atque facere deserunt nemo enim explicabo fuga?\r\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Magni, neque dignissimos?\r\nAliquid ducimus atque facere deserunt nemo enim explicabo fuga?', 'img/git.jpg', '2021-06-22', 300, 9, 1),
(4, 'JavaScript Zaliems', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magni, neque dignissimos?\r\nAliquid ducimus atque facere deserunt nemo enim explicabo fuga?', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magni, neque dignissimos?\r\nAliquid ducimus atque facere deserunt nemo enim explicabo fuga?\r\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Magni, neque dignissimos?\r\nAliquid ducimus atque facere deserunt nemo enim explicabo fuga?', 'img/js.jpg', '2021-06-22', 500, 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pirkimai`
--

CREATE TABLE `pirkimai` (
  `ID` int(11) NOT NULL,
  `Kurso_ID` int(11) NOT NULL,
  `Data` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pirkimai`
--

INSERT INTO `pirkimai` (`ID`, `Kurso_ID`, `Data`) VALUES
(1, 1, '2021-06-22'),
(2, 3, '2021-06-22');

-- --------------------------------------------------------

--
-- Table structure for table `reitingai`
--

CREATE TABLE `reitingai` (
  `ID` int(11) NOT NULL,
  `Kurso_ID` int(11) NOT NULL,
  `Vertinimas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reitingai`
--

INSERT INTO `reitingai` (`ID`, `Kurso_ID`, `Vertinimas`) VALUES
(1, 1, 4),
(2, 3, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autoriai`
--
ALTER TABLE `autoriai`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `komentarai`
--
ALTER TABLE `komentarai`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Kurso_ID` (`Kurso_ID`);

--
-- Indexes for table `kursai`
--
ALTER TABLE `kursai`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Autorius` (`Autorius`);

--
-- Indexes for table `pirkimai`
--
ALTER TABLE `pirkimai`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Kurso_ID` (`Kurso_ID`);

--
-- Indexes for table `reitingai`
--
ALTER TABLE `reitingai`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Kurso_ID` (`Kurso_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autoriai`
--
ALTER TABLE `autoriai`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `komentarai`
--
ALTER TABLE `komentarai`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kursai`
--
ALTER TABLE `kursai`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pirkimai`
--
ALTER TABLE `pirkimai`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reitingai`
--
ALTER TABLE `reitingai`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komentarai`
--
ALTER TABLE `komentarai`
  ADD CONSTRAINT `komentarai_ibfk_1` FOREIGN KEY (`Kurso_ID`) REFERENCES `kursai` (`ID`);

--
-- Constraints for table `kursai`
--
ALTER TABLE `kursai`
  ADD CONSTRAINT `kursai_ibfk_1` FOREIGN KEY (`Autorius`) REFERENCES `autoriai` (`ID`);

--
-- Constraints for table `pirkimai`
--
ALTER TABLE `pirkimai`
  ADD CONSTRAINT `pirkimai_ibfk_1` FOREIGN KEY (`Kurso_ID`) REFERENCES `kursai` (`ID`);

--
-- Constraints for table `reitingai`
--
ALTER TABLE `reitingai`
  ADD CONSTRAINT `reitingai_ibfk_1` FOREIGN KEY (`Kurso_ID`) REFERENCES `kursai` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
