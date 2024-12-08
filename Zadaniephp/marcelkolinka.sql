-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2024 at 06:51 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marcelkolinka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane_kontrahentow`
--

CREATE TABLE `dane_kontrahentow` (
  `NIP` int(255) NOT NULL,
  `REGON` int(255) NOT NULL,
  `NAZWA` varchar(255) NOT NULL,
  `CZY_PŁATNIK_VAT?` tinyint(1) NOT NULL,
  `ULICA` varchar(255) NOT NULL,
  `NUMER_DOMU` int(255) NOT NULL,
  `NUMER_MIESZKANIA` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dane_kontrahentow`
--

INSERT INTO `dane_kontrahentow` (`NIP`, `REGON`, `NAZWA`, `CZY_PŁATNIK_VAT?`, `ULICA`, `NUMER_DOMU`, `NUMER_MIESZKANIA`) VALUES
(2134, 123123, 'maliny', 1, 'werwer', 12, 123),
(223423, 123123, 'safsadf', 1, 'sadfsdf', 234234, 234234),
(1234567891, 123456789, 'Apple', 1, 'Jabłkowskiego', 14, 1),
(1987654321, 987654321, 'Samsung', 0, 'Wyszyńskiego', 12, 4),
(2147483647, 789654321, 'Tesla', 0, 'Tesli', 5, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `delegacje_bd`
--

CREATE TABLE `delegacje_bd` (
  `Lp` int(11) NOT NULL,
  `Imię i Nazwisko` varchar(255) NOT NULL,
  `Data od` date NOT NULL,
  `Data do` date NOT NULL,
  `Miejsce wyjazdu` varchar(255) NOT NULL,
  `Miejsce przyjazdu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delegacje_bd`
--

INSERT INTO `delegacje_bd` (`Lp`, `Imię i Nazwisko`, `Data od`, `Data do`, `Miejsce wyjazdu`, `Miejsce przyjazdu`) VALUES
(1, 'Marcel Kolinka', '2024-07-09', '2024-07-16', 'Kalisz', 'Poznań'),
(2, 'Jan Kowalski', '2023-07-09', '2023-07-16', 'Radom', 'Warszawa'),
(3, 'Anna Nowak', '2023-04-03', '2023-04-10', 'Berlin', 'Kraków'),
(4, 'Maria Wiśniewska', '2020-08-13', '2020-08-19', 'Koszalin', 'Gdańsk'),
(5, 'Piotr Zieliński', '2021-11-25', '2021-11-30', 'Wrocław', 'Warszawa'),
(6, 'Jacek Malinowski', '2022-05-05', '2022-05-15', 'Białystok', 'Rzeszów');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dane_kontrahentow`
--
ALTER TABLE `dane_kontrahentow`
  ADD PRIMARY KEY (`NIP`);

--
-- Indeksy dla tabeli `delegacje_bd`
--
ALTER TABLE `delegacje_bd`
  ADD PRIMARY KEY (`Lp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
