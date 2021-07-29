-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16-Mar-2021 às 20:02
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `talkmessenger`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `chat`
--

CREATE TABLE `chat` (
  `Id` int(11) NOT NULL,
  `Sender` int(11) NOT NULL,
  `Reciever` int(11) NOT NULL,
  `Message` varchar(500) NOT NULL,
  `Image` varchar(1000) NOT NULL,
  `Creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `chat`
--

INSERT INTO `chat` (`Id`, `Sender`, `Reciever`, `Message`, `Image`, `Creation`) VALUES
(1, 2, 1, 'OlÃ¡', '', '2021-03-16 18:53:47'),
(2, 1, 2, 'Tudo bem?', '', '2021-03-16 18:54:07'),
(3, 2, 1, 'tudo sim!', '', '2021-03-16 18:54:19'),
(4, 1, 2, '', 'Admin_MESSAGE_798907empty-inbox.png', '2021-03-16 18:54:31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `conversations`
--

CREATE TABLE `conversations` (
  `Id` int(11) NOT NULL,
  `MainUser` int(11) NOT NULL,
  `OtherUser` int(11) NOT NULL,
  `Unread` varchar(1) NOT NULL DEFAULT 'n',
  `Modification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `conversations`
--

INSERT INTO `conversations` (`Id`, `MainUser`, `OtherUser`, `Unread`, `Modification`, `Creation`) VALUES
(1, 2, 1, 'n', '2021-03-16 18:53:47', '2021-03-16 18:53:47'),
(2, 1, 2, 'n', '2021-03-16 18:53:47', '2021-03-16 18:53:47');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `Username` varchar(15) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(70) NOT NULL,
  `Picture` varchar(1000) NOT NULL DEFAULT 'user.jpg',
  `Online` datetime NOT NULL,
  `Token` varchar(100) NOT NULL,
  `Secure` bigint(11) NOT NULL,
  `Creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`Id`, `Username`, `Email`, `Password`, `Picture`, `Online`, `Token`, `Secure`, `Creation`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$nxtDwHit0Tp79ngYFpDM2u2U6X1Fg5qikQvv9ZyxACGWrbAq3.9eu', 'Admin_675617empty-inbox.png', '2021-03-16 19:01:49', 'f287d4fa24f9108d6a47975eb80f43bcd01c2671', 1033988575, '2021-03-16 18:51:05'),
(2, 'teste', 'teste@teste.com', '$2y$10$4MaA3B71swHdRccgacieqO9sEZlXBkiPh.SenpSbyZj9vkBFL/KZu', 'user.jpg', '2021-03-16 18:55:11', '00b28ddbbbc4796e6e223b9f2a9776f650eec1ec', 1271095182, '2021-03-16 18:53:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
