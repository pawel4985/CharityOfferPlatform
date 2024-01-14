-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2023 at 10:01 AM
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
-- Database: `charity`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(30) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `password`) VALUES
(2, 'k.januszewski2009@gmail.com', '$2y$10$vCCb0cbXnAltuz57yCTGe.4ZNoIjxYhcUt8Gbxa1EEpapz2vMrlxa'),
(3, 'pawel14021@wp.pl', '$2y$10$zRcgY1ZIkjyA54koB3aEoOhGgWnEju6XF0rfbsGYbT7L9p3cAGwu.'),
(4, 'admin@admin.pl', '$2y$10$0wxR0oSZR2M2fXA/Wpe.N.hteJWwxR7XTAwxmcTmL7on1mXGritea')
;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

























-- Tworzenie bazy danych
CREATE DATABASE IF NOT EXISTS charity;

-- Używanie stworzonej bazy danych
USE charity;

-- Tworzenie tabeli announcements
CREATE TABLE IF NOT EXISTS announcements (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    location VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    date DATE NOT NULL,
    time TIME NOT NULL,
    userid INT(11) NOT NULL,
    img TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    description TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    FOREIGN KEY (userid) REFERENCES users(id)
);

-- Tworzenie tabeli users
CREATE TABLE IF NOT EXISTS users (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    login VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Dodawanie danych do tabeli users
INSERT INTO users (id, login, password) VALUES
(2, 'k.januszewski2009@gmail.com', '$2y$10$vCCb0cbXnAltuz57yCTGe.4ZNoIjxYhcUt8Gbxa1EEp...'),
(3, 'pawel14021@wp.pl', '$2y$10$zRcgY1ZIkjyA54koB3aEoOhGgWnEju6XF0rfbsGYbT7...'),
(4, 'admin@admin.pl', '$2y$10$0wxR0oSZR2M2fXA/Wpe.N.hteJWwxR7XTAwxmcTmL7o...');

-- Dodawanie danych do tabeli announcements
INSERT INTO announcements (id, title, price, location, date, time, userid, img, description) VALUES
(1, 'Bluzka nike', 20.49, 'Bydgoszcz', '2024-01-04', '15:37:24', 2, 'house.jpg', 'szerokość pod pachami 60 cm x 2 długość 75 cm, baw...'),
(2, 'Spodnie adidas', 39.99, 'Warszawa', '2024-01-05', '12:45:30', 2, 'pants.jpg', 'szerokość pod pachami 60 cm x 2 długość 75 cm, baw...'),
(4, 'Koszulka Reebok', 29.99, 'Gdańsk', '2024-01-07', '18:10:45', 2, 'shirt.jpg', 'szerokość pod pachami 60 cm x 2 długość 75 cm, baw...'),
(5, 'Bluzka nike', 20.49, 'Bydgoszcz', '2024-01-04', '15:37:24', 3, 'house.jpg', 'szerokość pod pachami 60 cm x 2 długość 75 cm, baw...'),
(10, 'Smartwatch Apple Watch Series 6', 799.99, 'Warszawa', '2024-01-05', '10:45:00', 3, 'watch.jpg', 'Nowy smartwatch od Apple, kolor: Space Gray, GPS, ...'),
(11, 'Laptop Dell XPS 13', 3499.99, 'Kraków', '2024-01-06', '14:20:30', 2, 'laptop.jpg', 'Laptop Dell XPS 13 z procesorem Intel i7, 16 GB RA...'),
(12, 'Rowerek biegowy dla dzieci', 129.99, 'Poznań', '2024-01-07', '16:10:15', 4, 'bike.jpg', 'Rowerek biegowy dla dzieci od 2 do 5 lat, regulowa...'),
(13, 'Konsola do gier PlayStation 5', 2299.99, 'Gdańsk', '2024-01-08', '18:05:45', 2, 'ps5.webp', 'Nowa generacja konsoli PlayStation 5, dysk SSD 825...');
