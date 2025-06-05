-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2025 at 06:27 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `geoplanner_bd`
--

-- --------------------------------------------------------

--
-- Table structure for table `tareas`
--

CREATE TABLE `tareas` (
  `Id_task` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Latitud_or` decimal(10,7) NOT NULL,
  `Longitud_or` decimal(10,7) NOT NULL,
  `Latitud_des` decimal(10,7) NOT NULL,
  `Longitud_des` decimal(10,7) NOT NULL,
  `Fecha_ex` date NOT NULL,
  `Hora_ex` time DEFAULT NULL,
  `Descripcion` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tareas`
--

INSERT INTO `tareas` (`Id_task`, `id_users`, `Nombre`, `Latitud_or`, `Longitud_or`, `Latitud_des`, `Longitud_des`, `Fecha_ex`, `Hora_ex`, `Descripcion`) VALUES
(1, 1, 'casita', 12.3456000, 78.9100000, 45.4540000, 33.3333330, '2025-04-12', '14:00:00', 'mi mama'),
(5, 1, 'hola', 10.6990266, -71.6367388, 10.6935867, -71.6277695, '2025-04-02', '22:00:00', 'hola ');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id_users` int(11) NOT NULL,
  `Usuario` varchar(25) NOT NULL,
  `Contrasena` varchar(25) NOT NULL,
  `latitud` decimal(10,7) DEFAULT NULL,
  `longitud` decimal(10,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id_users`, `Usuario`, `Contrasena`, `latitud`, `longitud`) VALUES
(1, 'valeriav', 'v123', NULL, NULL),
(2, 'valeriasocorro', 'vv123', NULL, NULL),
(3, 'valentina', 'v123', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`Id_task`),
  ADD KEY `id_users` (`id_users`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tareas`
--
ALTER TABLE `tareas`
  MODIFY `Id_task` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tareas`
--
ALTER TABLE `tareas`
  ADD CONSTRAINT `tareas_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `usuarios` (`id_users`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
