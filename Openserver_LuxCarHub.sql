-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 12 2023 г., 01:15
-- Версия сервера: 8.0.29
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `luxcarhub`
--

-- --------------------------------------------------------

--
-- Структура таблицы `car`
--

CREATE TABLE `car` (
  `CarID` int NOT NULL,
  `Brand` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `Model` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `Year` int NOT NULL,
  `DailyRentalRate` varchar(45) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `car`
--

INSERT INTO `car` (`CarID`, `Brand`, `Model`, `Year`, `DailyRentalRate`) VALUES
(1, 'Lamborghini', ' Aventador S', 2021, '200 000 руб/сутки'),
(2, 'Rolls Royce ', 'Dawn', 2022, '120 000 руб/сутки'),
(3, 'Ferrari', ' F8 Tributo Spider', 2023, '140 000 руб/сутки'),
(4, 'Lamborghini', 'Urus Pearl Capsule', 2023, '90 000руб/сутки'),
(5, 'Lamborghini ', 'Huracan EVO', 2022, '120 000руб/сутки'),
(6, 'Rolls- Royce ', 'Cullinan Black Badge', 2021, '120 000руб/сутки'),
(7, 'Rolls- Royce ', 'Wraith Nardo Grey', 2021, 'Wraith Nardo Grey'),
(8, 'Rolls- Royce ', 'Wraith Nardo Grey', 2021, 'Wraith Nardo Grey'),
(9, 'Mercedes ', 'G-class AMG 63', 2022, '70 000руб/сутки'),
(10, 'Mercedes ', 'G-class AMG 63', 2022, '70 000руб/сутки'),
(11, 'Ferrari ', 'Portofino', 2023, '85 000руб/сутки'),
(12, 'Ferrari ', 'Portofino', 2023, '85 000руб/сутки'),
(15, 'Lamborghini ', 'Urus', 2022, '80 000руб/сутки'),
(16, 'Lamborghini ', 'Urus', 2022, '80 000руб/сутки'),
(17, 'Audi ', 'R8', 2021, '55 000руб/сутки'),
(18, 'Audi ', 'R8', 2021, '55 000руб/сутки'),
(19, 'Porsche ', '911 (992) Turbo S', 2022, '80 000руб/сутки'),
(20, 'Porsche ', '911 (992) Turbo S', 2022, '80 000руб/сутки'),
(21, 'BMW', ' M5 CS', 2023, '90 000руб/сутки'),
(22, 'BMW', ' M5 CS', 2023, '90 000руб/сутки'),
(23, 'Lamborghini ', 'Huracan Spyder', 2022, '100 000 руб/сутки'),
(24, 'Lamborghini ', 'Huracan Spyder', 2022, '100 000 руб/сутки'),
(25, 'Bentley ', 'Continental GT 3 First Edition', 2023, '59 000руб/сутки'),
(26, 'Bentley ', 'Continental GT 3 First Edition', 2023, '59 000руб/сутки'),
(27, 'McLaren', '720s', 2021, '120 000руб/сутки'),
(28, 'McLaren', '720s', 2021, '120 000руб/сутки'),
(29, 'Chevrolet ', 'Corvette C8', 2022, '70 000руб/сутки'),
(30, 'Chevrolet ', 'Corvette C8', 2022, '70 000руб/сутки'),
(31, 'Aston ', 'Martin Vantage', 2022, '55 000руб/сутки'),
(32, 'Aston ', 'Martin Vantage', 2022, '55 000руб/сутки'),
(33, 'Porsche ', 'Cayenne Coupe Turbo', 2023, '30 000руб/сутки'),
(34, 'Porsche ', 'Cayenne Coupe Turbo', 2023, '30 000руб/сутки'),
(35, 'Zeekr ', '001 Z-Sport', 2023, '35 000руб/сутки'),
(36, 'Zeekr ', '001 Z-Sport', 2023, '35 000руб/сутки'),
(37, 'Lixiang ', 'Li Auto L9', 2023, '25 000руб/сутки'),
(38, 'Lixiang ', 'Li Auto L9', 2023, '25 000руб/сутки'),
(39, 'Zeekr ', '001', 2023, '24 000руб/сутки'),
(40, 'Zeekr ', '001', 2023, '24 000руб/сутки'),
(41, 'Tesla ', 'Model X', 2022, '35 000руб/сутки'),
(42, 'Tesla ', 'Model X', 2022, '35 000руб/сутки'),
(43, 'Mercedes- Benz ', 'E63S AMG', 2022, '40 000руб/сутки'),
(44, 'Mercedes- Benz ', 'E63S AMG', 2022, '40 000руб/сутки'),
(45, 'Mercedes-Benz ', 'AMG GT 63s four door', 2023, '45 000руб/сутки'),
(46, 'Mercedes-Benz ', 'AMG GT 63s four door', 2023, '45 000руб/сутки'),
(47, 'BMW ', 'X5M Competition', 2022, '35 000руб/сутки'),
(48, 'BMW ', 'X5M Competition', 2022, '35 000руб/сутки'),
(49, 'Porsсhe ', '911 (992) Carrera Cabriolet 2021', 2021, '55 000руб/сутки'),
(50, 'Porsсhe ', '911 (992) Carrera Cabriolet 2021', 2021, '55 000руб/сутки'),
(51, 'Porsche ', 'Taycan Turbo', 2022, '52 000руб/сутки'),
(52, 'Porsche ', 'Taycan Turbo', 2022, '52 000руб/сутки'),
(53, 'BMW ', 'X6M Competition', 2022, '39 000руб/сутки'),
(54, 'BMW ', 'X6M Competition', 2022, '39 000руб/сутки'),
(55, 'Mercedes ', 'GLE 63S AMG', 2021, '40 000руб/сутки'),
(56, 'Mercedes ', 'GLE 63S AMG', 2021, '40 000руб/сутки'),
(57, 'BMW ', 'M850 i Cabrio', 2022, '55 000руб/сутки'),
(58, 'BMW ', 'M850 i Cabrio', 2022, '55 000руб/сутки'),
(59, 'BMW ', 'X7 Lci xDrive 40d', 2023, '32 000руб/сутки'),
(60, 'BMW ', 'X7 Lci xDrive 40d', 2023, '32 000руб/сутки'),
(61, 'Audi ', 'RS6', 2023, '40 000руб/сутки'),
(62, 'Audi ', 'RS6', 2023, '40 000руб/сутки'),
(63, 'Porsche ', 'Panamera Turbo', 2022, '30 000руб/сутки'),
(64, 'Porsche ', 'Panamera Turbo', 2022, '30 000руб/сутки'),
(65, 'Range Rover ', 'Autobiography Long', 2023, '28 000руб/сутки'),
(66, 'Range Rover ', 'Autobiography Long', 2023, '28 000руб/сутки'),
(67, 'Cadillac ', 'Escalade', 2023, '39 000руб/сутки'),
(68, 'Cadillac ', 'Escalade', 2023, '39 000руб/сутки'),
(69, 'Mercedes Benz ', 'GLS', 2023, '25 000руб/сутки'),
(70, 'Mercedes Benz ', 'GLS', 2023, '25 000руб/сутки'),
(71, 'Nissan ', 'GT-R restyling 3', 2022, '39 000руб/сутки'),
(72, 'Nissan ', 'GT-R restyling 3', 2022, '39 000руб/сутки'),
(73, 'Chevrolet ', 'Camaro', 2022, '20 000руб/сутки'),
(74, 'Chevrolet ', 'Camaro', 2022, '20 000руб/сутки'),
(75, 'Jaguar ', 'F-type Cabrio', 2022, '20 000руб/сутки'),
(76, 'Jaguar ', 'F-type Cabrio', 2022, '20 000руб/сутки'),
(77, 'Ford ', 'Mustang', 2021, '20 000руб/сутки'),
(78, 'Ford ', 'Mustang', 2021, '20 000руб/сутки'),
(79, 'Mercedes-Benz ', 'S600 W223', 2023, '35 000руб/сутки'),
(80, 'Mercedes-Benz ', 'S600 W223', 2023, '35 000руб/сутки');

-- --------------------------------------------------------

--
-- Структура таблицы `rating`
--

CREATE TABLE `rating` (
  `RatingID` int NOT NULL,
  `UserID` int NOT NULL,
  `CarID` int NOT NULL,
  `RatingValue` int NOT NULL,
  `Review` varchar(300) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `rating`
--

INSERT INTO `rating` (`RatingID`, `UserID`, `CarID`, `RatingValue`, `Review`) VALUES
(1, 2, 31, 5, 'Тачка бомба, мчит дай боже');

-- --------------------------------------------------------

--
-- Структура таблицы `reservation`
--

CREATE TABLE `reservation` (
  `ReservationID` int NOT NULL,
  `UserID` int NOT NULL,
  `CarID` int NOT NULL,
  `StartDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `EndDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `reservation`
--

INSERT INTO `reservation` (`ReservationID`, `UserID`, `CarID`, `StartDate`, `EndDate`) VALUES
(1, 2, 8, '2023-10-19 01:12:02', '2023-10-20 01:12:02');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `UserId` int NOT NULL,
  `FirstName` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `LastName` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `Email` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `Password` varchar(45) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`UserId`, `FirstName`, `LastName`, `Email`, `Password`) VALUES
(1, 'Artem', 'Cheloguzov', 'Chel@mail.ru', 'admin'),
(2, 'Roman', 'Apykhtin', 'roma.apykhtin@mail.ru', 'admin2'),
(3, 'Alexey', 'Kozlov', 'lexa_boy@mail.ru', 'admin3');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`CarID`);

--
-- Индексы таблицы `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`RatingID`),
  ADD KEY `CarID` (`CarID`),
  ADD KEY `UserID` (`UserID`);

--
-- Индексы таблицы `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`ReservationID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `CarID` (`CarID`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `car`
--
ALTER TABLE `car`
  MODIFY `CarID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT для таблицы `rating`
--
ALTER TABLE `rating`
  MODIFY `RatingID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `reservation`
--
ALTER TABLE `reservation`
  MODIFY `ReservationID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `UserId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`CarID`) REFERENCES `car` (`CarID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`CarID`) REFERENCES `car` (`CarID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
