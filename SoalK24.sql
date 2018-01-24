-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 23, 2018 at 09:02 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `SoalK24`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_member`
--

CREATE TABLE IF NOT EXISTS "data_member" (
  "kode_member" int(5) NOT NULL,
  "Nama" varchar(100) NOT NULL,
  "Alamat" varchar(200) NOT NULL,
  "Tanggal Lahir" date NOT NULL,
  "Email" varchar(50) NOT NULL,
  "No_Tlp" varchar(15) NOT NULL,
  PRIMARY KEY ("kode_member")
) AUTO_INCREMENT=2 ;

--
-- Dumping data for table `data_member`
--

INSERT INTO `data_member` (`kode_member`, `Nama`, `Alamat`, `Tanggal Lahir`, `Email`, `No_Tlp`) VALUES
(1, 'fani', 'Balirejo UH II/ 527', '1990-10-16', 'fannywidiastuti@gmail.com', '085643812408');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS "user" (
  "kode_user" int(5) NOT NULL,
  "nama_user" varchar(20) NOT NULL,
  "password" varchar(30) NOT NULL,
  PRIMARY KEY ("kode_user")
) AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`kode_user`, `nama_user`, `password`) VALUES
(1, 'fani', 'special1004');
