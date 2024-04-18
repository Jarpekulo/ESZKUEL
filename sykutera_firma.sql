-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2024 at 11:12 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sykutera_firma`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id_pracownika` int(11) NOT NULL,
  `imie` varchar(11) NOT NULL,
  `nazwisko` varchar(11) NOT NULL,
  `data_ur` date NOT NULL,
  `pesel` bigint(20) NOT NULL,
  `miasto` varchar(11) NOT NULL,
  `stanowisko_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pracownicy`
--

INSERT INTO `pracownicy` (`id_pracownika`, `imie`, `nazwisko`, `data_ur`, `pesel`, `miasto`, `stanowisko_id`) VALUES
(1, 'Anna', 'Nowak', '1985-04-01', 85040112345, 'Sopot', 3),
(2, 'Jan', 'Kowalski', '1975-05-01', 75050154321, 'Gdańsk', 1),
(3, 'Kaja', 'Borecka', '1980-12-24', 80122454321, 'Gdynia', 2),
(4, 'Maria', 'Borek', '1967-11-30', 69113012345, 'Gdynia', 4),
(5, 'Marian', 'Marczak', '1965-11-10', 65111098765, 'Sopot', 4),
(6, 'Kajetaan', 'Grota', '1965-01-31', 6513198765, 'Sopot', 5),
(8, 'Robert', 'Nowicki', '1985-11-01', 85110123456, 'Gdansk', 8);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stanowiska`
--

CREATE TABLE `stanowiska` (
  `id_stanowiska` int(11) NOT NULL,
  `nazwa` varchar(11) NOT NULL,
  `pensja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stanowiska`
--

INSERT INTO `stanowiska` (`id_stanowiska`, `nazwa`, `pensja`) VALUES
(1, 'kierownik', 4000),
(2, 'asystent', 3200),
(3, 'sekretarka', 2500),
(4, 'pracownik', 2800),
(5, 'kierowca', 2700),
(6, 'informatyk', 4000);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczelnia_a`
--

CREATE TABLE `uczelnia_a` (
  `id` int(11) NOT NULL,
  `imie` varchar(11) NOT NULL,
  `nazwisko` varchar(11) NOT NULL,
  `pesel` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uczelnia_a`
--

INSERT INTO `uczelnia_a` (`id`, `imie`, `nazwisko`, `pesel`) VALUES
(1, 'Jan', 'Kowalski', 1234567890),
(2, 'Adam', 'Nowak', 12345678901),
(3, 'Anna', 'Wilk', 23456789012);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczelnia_b`
--

CREATE TABLE `uczelnia_b` (
  `id` int(11) NOT NULL,
  `imie` varchar(11) NOT NULL,
  `nazwisko` varchar(11) NOT NULL,
  `pesel` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uczelnia_b`
--

INSERT INTO `uczelnia_b` (`id`, `imie`, `nazwisko`, `pesel`) VALUES
(1, 'Olga', 'Wolska', 34567890123),
(2, 'Beata', 'Nowak', 45678901234),
(3, 'Jan', 'Kowalski', 1234567890);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zapytania_sykutera`
--

CREATE TABLE `zapytania_sykutera` (
  `id` int(11) NOT NULL,
  `imie` varchar(11) NOT NULL,
  `nazwisko` varchar(11) NOT NULL,
  `placa` float NOT NULL,
  `stanowisko` varchar(11) NOT NULL,
  `pesel` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zapytania_sykutera`
--

INSERT INTO `zapytania_sykutera` (`id`, `imie`, `nazwisko`, `placa`, `stanowisko`, `pesel`) VALUES
(1, 'Adam', 'Kowalski', 1624.5, 'magazynier', 85121201234),
(2, 'Adam', 'Nowak', 3760, 'kierownik', 90010111234),
(3, 'Andrzej', 'Kowalski', 4200, 'kierownik', 82020209876),
(4, 'Arkadiusz', 'Malinowski', 1600, 'kierowca', 93110212345),
(5, 'Andrzej', 'Malinowski', 1450, 'sprzedawca', NULL),
(6, 'Krzysztof', 'Nowicki', 1610.5, 'serwisant', 92090912468),
(7, 'Kacper', 'Adamczyk', 1610.5, 'serwisant', 92090912468),
(8, 'Kamil', 'Andrzejczak', 1200, 'asystent', NULL),
(9, 'Krzysztof ', 'Arkuszewski', 1500, 'magazynier', 80123109876),
(10, 'Kamil', 'Borowski', 1600, 'sprzedawca ', 95050515432);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id_pracownika`);

--
-- Indeksy dla tabeli `stanowiska`
--
ALTER TABLE `stanowiska`
  ADD PRIMARY KEY (`id_stanowiska`);

--
-- Indeksy dla tabeli `uczelnia_a`
--
ALTER TABLE `uczelnia_a`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uczelnia_b`
--
ALTER TABLE `uczelnia_b`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zapytania_sykutera`
--
ALTER TABLE `zapytania_sykutera`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `id_pracownika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `stanowiska`
--
ALTER TABLE `stanowiska`
  MODIFY `id_stanowiska` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `uczelnia_a`
--
ALTER TABLE `uczelnia_a`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `uczelnia_b`
--
ALTER TABLE `uczelnia_b`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `zapytania_sykutera`
--
ALTER TABLE `zapytania_sykutera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
