-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 23 Lut 2024, 11:39
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `waleka_hurtownia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `alfa`
--

CREATE TABLE `alfa` (
  `Litera` varchar(20) DEFAULT NULL,
  `Liczba` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `alfa`
--

INSERT INTO `alfa` (`Litera`, `Liczba`) VALUES
('A', 10),
('B', 20),
('C', 25);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `beta`
--

CREATE TABLE `beta` (
  `Liczba` int(11) DEFAULT NULL,
  `InnaLiczba` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `beta`
--

INSERT INTO `beta` (`Liczba`, `InnaLiczba`) VALUES
(20, 30),
(20, 18),
(25, 30),
(27, 38),
(20, -5),
(10, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `id` int(11) NOT NULL,
  `imie` varchar(30) NOT NULL,
  `nazwisko` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`id`, `imie`, `nazwisko`) VALUES
(1, 'Jan', 'Kowalski'),
(2, 'Andrzej', 'Nowak'),
(3, 'Janusz', 'Malinowski'),
(4, 'Adam', 'Kowalski'),
(5, 'Krzysztof', 'Nowicki'),
(6, 'Leon', 'Tomys');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `towary`
--

CREATE TABLE `towary` (
  `id` int(11) NOT NULL,
  `Nazwa` varchar(30) NOT NULL,
  `grupa` int(11) NOT NULL,
  `cena` float(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `towary`
--

INSERT INTO `towary` (`id`, `Nazwa`, `grupa`, `cena`) VALUES
(1, 'śruby', 1, 2),
(2, 'nakrętki', 1, 3),
(3, 'kątowniki', 2, 8),
(4, 'plaskowniki', 2, 9),
(5, 'gwoździe', 1, 1),
(6, 'panele', 3, 15),
(7, 'wkręty', 1, 4),
(8, 'deski', 3, 12),
(9, 'płyty', 3, 19);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id` int(11) NOT NULL,
  `klient_id` int(11) NOT NULL,
  `towar_id` int(11) NOT NULL,
  `data` date NOT NULL,
  `wartosc` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id`, `klient_id`, `towar_id`, `data`, `wartosc`) VALUES
(1, 1, 2, '2018-01-01', 12.44),
(2, 1, 4, '2018-01-01', 14.88),
(3, 1, 2, '2018-02-12', 15.9),
(4, 2, 1, '2018-01-01', 22.35),
(5, 2, 1, '2018-02-12', 28),
(6, 2, 4, '2018-03-01', 2.59),
(7, 3, 1, '2018-02-11', 18),
(8, 3, 4, '2018-01-01', 12.44),
(9, 4, 1, '2018-03-11', 15.26),
(10, 5, 4, '2018-03-02', 6.25);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zam_tymczas`
--

CREATE TABLE `zam_tymczas` (
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(30) DEFAULT NULL,
  `wartosc` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `zam_tymczas`
--

INSERT INTO `zam_tymczas` (`imie`, `nazwisko`, `wartosc`) VALUES
('Jan', 'Kowalski', '12.44'),
('Jan', 'Kowalski', '14.88'),
('Jan', 'Kowalski', '15.90'),
('Andrzej', 'Nowak', '22.35'),
('Andrzej', 'Nowak', '28.00'),
('Andrzej', 'Nowak', '2.59'),
('Janusz', 'Malinowski', '18.00'),
('Janusz', 'Malinowski', '12.44'),
('Adam', 'Kowalski', '15.26'),
('Krzysztof', 'Nowicki', '6.25'),
('Jan', 'Kowalski', '12.44'),
('Jan', 'Kowalski', '14.88'),
('Jan', 'Kowalski', '15.90'),
('Andrzej', 'Nowak', '22.35'),
('Andrzej', 'Nowak', '28.00'),
('Andrzej', 'Nowak', '2.59'),
('Janusz', 'Malinowski', '18.00'),
('Janusz', 'Malinowski', '12.44'),
('Adam', 'Kowalski', '15.26'),
('Krzysztof', 'Nowicki', '6.25');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zam_tymczas2`
--

CREATE TABLE `zam_tymczas2` (
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(30) DEFAULT NULL,
  `wartosc` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `zam_tymczas2`
--

INSERT INTO `zam_tymczas2` (`imie`, `nazwisko`, `wartosc`) VALUES
('Jan', 'Kowalski', '43.22'),
('Andrzej', 'Nowak', '52.94'),
('Janusz', 'Malinowski', '30.44'),
('Adam', 'Kowalski', '15.26'),
('Krzysztof', 'Nowicki', '6.25');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zam_tymczas3`
--

CREATE TABLE `zam_tymczas3` (
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(30) DEFAULT NULL,
  `wartosc` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `zam_tymczas3`
--

INSERT INTO `zam_tymczas3` (`imie`, `nazwisko`, `wartosc`) VALUES
('Jan', 'Kowalski', '14.88'),
('Jan', 'Kowalski', '15.90'),
('Andrzej', 'Nowak', '22.35'),
('Andrzej', 'Nowak', '28.00'),
('Janusz', 'Malinowski', '18.00'),
('Adam', 'Kowalski', '15.26');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `towary`
--
ALTER TABLE `towary`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
