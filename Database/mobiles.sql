-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2024 at 05:44 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobiles`
--
CREATE DATABASE IF NOT EXISTS `mobiles` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mobiles`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cid` int(11) NOT NULL,
  `company` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  `quantity` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `tot_price` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `com_id` int(4) NOT NULL,
  `com_date` varchar(15) NOT NULL,
  `com_desc` longtext NOT NULL,
  `com_unm` varchar(30) NOT NULL,
  `com_pid` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `comment`
--

INSERT DELAYED IGNORE INTO `comment` (`com_id`, `com_date`, `com_desc`, `com_unm`, `com_pid`) VALUES
(1, '20/08/18', 'sr et', 'himanshu', 16);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `company`
--

INSERT DELAYED IGNORE INTO `company` (`id`, `company`) VALUES
(1, 'Samsung'),
(2, 'Apple'),
(7, 'Asus'),
(8, 'OnePlus'),
(9, 'Redmi'),
(10, 'Realme'),
(11, 'iQOO');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(40) NOT NULL,
  `c_email` varchar(40) NOT NULL,
  `c_query` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT DELAYED IGNORE INTO `contact` (`c_id`, `c_name`, `c_email`, `c_query`) VALUES
(1, 'Vansh Makvana', 'vanshmakvana11@gmail.com', 'Hello'),
(2, 'Vikas', 'vikas@gmail.com', 'Good Shop');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `cid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `model` varchar(30) NOT NULL,
  `description` longtext NOT NULL,
  `display` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT DELAYED IGNORE INTO `product` (`cid`, `id`, `model`, `description`, `display`, `color`, `price`, `img`, `rate`) VALUES
(2, 67, 'Apple iPhone 13', 'ROM: 128GB,\r\nA15 Bionic Chip Processor', 'Super Retina XDR Display', 'Starlight', 51699, 'Apple iPhone 13.jpg', 0),
(2, 17, 'Apple iPhone 12', 'ROM: 64GB,\r\nIP68 Water Resistance,\r\n4K Dolby Vision HDR Recording,\r\nCeramic shield,\r\nA14 Bionic Chip With Next Generation\r\n', 'Super Retina XDR OLED Display', 'White', 49999, 'Apple iPhone 12.jpg', 1),
(8, 38, 'OnePlus 12R', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 8 Gen 2 Processor', 'ProXDR Display', 'Cool Blue', 39899, 'OnePlus 12R 5G.jpg', 0),
(2, 19, 'Apple iPhone 14 Plus', 'ROM: 512GB,\r\nA15 Bionic Chip Processor,\r\n6 Core Processors', 'Super Retina XDR Display', 'Midnight', 88999, 'Apple iPhone 14 Plus.jpg', 0),
(2, 20, 'Apple iPhone 14', 'ROM: 512GB,\r\nA15 Bionic Chip Processor,\r\n6 Core Processors', 'Super Retina XDR Display', 'Starlight', 83899, 'Apple iPhone 14.jpg', 0),
(2, 21, 'Apple iPhone 15 Plus', 'ROM: 128GB,\r\nA16 Bionic Chip Processor,\r\n6 Core Processors', 'Super Retina XDR Display', 'Blue', 80999, 'Apple iPhone 15 Plus.jpg', 0),
(2, 22, 'Apple iPhone 15 Pro Max', 'ROM: 256GB,\r\nA17 Pro Chip Processor,\r\n6 Core Processors', 'Super Retina XDR Display', 'Blue Titanium', 146799, 'Apple iPhone 15 Pro Max.jpg', 0),
(2, 23, 'Apple iPhone 15 Pro', 'ROM: 128GB,\r\nGame-Changing A17 Chip Processor', 'Super Retina XDR display', 'White Titanium', 133799, 'Apple iPhone 15 Pro.jpg', 0),
(2, 24, 'Apple iPhone 15', 'ROM: 128GB,\r\nA16 Bionic Chip Processor,\r\n6 Core Processors', 'Super Retina XDR Display', 'Black', 71699, 'Apple iPhone 15.jpg', 0),
(11, 26, 'iQOO 7 Legend', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 888 Processor', 'AMOLED Display', 'Legendary Track Design', 39599, 'iQOO Neo 7 Legend 5G.jpg', 0),
(11, 27, 'iQOO Neo 9 Pro', 'RAM: 8GB,\r\nROM: 256GB,\r\nSnapdragon 8 Gen 2 Processor', 'AMOLED Display', 'Fiery Red', 36899, 'iQOO Neo 9 Pro 5G.jpg', 0),
(11, 28, 'iQOO 12', 'RAM: 12GB,\r\nROM: 256GB,\r\nSnapdragon 8 gen 3 Processor\r\n', 'AMOLED Display', 'Legend', 52699, 'iQOO Neo 12 5G.jpg', 0),
(11, 29, 'iQOO Z6 Lite', 'RAM: 6GB,\r\nROM: 128GB,\r\nSnapdragon 4 Gen 1 Processor', 'FHD+ Display', 'Stellar Green', 11899, 'iQOO Neo Z6 Lite 5G.jpg', 0),
(11, 30, 'iQOO Z7 Pro', 'RAM: 8GB,\r\nROM: 256GB,\r\nMediaTek 7200 5G 4nm Processor', '3D Curved AMOLED Display', 'Blue Lagoon', 23699, 'iQOO Neo Z7 Pro 5G.jpg', 0),
(11, 31, 'iQOO Neo 7', 'RAM: 12GB,\r\nROM: 256GB,\r\nDimensity 8200 4nm Processor', 'AMOLED Display', 'Frost Blue', 27899, 'iQOO Neo 7 5G.jpg', 0),
(8, 32, 'OnePlus 9 5G', 'RAM: 12GB,\r\nROM: 256GB,\r\nSnapdragon 7 Gen 1 Processor', 'AMOLED Display', 'Winter Mist', 27899, 'OnePlus 9 5G.jpg', 0),
(8, 33, 'OnePlus 9 Pro', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 8 Processor', 'AMOLED Display', 'Morning Mist', 33799, 'OnePlus 9 Pro 5G.jpg', 0),
(8, 34, 'OnePlus 9R', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 7 Processor', 'AMOLED Display', 'cARBON bLACK', 22699, 'OnePlus 9R 5G.jpg', 0),
(8, 35, 'OnePlus 10 Pro', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 8 Gen 1 Processor', 'AMOLED Display', 'Volcanic Black', 38889, 'OnePlus 10 Pro 5G.jpg', 0),
(8, 36, 'OnePlus 10R', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 8+ Processor', 'AMOLED Display', 'Forest Green', 23699, 'OnePlus 10R 5G.jpg', 0),
(8, 37, 'OnePlus 11R', 'RAM: 16GB,\r\nROM: 256GB,\r\nSnapdragon 8+ Gen 1 Processor', 'AMOLED Display', 'Sonic Black', 41799, 'OnePlus 11R 5G.jpg', 0),
(8, 39, 'OnePlus Nord 3 5G', 'RAM: 8GB,\r\nROM: 128GB,\r\nDimensity 9000 Processor', 'AMOLED FHD+ Display', 'Misty Green', 28999, 'OnePlus Nord 3 5G.jpg', 0),
(8, 40, 'OnePlus Nord CE 2 5G', 'RAM: 8GB,\r\nROM: 128GB,\r\nDimensity 900 Processor', 'AMOLED FHD+ Display', 'Bahamas Blue', 19999, 'OnePlus Nord CE 2 5G.jpg', 0),
(8, 41, 'OnePlus Nord CE 2 Lite 5G', 'RAM: 6GB,\r\nROM: 128GB,\r\nSnapdragon 695 Prcessor', 'sRGB Display', 'Black Dusk', 17999, 'OnePlus Nord CE 2 Lite 5G.jpg', 0),
(8, 42, 'OnePlus Nord CE 3', 'RAM: 8GB,\r\nRAM: 128GB,\r\nSnapdragon 782G Processor', 'AMOLED FHD+ Display', 'Aqua Surge', 24999, 'OnePlus Nord CE 3 5G.jpg', 0),
(8, 43, 'OnePlus Nord CE 3 Lite 5G', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 695 Processor', 'FHD+ Display', 'Chromatic Gray', 17999, 'OnePlus Nord CE 3 Lite 5G.jpg', 0),
(8, 44, 'OnePlus Open Foldable Phone', 'RAM: 16GB,\r\nROM: 512GB,\r\nSnapdragon 8 Gen 2 Processor', 'Super Fluid AMOLED Display', 'Emerald Dusk', 139889, 'OnePlus Open Foldable Phone.jpg', 0),
(10, 45, 'Realme GT 2 Pro', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 8 gen 1 Processor', 'AMOLED Display', 'Paper Green', 33999, 'Realme GT 2 Pro.jpg', 0),
(10, 46, 'Realme GT Master Edition', 'RAM: 8GB,\r\nROM: 256GB,\r\nSnapdragon 720G Processor', 'AMOLED Display', 'Luna White', 24899, 'Realme GT Master Edition 5G.jpg', 0),
(10, 47, 'Realme GT Neo 2', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 720 Processor', 'AMOLED Display', 'Neo Black', 19899, 'Realme GT Neo 2.jpg', 0),
(10, 48, 'Realme GT Neo 3', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 8 Processor', 'FHD+ Display', 'Nitro Blue', 21499, 'Realme GT Neo 3.jpg', 0),
(10, 49, 'Realme Narzo 20 Pro', 'RAM: 8GB,\r\nROM: 128,\r\nSnapdragon 720 Processor', 'FHD Display', 'Black Ninja', 11499, 'Realme Narzo 20 Pro.jpg', 0),
(10, 50, 'Realme Narzo 30 5G', 'RAM: 6GB,\r\nROM: 128GB,\r\nSnapdragon 695G Processor', 'FHD Display', 'Racing Silver', 13299, 'Realme Narzo 30 5G.jpg', 0),
(10, 51, 'Realme Narzo 30 Pro 5G', 'RAM: 6GB,\r\nROM: 64GB,\r\nSnapdragon 695G Processor', 'FHD+ Display', 'Sword Black', 15260, 'Realme Narzo 30 Pro 5G.jpg', 0),
(10, 52, 'Realme Narzo 30A', 'RAM: 4GB,\r\nROM: 64GB,\r\nSnapdragon 6 Processor', 'FHD Display', 'Laser Black', 7999, 'Realme Narzo 30A.jpg', 0),
(10, 53, 'Realme Narzo 50 Pro 5G', 'RAM: 6GB,\r\nROM: 128GB,\r\nDimensity 920 5G Processor', 'FHD+ Display', 'Hyper Black', 14899, 'Realme Narzo 50 Pro 5G.jpg', 0),
(10, 54, 'Realme Narzo 60 Pro', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 8 Gen 1 Processor', 'Super AMOLED Curved Display', 'Cosmic Black', 23999, 'Realme Narzo 60 Pro.jpg', 0),
(9, 55, 'Redmi 10', 'RAM: 4GB,\r\nROM: 64GB,\r\nSnapdragon 680 Processor', 'HD+ Display', 'Pacific Blue', 9499, 'Redmi 10.jpg', 0),
(9, 56, 'Redmi 12 5G', 'RAM: 6GB,\r\nROM: 128GB,\r\nSnapdragon 4 Gen 2 Processor', 'FHD+ Display', 'Moonstone Silver', 12999, 'Redmi 12 5G.jpg', 0),
(9, 57, 'Redmi Note 10 Lite', 'RAM: 4GB,\r\nROM: 128GB,\r\nSnapdragon 720G Processor', 'AMOLED Display', 'Aurora Blue', 12999, 'Redmi Note 10 Lite.jpg', 0),
(9, 58, 'Redmi Note 10 Pro', 'RAM: 6GB,\r\nROM: 128GB,\r\nSnapdragon 720 Processor', 'AMOLED FHD+ Display', 'Dark Nebula', 12499, 'Redmi Note 10 Pro.jpg', 0),
(9, 59, 'Redmi Note 10', 'RAM: 4GB,\r\nROM: 64GB,\r\nSnapdragon 678 Processor', 'AMOLED FHD+ Display', 'Shadow Black', 13999, 'Redmi Note 10.jpg', 0),
(9, 60, 'Redmi Note 10S', 'RAM: 6GB,\r\nROM: 64GB,\r\nMediaTek Helio G95 Processor', 'AMOLED Display', 'Deep Sea Blue', 14899, 'Redmi Note 10S.jpg', 0),
(9, 61, 'Redmi Note 12 Pro 5G', 'RAM: 6GB,\r\nROM: 128GB,\r\nSnapdragon 8 Processor', 'FHD Display', 'Glacier Blue', 21999, 'Redmi Note 12 Pro 5G.jpg', 0),
(9, 62, 'Redmi note 12', 'RAM: 6GB,\r\nROM: 64GB,\r\nSnapdragon 685 Processor', 'AMOLED Display', 'Ice Blue', 10999, 'Redmi Note 12.jpg', 0),
(9, 63, 'Redmi Note 13 5G', 'RAM: 8GB,\r\nROM: 256GB,\r\nDimensity 6080 5G Processor', 'FHD+ OLED Display', 'Prism Gold', 19899, 'Redmi Note 13 5G.jpg', 0),
(9, 64, 'Redmi Note 13 Pro 5G', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 8 Processor', 'FHD+ Display', 'Arctic White', 24244, 'Redmi Note 13 Pro 5G.jpg', 0),
(9, 65, 'Redmi Note 13 Pro Plus 5G', 'RAM: 12GB,\r\nROM: 256GB,\r\nDimensity 7200 Ultra 5G Processor', 'AMOLED Display', 'Fusion Black', 32249, 'Redmi Note 13 Pro Plus 5G.jpg', 0),
(9, 66, 'Redmi Note 13C 5G', 'RAM: 4GB,\r\nROM: 128GB,\r\nDimensity 6100+ 5G Processor', 'HD+ Display', 'Startrail Silver', 10999, 'Redmi Note 13C 5G.jpg', 0),
(1, 68, 'Samsung Galaxy M12', 'RAM: 4GB,\r\nROM: 64GB,\r\nExynos850 Octa Core Processor', 'HD+ Display', 'Black', 8999, 'Samsung Galaxy M12.jpg', 0),
(1, 69, 'Samsung Galaxy M14 5G', 'RAM: 6GB,\r\nROM: 128GB,\r\nExynos 1330 Octa Core Processor', 'FHD+ Display', 'Smoky Teal', 10990, 'Samsung Galaxy M14 5G.jpg', 0),
(1, 70, 'Samsung Galaxy M34 5G', 'RAM: 8GB,\r\nROM: 128GB,\r\nExynos 1280 Octa Core Processor', 'AMOLED Display', 'Waterfall Blue', 17899, 'Samsung Galaxy M34 5G.jpg', 0),
(1, 71, 'Samsung Galaxy M52 5G', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 778G Octa Core Processor', 'AMOLED Display', 'Icy Blue', 26899, 'Samsung Galaxy M52 5G.jpg', 0),
(1, 72, 'Samsung Galaxy Note 20 Ultra', 'RAM: 12GB,\r\nROM: 256GB,\r\nSnapdragon 8 Processor', 'AMOLED Display', 'Mystic Bronze', 59899, 'Samsung Galaxy Note 20 Ultra 5G.jpg', 0),
(1, 73, 'Samsung Galaxy Note 20', 'RAM: 8GB,\r\nROM: 256GB,\r\nExynos 990 Octa Core Processor', 'AMOLED FHD+ Display', 'Mystic Bronze', 37000, 'Samsung Galaxy Note 20.jpg', 0),
(1, 74, 'Samsung Galaxy S21 FE 5G', 'RAM: 8GB,\r\nROM: 256GB,\r\nSnapdragon 888 Processor', 'AMOLED Display', 'Phantom Black', 32820, 'Samsung Galaxy S21 FE 5G.jpg', 0),
(1, 75, 'Samsung Galaxy S21 Plus', 'RAM: 8GB,\r\nROM: 128GB,\r\nExynos 2100 Octa Core Processor', 'AMOLED FHD+ Display', 'Phantom Black', 48999, 'Samsung Galaxy S21 Plus.jpg', 0),
(1, 76, 'Samsung Galaxy S21 Ultra', 'RAM: 12GB,\r\nROM: 256GB,\r\nExynos 2100 Octa Core Processor', 'AMOLED FHD+ Display', 'Phantom Black', 64999, 'Samsung Galaxy S21 Ultra 5G.jpg', 0),
(1, 77, 'Samsung Galaxy S22 5G', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 888 Octa Core Processor', 'AMOLED Display', 'Phantom Black', 39799, 'Samsung Galaxy S22 5G.jpg', 0),
(1, 78, 'Samsung Galaxy S22 Plus', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 8 Octa Core Processor', 'AMOLED FHD+ Display', 'Phantom Black', 69899, 'Samsung Galaxy S22 Plus 5G.jpg', 0),
(1, 79, 'Samsung Galaxy S22 Ultra', 'RAM: 12GB,\r\nROM: 256GB,\r\nSnapdragon 8 Gen 1 Processor', 'AMOLED FHD+ Display', 'Dark Red', 84999, 'Samsung Galaxy S22 Ultra 5G.jpg', 0),
(1, 80, 'Samsung Galaxy S23 FE', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 8 Processor', 'AMOLED Display', 'Mint', 45499, 'Samsung Galaxy S23 FE 5G.jpg', 0),
(1, 81, 'Samsung Galaxy S23 Ultra', 'RAM: 12GB,\r\nROM: 256GB,\r\nSnapdragon 8 Gen 2 Processor', 'AMOLED FHD+ Display', 'Cream', 109999, 'Samsung Galaxy S23 Ultra 5G.jpg', 0),
(1, 82, 'Samsung Galaxy Z Flip 3', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 888 Octa Core Processor', 'AMOLED FHD+ Display', 'Cream', 45999, 'Samsung Galaxy Z flip 3 5G.jpg', 0),
(1, 83, 'Samsung Galaxy Z Fold 3', 'RAM: 12GB,\r\nROM: 256GB,\r\nSnapdragon 888 Octa Core Processor', 'AMOLED Display', 'Phantom Silver', 86899, 'Samsung Galaxy Z fold 3 5G.jpg', 0),
(1, 84, 'Samsung Galaxy S24 Plus AI Sma', 'RAM: 12GB,\r\nROM: 512GB,\r\nSnapdragon 8 Gen 2 Processor', 'AMOLED FHD+ Display', 'Cobalt Violet', 109899, 'Samsung Galaxy S24 Plus 5G AI Smartphone.jpg', 0),
(1, 85, 'Samsung Galaxy Z Flip 4', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 8 Gen 1 Processor', 'AMOLED FHD+ Display', 'Bora Purple', 59999, 'Samsung Galaxy Z flip 4 5G.jpg', 0),
(1, 86, 'Samsung Galaxy Z Fold 4', 'RAM: 12GB,\r\nROM: 256GB,\r\nSnapdragon 8 Gen 2 Processor', 'AMOLED FHD+ Display', 'Gray Green', 114999, 'Samsung Galaxy Z fold 4 5G.jpg', 0),
(1, 87, 'Samsung Galaxy Z Flip 5', 'RAM: 8GB,\r\nROM: 256GB,\r\nSnapdragon 8 Gen 1 Processor', 'AMOLED Display', 'Mint', 99999, 'Samsung Galaxy Z flip 5 5G.jpg', 0),
(1, 88, 'Samsung Galaxy Z Fold 5', 'RAM: 12GB,\r\nROM: 256GB,\r\nSnapdragon 8 Gen 3 Processor', 'AMOLED FHD+ Display', 'Icy Blue', 154999, 'Samsung Galaxy Z fold 5 5G.jpg', 0),
(1, 89, 'Samsung Galaxy S24 Ultra AI Sm', 'RAM: 12GB,\r\nROM: 1TB,\r\nSnapdragon 8 Gen 3 Processor', 'AMOLED FHD+ Display', 'Titanium Gray', 159999, 'Samsung Galaxy S24 Ultra 5G AI Smartphone.jpg', 0),
(7, 90, 'Asus ROG Phone 1', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 845 Processor With Qualcomm Adreno 630', 'AMOLED Display', 'Phantom Black', 60999, 'Asus ROG Phone 1.jpg', 0),
(7, 91, 'Asus ROG Phone 2', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 855+ Processor With Qualcomm Adreno 640', 'AMOLED Display', 'Phantom Black', 37999, 'Asus ROG Phone 2.jpg', 0),
(7, 93, 'Asus ROG Phone 3', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 865+ Processor With Qualcomm Adreno 650', 'AMOLED Display', 'Phantom Black', 46999, 'Asus ROG Phone 3.jpg', 0),
(7, 94, 'Asus ROG Phone 5', 'Ram: 8GB,\r\nROM: 128GB,\r\nSnapdragon 888 Processor With Qualcomm Adreno 660', 'AMOLED Display', 'Phantom Black', 49999, 'Asus ROG Phone 5.jpg', 0),
(7, 95, 'Asus ROG Phone 5S Pro', 'RAM: 15GB,\r\nROM: 512GB,\r\nSnapdragon 888+ Processor With Qualcomm Adreno 660', 'AMOLED Display', 'Phantom Black', 69999, 'Asus ROG Phone 5S Pro.jpg', 0),
(7, 96, 'Asus ROG Phone 5 Ultimate', 'RAM: 18GB,\r\nROM: 512GB,\r\nSnapdragon 888+ Processor With Qualcomm Adreno 660', 'AMOLED Display', 'Storm White', 79999, 'Asus ROG Phone 5 Ultimate.jpg', 0),
(7, 97, 'Asus ROG Phone 6', 'RAM: 8GB,\r\nROM: 256GB,\r\nSnapdragon 8+ Gen 1 Processor With Qualcomm Adreno 730', 'AMOLED Display', 'Phantom Black', 71999, 'Asus ROG Phone 6.jpg', 0),
(7, 98, 'Asus ROG Phone 6 Pro', 'RAM: 18GB,\r\nROM: 512GB,\r\nSnapdragon 8+ Gen 1 Processor With Qualcomm Adreno 730', 'AMOLED Display', 'Storm White', 94999, 'Asus ROG Phone 6 Pro.jpg', 0),
(7, 99, 'Asus ROG Phone 6 Batman Editio', 'RAM: 12GB,\r\nROM: 256GB,\r\nSnapdragon 8+ Gen 1 Processor With Qualcomm Adreno 730', 'AMOLED Display', 'Phantom Black', 72999, 'Asus ROG Phone 6 Batman Edition.jpg', 0),
(7, 100, 'Asus Zenfone 8', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 888 Processor With Qualcomm Adreno 660', 'AMOLED Display', 'Obsidian Black', 44990, 'Asus Zenfone 8.jpg', 0),
(7, 101, 'Asus Zenfone 8 Flip', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 888 Processor With Qualcomm Adreno 660', 'AMOLED Display', 'Galactic Black', 71090, 'Asus Zenfone 8 Flip.jpg', 0),
(7, 102, 'Asus ROG Phone 7', 'RAM: 16GB,\r\nROM: 512GB,\r\nSnapdragon 8 Gen 2 Processor With Qualcomm Adreno 740', 'AMOLED Display', 'Storm White', 75000, 'Asus ROG Phone 7.jpg', 0),
(7, 103, 'Asus ROG Phone 7 Ultimate', 'RAM: 16GB,\r\nROM: 512GB,\r\nSnapdragon 8 Gen 2 Processor With Qualcomm Adreno 740', 'AMOLED Display', 'Storm White', 99999, 'Asus ROG Phone 7 Ultimate.jpg', 0),
(7, 104, 'Asus Zenfone 9', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 8+ Gen 1 Processor With Qualcomm Adreno 730', 'AMOLED Display', 'Midnight Black', 64490, 'Asus Zenfone 9.jpg', 0),
(7, 105, 'Asus ROG Phone 8', 'RAM: 12GB,\r\nROM: 256GB,\r\nSnapdragon 8 Gen 3 Processor With Qualcomm Adreno 750', 'AMOLED Display', 'Rebel Grey', 94999, 'Asus ROG Phone 8.jpg', 0),
(7, 106, 'Asus ROG Phone 8 Pro', 'RAM: 16GB,\r\nROM: 512GB,\r\nSnapdragon 8 Gen 3 Processor With Qualcomm Adreno 750', 'AMOLED Display', 'Phantom Black', 119999, 'Asus ROG Phone 8 Pro.jpg', 0),
(7, 107, 'Asus Zenfone 10', 'RAM: 8GB,\r\nROM: 128GB,\r\nSnapdragon 8 Gen 2 Processor With Qualcomm Adreno 740', 'AMOLED Display', 'Midnight Black', 71390, 'Asus Zenfone 10.jpg', 0),
(7, 108, 'Asus ROG Phone 8 Pro Edition', 'RAM: 24GB,\r\nROM: 1TB,\r\nSnapdragon 8 Gen 3 Processor With Qualcomm Adreno 750', 'AMOLED Display', 'Phantom Black', 124610, 'Asus ROG Phone 8 Pro Edition.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

DROP TABLE IF EXISTS `rate`;
CREATE TABLE `rate` (
  `r_id` int(4) NOT NULL,
  `r_is_id` int(5) NOT NULL,
  `r_for_id` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rate`
--

INSERT DELAYED IGNORE INTO `rate` (`r_id`, `r_is_id`, `r_for_id`) VALUES
(1, 2, 16),
(2, 1, 16),
(3, 3, 17);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `secque` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT DELAYED IGNORE INTO `user` (`id`, `fullname`, `username`, `password`, `email`, `city`, `secque`, `answer`) VALUES
(3, 'Vikas', '@vikas', '@vikas', 'vikas@gmail.com', 'Rajkot', 'What is your mobile no.?', 'vikas');

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

DROP TABLE IF EXISTS `visit`;
CREATE TABLE `visit` (
  `v_id` int(4) NOT NULL,
  `v_count` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `visit`
--

INSERT DELAYED IGNORE INTO `visit` (`v_id`, `v_count`) VALUES
(1, 1893);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_ibfk_2` (`cid`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `com_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `r_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visit`
--
ALTER TABLE `visit`
  MODIFY `v_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
