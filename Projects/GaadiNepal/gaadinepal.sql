-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2017 at 03:49 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gaadinepal`
--

-- --------------------------------------------------------

--
-- Table structure for table `auction`
--

CREATE TABLE IF NOT EXISTS `auction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `base_price` bigint(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `end_date` datetime NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `brand_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `status` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKD88CDE43ACA67B53` (`user_id`),
  KEY `FKD88CDE433D50A5F3` (`category_id`),
  KEY `FKD88CDE43F5767E01` (`brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `auction`
--

INSERT INTO `auction` (`id`, `version`, `base_price`, `description`, `end_date`, `item_name`, `start_date`, `user_id`, `filename`, `brand_id`, `category_id`, `status`) VALUES
(13, 2, 33000000, 'Imported and customized', '2017-08-18 00:00:00', 'Velar', '2017-08-10 00:00:00', 2, '3-L560_18MY_275_GLHD_DX_Device-Desktop_1600x900_293-323940_1820x1023.jpg', 11, 1, b'0'),
(14, 0, 20000000, 'new', '2017-08-09 17:44:00', 'Forester', '2017-08-08 00:00:00', 2, 'subaru-forester-.jpg', 14, 1, b'1'),
(15, 0, 20000000, '1yr used', '2017-08-20 00:00:00', 'Passat', '2017-08-14 00:00:00', 2, 'vw-passat-r-line-sedan-grey-2016.jpg', 8, 3, b'0'),
(17, 0, 1500000, 'aa', '2017-08-10 16:40:00', 'aa', '2017-08-10 00:00:00', 2, 'ex_t_10417_nh_830mlunar_silver_metallic_front.png', 2, 1, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `bidder`
--

CREATE TABLE IF NOT EXISTS `bidder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `amount` int(20) NOT NULL,
  `auction_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKAD3189F4213DE6C1` (`auction_id`),
  KEY `FKAD3189F4ACA67B53` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `bidder`
--

INSERT INTO `bidder` (`id`, `version`, `amount`, `auction_id`, `user_id`) VALUES
(19, 0, 33000001, 13, 1),
(20, 0, 20000001, 14, 1),
(21, 0, 200000005, 14, 5),
(22, 0, 345677654, 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `vec_brand` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `version`, `vec_brand`, `filename`) VALUES
(1, 3, 'Honda', 'honda-logo-png.png'),
(2, 1, 'Ford', 'Ford-logo-2003-1366x768.png'),
(3, 1, 'Tata', 'Tata-Group-logo-3840x2160.png'),
(4, 1, 'Mahindra', 'Mahindra-logo-2560x1440.png'),
(5, 1, 'Kia', 'kia.png'),
(6, 1, 'Hyundai', 'Hyundai-logo-grey-2560x1440.png'),
(7, 1, 'Mazda', 'download.png'),
(8, 1, 'Volkswagen', 'volkswagen-logo-9684898B8E-seeklogo.com.png'),
(9, 1, 'Toyota', 'Toyota-logo-1989-2560x1440.png'),
(10, 1, 'Mitsubishi', 'Mitsubishi_logo.svg.png'),
(11, 1, 'LandRover', 'Land-Rover-logo-2011-1920x1080.png'),
(12, 1, 'Suzuki', 'Suzuki-logo-5000x2500.png'),
(14, 0, 'Subaru', 'Subaru_logo.svg_.png'),
(15, 0, 'Mercedes', 'Mercedes-Benz-logo-2011-1920x1080.png'),
(16, 0, 'Others', 'others_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `vec_category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `version`, `vec_category`) VALUES
(1, 1, 'Suvs'),
(2, 0, 'Hatchbacks'),
(3, 0, 'Sedans'),
(4, 0, 'Coupes'),
(5, 0, 'Wagons'),
(6, 0, 'Pickups'),
(7, 0, 'Electric'),
(8, 0, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `rental`
--

CREATE TABLE IF NOT EXISTS `rental` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `category` varchar(255) NOT NULL,
  `noofseat` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `vecname` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `status` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `rental`
--

INSERT INTO `rental` (`id`, `version`, `category`, `noofseat`, `price`, `user_id`, `vecname`, `filename`, `status`) VALUES
(21, 0, 'taxi', 4, 2500, '2', '2005-maruti-suzuki-alto', '2005-maruti-suzuki-alto-827_827x510_71456480904.jpg', b'1'),
(22, 0, 'taxi', 6, 2500, '2', 'Maruti-Suzuki-800', 'Maruti-Suzuki-800-Front-View.jpg', b'1'),
(23, 0, 'hatchback', 4, 3000, '2', 'i10', 'hyundai-i10-2016-4.jpg', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `rental_acpt`
--

CREATE TABLE IF NOT EXISTS `rental_acpt` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `drop_off_date` datetime NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_num` int(11) NOT NULL,
  `pick_up_date` datetime NOT NULL,
  `rental_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `rental_acpt`
--

INSERT INTO `rental_acpt` (`id`, `version`, `address`, `drop_off_date`, `email_id`, `name`, `phone_num`, `pick_up_date`, `rental_id`) VALUES
(12, 0, 'dealer', '2017-07-27 00:00:00', 'anil@gmail.com', 'dealer', 14800096, '2017-07-28 00:00:00', '20'),
(13, 0, 'test', '2017-08-12 00:00:00', 'daisandip1234@gmail.com', 'test', 122334, '2017-08-11 00:00:00', '23'),
(14, 0, 'test', '2017-08-12 00:00:00', 'daisandip1234@gmail.com', 'test', 122334, '2017-08-11 00:00:00', ''),
(15, 0, 'test', '2017-08-12 00:00:00', 'daisandip1234@gmail.com', 'test', 122334, '2017-08-11 00:00:00', ''),
(16, 0, 'test', '2017-08-12 00:00:00', 'daisandip1234@gmail.com', 'test', 122334, '2017-08-11 00:00:00', ''),
(17, 0, 'test', '2017-08-12 00:00:00', 'daisandip1234@gmail.com', 'test', 122334, '2017-08-11 00:00:00', ''),
(18, 0, 'test', '2017-08-12 00:00:00', 'daisandip1234@gmail.com', 'test', 122334, '2017-08-11 00:00:00', ''),
(19, 0, 'test', '2017-08-12 00:00:00', 'daisandip1234@gmail.com', 'test', 122334, '2017-08-11 00:00:00', ''),
(20, 0, 'test', '2017-08-12 00:00:00', 'daisandip1234@gmail.com', 'test', 122334, '2017-08-11 00:00:00', ''),
(21, 0, 'new', '2017-08-12 00:00:00', 'a@gmail.com', 'new', 123, '2017-08-11 00:00:00', ''),
(22, 0, 'new', '2017-08-12 00:00:00', 'a@gmail.com', 'new', 123, '2017-08-11 00:00:00', ''),
(23, 0, 'test', '2017-08-12 00:00:00', 'daisandip1234@gmail.com', 'test', 122334, '2017-08-11 00:00:00', '21'),
(24, 0, 'test', '2017-08-12 00:00:00', 'daisandip1234@gmail.com', 'test', 122334, '2017-08-11 00:00:00', '21'),
(25, 0, 'new', '2017-08-12 00:00:00', 'a@gmail.com', 'new', 123, '2017-08-11 00:00:00', '21'),
(26, 0, 'sss', '2017-08-20 00:00:00', 'sss@gmail.com', 'sss', 45677543, '2017-08-18 00:00:00', ''),
(27, 0, 'sss', '2017-08-20 00:00:00', 'sss@gmail.com', 'sss', 45677543, '2017-08-18 00:00:00', '22');

-- --------------------------------------------------------

--
-- Table structure for table `rent_rreg_det`
--

CREATE TABLE IF NOT EXISTS `rent_rreg_det` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `drop_off_date` datetime NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_num` int(11) NOT NULL,
  `pick_up_date` datetime NOT NULL,
  `rental_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `rent_rreg_det`
--

INSERT INTO `rent_rreg_det` (`id`, `version`, `address`, `drop_off_date`, `email_id`, `name`, `phone_num`, `pick_up_date`, `rental_id`) VALUES
(4, 0, 'asd', '2017-07-27 00:00:00', 's@gmail.com', 'ck', 23423, '2017-07-25 00:00:00', '2'),
(9, 0, 'asd', '2017-07-23 00:00:00', 'a@gmail.com', 'asd', 1234, '2017-07-24 00:00:00', '2'),
(10, 0, 'asd', '2017-07-23 00:00:00', 'ADASDAD', 'qsa', 23123, '2017-07-24 00:00:00', '3'),
(11, 0, 'asd', '2017-07-26 00:00:00', 'a@gmail.com', 'ak', 1234, '2017-07-25 00:00:00', '4'),
(13, 0, 'ktm', '2017-07-25 00:00:00', 'b@gmail.com', 'rk', 9987776, '2017-07-26 00:00:00', '2'),
(14, 0, 'ktm', '2017-07-26 00:00:00', 'b@gmail.com', 'rk', 1234, '2017-07-26 00:00:00', '2'),
(15, 0, 'test', '2017-07-27 00:00:00', 'b@gmail.com', 'test', 1234567890, '2017-07-26 00:00:00', '7'),
(16, 0, 'c', '2017-07-25 00:00:00', 'a', 'a', 12231, '2017-07-26 00:00:00', '4'),
(17, 0, 'c', '2017-07-26 00:00:00', 'a', 'a', 12123, '2017-07-26 00:00:00', '5'),
(18, 0, 'asd', '2017-07-23 00:00:00', 'a@gmail.com', 'a', 1212121212, '2017-07-26 00:00:00', '5'),
(19, 0, 'asd', '2017-07-27 00:00:00', 'a@gmail.com', 'a', 1231231231, '2017-07-27 00:00:00', '6'),
(20, 0, 'a', '2017-07-26 00:00:00', 'a@gmail.com', 'a', 1231231231, '2017-07-27 00:00:00', '5'),
(38, 0, 'test', '2017-08-12 00:00:00', 'daisandip1234@gmail.com', 'test', 122334, '2017-08-11 00:00:00', '21'),
(39, 0, 'new', '2017-08-12 00:00:00', 'a@gmail.com', 'new', 123, '2017-08-11 00:00:00', '21'),
(40, 0, 'sss', '2017-08-20 00:00:00', 'sss@gmail.com', 'sss', 45677543, '2017-08-18 00:00:00', '22');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `cost` int(11) NOT NULL,
  `drive_type` varchar(255) NOT NULL,
  `engine_type` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `ground_clearence` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `model_year` int(11) NOT NULL,
  `seats` int(11) NOT NULL,
  `status` bit(1) NOT NULL,
  `vehicle_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `version`, `brand`, `category`, `cost`, `drive_type`, `engine_type`, `filename`, `ground_clearence`, `height`, `model_year`, `seats`, `status`, `vehicle_name`) VALUES
(1, 0, 'suabru', 'suv', 350000, 'four wheeler', 'petrol', 'subaru-forester-.jpg', 220, 2000, 2013, 6, b'0', 'forester'),
(2, 0, 'honda', 'suv', 2800000, 'rear wheel', 'diesel/petrol', '2018-Honda-CR-V.jpg', 215, 3000, 2017, 5, b'1', 'crv');

-- --------------------------------------------------------

--
-- Table structure for table `sales_reg`
--

CREATE TABLE IF NOT EXISTS `sales_reg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_num` int(11) NOT NULL,
  `sales_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKFB0BCAE16B55D3E1` (`sales_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `sales_reg`
--

INSERT INTO `sales_reg` (`id`, `version`, `address`, `email`, `name`, `phone_num`, `sales_id`) VALUES
(8, 0, 'kupondole', 'daisandip1234@gmail.com', 'sandip', 144444, 1),
(11, 0, 'test', 'daisandip1234@gmail.com', 'test', 122334, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `version`, `email`, `name`, `password`, `role`) VALUES
(1, 0, 'daisandip1234@gmail.com', 'sandip', 'sandip', 'customer'),
(2, 0, 'gaadinepal@gmail.com', 'gaadiNepal', 'gaadiNepal', 'admin'),
(5, 3, 'suhari1905@gmail.com', 'hari', 'chari', 'customer'),
(6, 0, 'suman@gmail.com', 'suman', 'suman', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE IF NOT EXISTS `vehicle` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `body_type` varchar(255) NOT NULL,
  `bore_stroke` varchar(255) NOT NULL,
  `brand_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `comfort` varchar(255) NOT NULL,
  `compression_ratio` varchar(255) NOT NULL,
  `control_handling` varchar(255) NOT NULL,
  `cylinders` varchar(255) NOT NULL,
  `drive_type` varchar(255) NOT NULL,
  `driver` varchar(255) NOT NULL,
  `engine_size` varchar(255) NOT NULL,
  `engine_type` varchar(255) NOT NULL,
  `entertainment` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `front_brake` varchar(255) NOT NULL,
  `front_rim_size` varchar(255) NOT NULL,
  `front_suspension` varchar(255) NOT NULL,
  `front_tyre` varchar(255) NOT NULL,
  `fuel_consumption` varchar(255) NOT NULL,
  `fuel_tank_capacity` varchar(255) NOT NULL,
  `fuel_type` varchar(255) NOT NULL,
  `ground_clearance` varchar(255) NOT NULL,
  `height` varchar(255) NOT NULL,
  `kerb_weight` varchar(255) NOT NULL,
  `length` varchar(255) NOT NULL,
  `max_power` varchar(255) NOT NULL,
  `max_torque` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `rear_brake` varchar(255) NOT NULL,
  `rear_rim_size` varchar(255) NOT NULL,
  `rear_suspension` varchar(255) NOT NULL,
  `rear_tyre` varchar(255) NOT NULL,
  `safety` varchar(255) NOT NULL,
  `seats` varchar(255) NOT NULL,
  `security` varchar(255) NOT NULL,
  `service_interval` varchar(255) NOT NULL,
  `steering_type` varchar(255) NOT NULL,
  `towing_capacity` varchar(255) NOT NULL,
  `transmission` varchar(255) NOT NULL,
  `warranty` varchar(255) NOT NULL,
  `wheel_base` varchar(255) NOT NULL,
  `width` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK14638F2C3D50A5F3` (`category_id`),
  KEY `FK14638F2CF5767E01` (`brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`id`, `version`, `body_type`, `bore_stroke`, `brand_id`, `category_id`, `comfort`, `compression_ratio`, `control_handling`, `cylinders`, `drive_type`, `driver`, `engine_size`, `engine_type`, `entertainment`, `filename`, `front_brake`, `front_rim_size`, `front_suspension`, `front_tyre`, `fuel_consumption`, `fuel_tank_capacity`, `fuel_type`, `ground_clearance`, `height`, `kerb_weight`, `length`, `max_power`, `max_torque`, `price`, `rear_brake`, `rear_rim_size`, `rear_suspension`, `rear_tyre`, `safety`, `seats`, `security`, `service_interval`, `steering_type`, `towing_capacity`, `transmission`, `warranty`, `wheel_base`, `width`, `year`, `model`, `description`) VALUES
(1, 7, '4D seden', '73*89.5 mm', 1, 3, 'Auto Climate Control with Dual Temp Zones, Heated Front Seats, Power Sunroof', '10.6', '17 Inch Alloy Wheels, Electronic Brake Force Distribution, Hill Holder, Traction Control System, Vehicle Stability Control', 'Turbo 4', 'FWD', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control, Parking Distance Control Rear, Reversing Camera, Trip Computer, Voice Recognition System', '1.5L', 'TURBO DIRECT F/INJ', 'Radio Compact Disc Player, Sound System with 10 Speakers, Premium Sound System', 'ex_t_10417_nh_830mlunar_silver_metallic_front.png', '1547', '7*17', 'MacPherson strut', '215/50 R17', '6L/100km', '47L', 'Petrol', '133mm', '1416mm', '1331', '4644mm', '127kW @ 5500rpm', '220 Nm @ 1700 rpm', 'Rs 75,00,000/-', '1563', '7*17', 'Independent', '215/50 R17', 'Dual Front Airbag Package, Anti-lock Braking, Seatbelts - Pre-tensioners Front Seats', '5', 'Alarm System/Remote Anti Theft, Central Locking Remote Control, Engine Immobiliser', '12 months /  10,000 kms', 'Rack and Pinion-power assisted', 'Brake:800 Unbrake:500', 'Continuous variable', '36 months /  100,000 kms', '2700', '1799mm', '2017', 'CIVIC', '-'),
(2, 2, '4D WAGON', '81x96.9mm', 1, 1, 'Air Conditioning', '10.6', '18 Inch Alloy Wheels, Electronic Brake Force Distribution, Hill Holder, Traction Control System, Vehicle Stability Control', 'INLINE 4', 'FRONT WHEEL DRIVE', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control, Multi Function Steering Wheel, Mobile Phone Connectivity, Parking Distance Control Rear, Power Steering, Reversing Camera, Trip Computer', '2.0L', 'MULTI POINT F/INJ', 'Radio CD with 4 Speakers', '2018-Honda-CR-V.jpg', 'DISC - VENTILATED', '7x18', 'MacPherson strut, Coil Spring, Gas damper, Anti roll bar', '225/60 R18', '7.7L / 100km', '58L', 'UNLEADED PETROL', '170mm', '1685mm', '1488', '4545mm', '114kW @  6500rpm', '190Nm @  4300rpm', 'Rs 95,00,000/-', 'DISC', '7x18', 'Multi-link system, Coil Spring, Gas damper, Anti roll bar', '225/60 R18', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Seatbelts - Pre-tensioners Front Seats, Side Front Air Bags', '5', 'Central Locking Remote Control, Engine Immobiliser', '6 months /  10,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:1500  Unbrake:600', '5 SP AUTOMATIC', '36 months /  100,000 kms', '2620', '1820mm', '2017', 'CR-V', '-'),
(3, 1, '4D WAGON', '90x98mm', 9, 1, 'Auto Climate Control with Dual Temp Zones, Power front seat Driver/memory, Power front seat Driver, Power Sunroof', '10.4', '18 Inch Alloy Wheels, Electronic Brake Force Distribution, Hill Holder, Traction Control System, Vehicle Stability Control', 'INLINE 4', 'ALL WHEEL DRIVE', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control Intelligent/Active, Leather Steering Wheel, Multi Function Steering Wheel, Parking Distance Control Rear, Power Steering, Reversing Camera, Satellite Navigation, Trip Computer', '2.5L', 'MULTI POINT F/INJ', 'Radio Compact Disc Player, Sound System with 11 Speakers', 'download (1).jpg', '1570', '7.5*18', 'MacPherson strut, Coil Spring, Gas damper, Anti roll bar', '235/55 R18', '8.5L / 100km', '60L', 'UNLEADED PETROL', '176mm', '1715mm', '1630', '4570mm', '132kW @  6000rpm', '233Nm @  4100rpm', 'Rs 93,00,000/-', '1570', '7.5*18', 'Double wishbone, Trailing arm, Coil Spring, Gas damper, Anti roll bar', '235/55 R18', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, PreSafe, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '5', 'Alarm System/Remote Anti Theft, Central Locking Remote Control, Engine Immobiliser', '6 months /  10,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:1500  Unbrake:750', '6 SP AUTOMATIC', '36 months /  100,000 kms', '2660', '1845mm', '2017', 'RAV4', '-'),
(4, 0, '4D WAGON', '92x103.6mm', 9, 1, 'Auto Climate Control with Dual Temp Zones, Power front seat Driver, Sport Seats', '15.6', '18 Inch Alloy Wheels, Electronic Brake Force Distribution, Electronic Stability Program, Hill Holder, Traction Control System', 'DIESEL TURBO 4', 'ALL WHEEL DRIVE', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control, Leather Steering Wheel, Multi Function Steering Wheel, Mobile Phone Connectivity, Parking Distance Control Rear, Power Steering, Reversing Camera, Satellite Navigation, Trip Compute', '2.8L', 'DIESEL TURBO F/INJ', 'Radio CD with 6 Speakers', 'download (2).jpg', 'DISC - VENTILATED', '7x18', 'Double wishbone, Coil Spring, Gas damper, Anti roll bar', '265/60 R1265/60 R18', '7.8L / 100km', '80L', 'DIESEL', '22mm', '1835mm', '2135', '4795mm', '130kW @  3400rpm', '420Nm @  1400rpm', 'Rs 1,16,00,000/-', 'DISC - VENTILATED', '7x18', 'Multi-link system, Coil Spring, Hydraulic double acting shock absorber, Anti roll bar', '265/60 R18', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Protective Glazing, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '7', 'Alarm System/Remote Anti Theft, Engine Immobiliser', '6 months /  10,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:2800  Unbrake:750', '6 SP MANUAL', '36 months /  100,000 kms', '2750', '1655mm', '2017', 'FORTUNER', '-'),
(5, 2, '5D HATCHBACK', '73x89.4mm', 1, 2, 'Air Conditioning', '10.4', 'Electronic Brake Force Distribution, Electronic Stability Program, Hill Holder, Traction Control System', 'INLINE 4', 'FRONT WHEEL DRIVE', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control, Multi Function Steering Wheel, Power Steering, Reversing Camera, Trip Computer', '1.5L', 'MULTI POINT F/INJ', 'Radio CD with 4 Speakers', 'jazz.jpg', 'DISC - VENTILATED', '5.5x15', 'MacPherson strut, Coil Spring, Hydraulic double acting shock absorber, Anti roll bar', '175/65 R15', '6L/100km', '40L', 'UNLEADED PETROL', '135mm', '1524mm', '1095', '3996mm', '88kW @  6600rpm', '145Nm @  4800rpm', 'Rs 35,50,000/-', 'DRUM', '5.5x15', 'Torsion bar, Coil Spring, Hydraulic double acting shock absorber', '175/65 R15', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '5', 'Central Locking Remote Control, Engine Immobiliser', '6 months /  10,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:1000  Unbrake:450', '5 SP AUTOMATIC', '36 months /  100,000 kms', '2530', '1694mm', '2017', 'JAZZ', '-'),
(6, 1, '4D WAGON', '-', 1, 1, 'Automatic Air Con / Climate Control', '10.6', '17 Inch Alloy Wheels, Electronic Brake Force Distribution, Electronic Stability Program, Hill Holder, Traction Control System', 'INLINE 4', 'FRONT WHEEL DRIVE', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control, Multi Function Steering Wheel, Mobile Phone Connectivity, Parking Distance Control Rear, Power Steering, Reversing Camera, Trip Computer, Voice Recognition System', '1.8L', 'MULTI POINT F/INJ', 'Radio CD with 6 Speakers', '808406e9f33d1b2bad77fab50eaa72e0.jpg', 'DISC - VENTILATED', '7*17', 'MacPherson strut, Coil Spring, Gas damper, Anti roll bar', '205/45 R17', '6.6L/100km', '50L', 'UNLEADED PETROL', '170mm', '1605mm', '1328', '4294mm', '105kW @  6500rpm', '172Nm @  4300rpm', 'Rs 39,90,000/-', 'DISC', '7*17', 'Torsion bar, Coil Spring, Hydraulic double acting shock absorber', '205/45 R17', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '5', 'Central Locking Remote Control, Engine Immobiliser', '6 months /  10,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:800 Unbrake:500', 'CONTINUOUS VARIABLE', '36 months /  100,000 kms', '2610', '1772mm', '2017', 'BR-V', '-'),
(7, 2, '-', '73*89.5 mm', 1, 3, 'Air Conditioning', '10.3', 'Electronic Brake Force Distribution, Electronic Stability Program, Hill Holder, Traction Control System', 'INLINE 4', 'FRONT WHEEL DRIVE', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control Intelligent/Active, Leather Steering Wheel, Multi Function Steering Wheel, Parking Distance Control Rear, Power Steering, Reversing Camera, Satellite Navigation, Trip Computer', '1.5L', 'MULTI POINT F/INJ', 'Radio CD with 4 Speakers', 'city.jpg', 'DISC - VENTILATED', '5.5x15', 'MacPherson strut, Coil Spring, Hydraulic double acting shock absorber', '175/65 R15', '5.7L / 100km', '40L', 'UNLEADED PETROL', '135mm', '1477mm', '1103', '4455mm', '88kW @  6600rpm', '145Nm @  4600rpm', 'Rs 37,75,000/-', 'DRUM', '5.5x15', 'Torsion bar, Hydraulic double acting shock absorber', '175/65 R15', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '5', 'Alarm System/Remote Anti Theft, Engine Immobiliser', '6 months /  10,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:0 Unbrake:0', 'CONTINUOUS VARIABLE', '36 months /  100,000 kms', '2600', '1694mm', '2017', 'CITY', '-'),
(8, 0, '-', '79x76.4mm', 2, 1, 'Air Conditioning', '11', 'Electronic Brake Force Distribution, Electronic Stability Program, Hill Holder, Traction Control System', 'INLINE 4', 'FRONT WHEEL DRIVE', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control, Multi Function Steering Wheel, Mobile Phone Connectivity, Parking Distance Control Rear, Power Steering, Reversing Camera, Trip Computer', '1.5L', 'MULTI POINT F/INJ', 'Radio CD with 6 Speakers', 'b33ace5232c3466e6f111aafd2b48ffa-195x151.jpg', 'DISC - VENTILATED', '6x15', 'MacPherson strut, Coil Spring, Hydraulic double acting shock absorber, Anti roll bar', '195/65 R15', '6.5L/100km', '52L', 'PREMIUM UNLEADED PETROL', '200mm', '1708mm', '1267', '42455mm', '82kW @  6300rpm', '140Nm @  4400rpm', 'Rs 42,90,000/-', 'DRUM', '6x15', 'Torsion bar, Coil Spring, Hydraulic double acting shock absorber', '195/65 R15', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '5', 'Alarm System/Remote Anti Theft, Central Locking Remote Control, Engine Immobiliser', '12 months /  10,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:700 Unbrake:0', '5 SP AUTOMATIC', '36 months /  100,000 kms', '2521', '1765mm', '2017', 'ECOSPORT', '-'),
(9, 1, '-', '79x76.4mm', 2, 1, 'Air Conditioning', '10.0', '17 Inch Alloy Wheels, Electronic Brake Force Distribution, Hill Holder, Traction Control System, Vehicle Stability Control', 'TURBO 4', 'ALL WHEEL DRIVE', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control, Multi Function Steering Wheel, Mobile Phone Connectivity, Parking Distance Control Rear, Power Steering, Reversing Camera, Trip Computer', '1.5L', 'TURBO MPFI', 'Radio Compact Disc Player, Sound System with 11 Speakers', '2017-Ford-Escape-SE-AWD-front-three-quarter-turn-e1470683245479.jpg', 'DISC - VENTILATED', '7.5*17', 'MacPherson strut, Coil Spring, Gas damper, Anti roll bar', '235/55 R18', '7.4L / 100km', '60L', 'PREMIUM UNLEADED PETROL', '163mm', '1713mm', '1667', '4524mm', '134kW @  5700rpm', '240 Nm @ 1600 rpm', 'Rs 72,90,000/-', 'DISC', '7.5*17', 'Multi-link system, Coil Spring, Gas damper, Anti roll bar', '235/55 R18', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '5', 'Engine Immobiliser', '12 months /  10,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:1500  Unbrake:750', '6 SP AUTOMATIC', '36 months /  100,000 kms', '2690', '1838mm', '2017', 'ESCAPE', '-'),
(10, 0, '5D HATCHBACK', '87.5x94mm', 2, 2, 'Auto Climate Control with Dual Temp Zones, Power front seat Driver, Sport Seats', '9.4', '19 Inch Alloy Wheels, Electronic Brake Force Distribution, Electronic Damper Control, Hill Holder, Sports Suspension, Traction Control System', 'TURBO 4', 'ALL WHEEL DRIVE', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control, Leather Steering Wheel, Parking Distance Control Rear, Reversing Camera, Satellite Navigation, Trip Computer, Voice Recognition System', '2.3L', 'TUR GASOLINE DIR INJ', 'Radio CD with 9 Speakers', 'Ryh3-ford-focus.jpg', 'DISC - VENTILATED', '8.0x19', 'MacPherson strut, Coil Spring, Gas damper, Anti roll bar', '235/35 R19', '8.1L / 100km', '52L', 'PREMIUM UNLEADED PETROL', '104mm', '1480mm', '1575', '4390mm', '257kW @  6000rpm', '440Nm @  1600rpm', 'Rs 67,00,000/-', 'DISC', '8.0x19', 'Multi-link system, Coil Spring, Gas damper, Anti roll bar', '235/35 R19', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Seatbelts - Pre-tensioners Front Seats, Side Front Air Bags', '5', 'Alarm System/Remote Anti Theft, Central Locking Remote Control, Engine Immobiliser', '12 months /  15,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:0 Unbrake:0', '6 SP AUTOMATIC', '36 months /  100,000 kms', '2648', '1823mm', '2017', 'FOCUS', '-'),
(11, 0, 'C/CHAS', '89.9x100.76mm', 2, 6, 'Air Conditioning, Bucket Front Seats', '15.7', 'Electronic Brake Force Distribution, Hill Holder, Traction Control System', 'DIESEL TURBO 5', '4*4', 'Cruise Control, Mobile Phone Connectivity, Power Steering', '3.2', 'DIESEL TURBO F/INJ', 'Radio CD with 4 Speakers', '56730c94795e7.jpg', 'DISC - VENTILATED', '7.5*17', 'MacPherson strut, Double wishbone, Coil Spring, Hydraulic double acting shock absorber', '265/65 R17', '9.20L / 100km', '80L', 'DIESEL', '232.2mm', '1800mm', '1795', '5110mm', '147kW @  3000rpm', '470Nm @  1500rpm', 'Rs 58,79,000/-', 'DRUM', '7.5*17', 'Leaf spring, Hydraulic double acting shock absorber', '265/65 R17', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '3', 'Alarm System/Remote Anti Theft, Central Locking Remote Control, Engine Immobiliser', '12 months /  15,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:3500.0  Unbrake:750.', '6 SP AUTOMATIC', '36 months /  100,000 kms', '3220', '1850mm', '2017', 'RANGER', '-'),
(12, 0, '4D WAGON', '77x85.44mm', 6, 1, 'Air Conditioning', '10.0', '19 Inch Alloy Wheels, Electronic Brake Force Distribution, Electronic Damper Control, Hill Holder, Sports Suspension, Traction Control System', 'TURBO 4', 'ALL WHEEL DRIVE', 'Leather Steering Wheel, Multi Function Steering Wheel, Mobile Phone Connectivity, Parking Distance Control Rear, Power Steering, Reversing Camera, Trip Computer', '1.6L', 'GASOLINE DIRECT INJ', 'Radio CD with 6 Speakers, Sound System', 'V5R17A.jpg', 'DISC - VENTILATED', '7.5*19', 'MacPherson strut, Coil Spring, Gas damper, Anti roll bar', '245/45 R19', '7.7L / 100km', '62L', 'UNLEADED PETROL', '172mm', '1655mm', '1690', '4477mm', '130kW @  5500rpm', '265Nm @  1500rpm', '-', 'DISC', '7.5*19', 'Multi-link system, Coil Spring, Gas damper, Anti roll bar', '245/45 R19', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '5', 'Alarm System/Remote Anti Theft, Central Locking Remote Control, Engine Immobiliser', '12 months /  15,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:1600  Unbrake:750', '7 SP AUTO DUAL CLUTCH', '60 months /  999,000 kms', '2670', '1850mm', '2017', 'TUCSON', '-'),
(13, 0, '4D SEDAN', '72x84mm', 6, 3, '-', '10.5', '-', 'INLINE 4', 'FRONT WHEEL DRIVE', '-', '1.4L', 'MULTI POINT F/INJ', '-', 'download (6).jpg', 'DISC - VENTILATED', '5.5x14', 'MacPherson strut, Coil Spring, Hydraulic double acting shock absorber', '-', '5.9L / 100km', '43L', 'UNLEADED PETROL', '140mm', '1450mm', '1140', '4370mm', '74kW @  6000rpm', '133Nm @  3500rpm', 'Rs 32,79,000/-', 'DISC', '5.5x14', 'Torsion bar, Hydraulic double acting shock absorber', '-', '-', '5', '-', '12 months /  15,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:1000  Unbrake:450', '6 SP MANUAL', '60 months /  999,000 kms', '2570', '1700mm', '2017', 'ACCENT', '-'),
(14, 0, '3D HATCHBACK', '77x85.44mm', 6, 2, 'Air Conditioning', '10.5', 'Electronic Brake Force Distribution, Electronic Stability Program, Hill Holder, Traction Control System', 'INLINE 4', 'FRONT WHEEL DRIVE', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control, Multi Function Steering Wheel, Mobile Phone Connectivity, Parking Distance Control Rear, Power Steering, Reversing Camera, Trip Computer', '1.4L', 'MULTI POINT F/INJ', 'Radio CD with 4 Speakers', 'Hyundai-Elite-i20-Car-Price-in-Nepal-2016-2017.jpg', 'DISC - VENTILATED', '5.5x14', 'MacPherson strut, Coil Spring, Hydraulic double acting shock absorber, Anti roll bar', '175/65 R15', '5.9L / 100km', '45L', 'UNLEADED PETROL', '150mm', '1490mm', '1100', '3940mm', '73kW @  5500rpm', '136Nm @  4200rpm', 'Rs 34,96,000/-', 'DISC', '5.5x14', 'Multi-link system, Coil Spring, Hydraulic double acting shock absorber, Anti roll bar', '175/65 R15', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '5', 'Alarm System/Remote Anti Theft, Central Locking Remote Control, Engine Immobiliser', '12 months /  10,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:1000  Unbrake:450', '4 SP AUTOMATIC', '60 months /  999,000 kms', '2525', '1710mm', '2015', 'I20', '-'),
(15, 0, '3D COUPE', '77x85.4mm', 6, 4, 'Air Conditioning, Automatic Air Con / Climate Control, Sport Seats', '11.0', '18 Inch Alloy Wheels, Electronic Brake Force Distribution, Hill Holder, Traction Control System, Vehicle Stability Control', 'INLINE 4', 'FRONT WHEEL DRIVE', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control, Leather Steering Wheel, Multi Function Steering Wheel, Parking Distance Control Rear, Power Steering, Reversing Camera, Trip Computer, Voice Recognition System', '1.6L', 'GASOLINE DIRECT INJ', 'Radio CD with 6 Speakers, Sound System', 'download (7).jpg', 'DISC - VENTILATED', '7.5*18', 'MacPherson strut, Coil Spring, Gas damper, Anti roll bar', '225/40 R18', '6.4L/100km', '50L', 'UNLEADED PETROL', '149mm', '1405mm', '1265', '4220mm', '103kW @  6300rpm', '167Nm @  4850rpm', 'Rs 74,96,000/-', 'DISC', '7.5*18', 'Torsion bar, Coil Spring, Hydraulic double acting shock absorber', '225/40 R18', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Seatbelts - Pre-tensioners Front Seats, Side Front Air Bags', '4', 'Alarm System/Remote Anti Theft, Central Locking Remote Control, Engine Immobiliser', '12 months /  15,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:0 Unbrake:0', '6 SP MANUAL', '60 months /  999,000 kms', '2650', '1790mm', '2017', 'VELOSTER', '-'),
(16, 0, 'C/CHAS', '92x103.6mm', 9, 6, 'Air Conditioning', '15.6', 'Electronic Brake Force Distribution, Electronic Stability Program, Hill Holder, Traction Control System', 'DIESEL TURBO 4', 'REAR WHEEL DRIVE', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control, Multi Function Steering Wheel, Mobile Phone Connectivity, Parking Distance Control Rear, Power Steering, Reversing Camera, Trip Computer', '2.8L', 'DIESEL TURBO F/INJ', 'Radio CD with 4 Speakers', 'download (8).jpg', 'DISC - VENTILATED', '6x16', 'Double wishbone, Coil Spring, Gas damper, Anti roll bar', '215/65 R16', '8.1L / 100km', '80L', 'DIESEL', '0mm', '1690mm', '1575', '5330mm', '125kW @  3600rpm', '343Nm @  1200rpm', 'Rs 54,76,000/-', 'DRUM', '6x16', 'Leaf spring, Hydraulic double acting shock absorber', '215/65 R16', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '2', 'Central Locking Remote Control, Engine Immobiliser', '6 months /  10,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:2500  Unbrake:750', '5 SP MANUAL', '36 months /  100,000 kms', '3085', '1800mm', '2017', 'HILUX', '-'),
(17, 0, '-', '80.5x88.3mm', 9, 3, 'Air Conditioning', '10.0', 'Electronic Brake Force Distribution, Electronic Stability Program, Hill Holder, Traction Control System', 'INLINE 4', 'FRONT WHEEL DRIVE', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control Intelligent/Active, Leather Steering Wheel, Multi Function Steering Wheel, Parking Distance Control Rear, Power Steering, Reversing Camera, Satellite Navigation, Trip Computer', '1.8L', 'MULTI POINT F/INJ', 'Radio CD with 6 Speakers', '2017-Toyota-Corolla-Ascent-auto-sedan-hero-1.jpg', 'DISC - VENTILATED', '6.5x16', 'MacPherson strut, Coil Spring, Gas damper, Anti roll bar', '205/55 R16', '6.1L/100km', '50L', 'UNLEADED PETROL', '140mm', '1460mm', '1275', '4275mm', '103kW @  6400rpm', '173Nm @  4000rpm', 'Rs 66,00,000/-', 'DISC', '6.5x16', 'Torsion bar, Hydraulic double acting shock absorber', '205/55 R16', '-', '5', '-', '6 months /  10,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:1300  Unbrake:450', 'CVT AUTO 7 SP SEQUENTIAL', '36 months /  100,000 kms', '2600', '1760mm', '2017', 'COROLLA', '-'),
(18, 0, '5D HATCHBACK', '71x78.8mm', 5, 2, 'Air Conditioning', '9.0', 'Electronic Brake Force Distribution, Electronic Stability Program, Hill Holder, Traction Control System', 'INLINE 4', 'FRONT WHEEL DRIVE', 'Cruise Control, Parking Distance Control Rear, Power Steering, Trip Computer', '1.2L', 'MULTI POINT F/INJ', 'Radio CD with 4 Speakers', 'download (9).jpg', 'DISC - VENTILATED', '5.5x14', 'MacPherson strut', '175/65 R15', '5L/100km', '49L', 'UNLEADED PETROL', '141mm', '1350mm', '1160', '3595mm', '62kW @  6000rpm', '122Nm @  4000rpm', 'Rs 33,76,000/-', 'DISC', '5.5x14', 'Torsion beam axle', '175/65 R15', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '5', 'Alarm System/Remote Anti Theft, Central Locking Remote Control, Engine Immobiliser', '6 months /  10,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:0 Unbrake:0', '5 SP MANUAL', '36 months /  100,000 kms', '2400', '1595mm', '2017', 'PICANTO', '-'),
(19, 0, '4D WAGON', '81x96.9mm', 5, 1, 'Auto Climate Control with Dual Temp Zones, Power front seat Driver/memory, Power front seat Driver, Power Sunroof', '11.3', '19 Inch Alloy Wheels, Electronic Brake Force Distribution, Electronic Damper Control, Hill Holder, Sports Suspension, Traction Control System', 'INLINE 4', 'ALL WHEEL DRIVE', 'Cruise Control, Parking Distance Control Rear, Power Steering, Trip Computer', '2.4L', 'MULTI POINT F/INJ', 'Sound System with 6 Speaker', 'download (10).jpg', 'DISC - VENTILATED', '7.5*18', 'MacPherson strut, Coil Spring, Gas damper, Anti roll bar', '245/60 R19', '8.5L / 100km', '62L', 'UNLEADED PETROL', '172mm', '1645mm', '1590', '4480mm', '130kW @  3400rpm', '233Nm @  4100rpm', 'Rs 86,00,000/-', 'DISC', '7.5*18', 'Multi-link system, Coil Spring, Gas damper, Anti roll bar', '245/60 R19', '-', '5', '-', '6 months /  10,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:1500  Unbrake:750', '6 SP AUTOMATIC', '36 months /  100,000 kms', '2670', '1855mm', '2017', 'SPORTAGE', '-'),
(20, 0, '4D WAGON', '92x83.8mm', 5, 5, 'Auto Climate Control with Dual Temp Zones, Heated Front Seats, Power Sunroof', '11.5', '19 Inch Alloy Wheels, Electronic Brake Force Distribution, Electronic Damper Control, Hill Holder, Sports Suspension, Traction Control System', 'V6', 'FRONT WHEEL DRIVE', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control, Multi Function Steering Wheel, Mobile Phone Connectivity, Parking Distance Control Rear, Power Steering, Reversing Camera, Trip Computer', '3.3', 'MULTI POINT F/INJ', 'Radio CD with 6 Speakers', 'download (11).jpg', 'DISC - VENTILATED', '7.5*19', 'MacPherson strut, Coil Spring, Gas damper, Anti roll bar', '235/55 R19', '11.6L/100km', '80L', 'UNLEADED PETROL', '171mm', '1755mm', '2100', '5115mm', '206kW @  6000rpm', '336Nm @  5200rpm', 'Rs 55,00,000/-', 'DISC', '7.5*19', 'Multi-link system, Coil Spring, Gas damper, Anti roll bar', '235/55 R19', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '8', 'Central Locking Remote Control, Engine Immobiliser', '6 months /  10,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:2000  Unbrake:750', '6 SP AUTOMATIC', '36 months /  100,000 kms', '3060', '1985mm', '2017', 'CARNIVAL', '-'),
(21, 0, '-', '83x91.4mm', 8, 1, 'Auto Climate Control with Dual Temp Zones, Automatic Climate Control Filtered, Heated Front Seats, Power front seats', '17.0', '18 Inch Alloy Wheels, Electronic Brake Force Distribution, Hill Holder, Traction Control System, Vehicle Stability Control', 'DIESEL TURBO V6', 'ALL WHEEL DRIVE', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control, Leather Steering Wheel, Multi Function Steering Wheel, Parking Distance Control Rear, Power Steering, Reversing Camera, Satellite ', '3.0L', 'DIESEL TURBO F/INJ', 'CD with 6 CD Stacker, Radio CD with 8 Speakers', '55a6047bd8b78.jpg', 'DISC - VENTILATED', '8.0x19', 'Double wishbone, Coil Spring, Gas damper, Anti roll bar', '255/55 R18', '7.2L / 100km', '85L', 'DIESEL', '205mm', '1732mm', '2154', '4898mm', '150kW @  4000rpm', '400Nm @  2000rpm', 'Rs 1,64,00,000/-', 'DISC - VENTILATED', '8.0x19', 'Double wishbone, Coil Spring, Gas damper, Anti roll bar', '255/55 R18', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '5', 'Central Locking Remote Control, Engine Immobiliser', '12 months /  15,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:3500  Unbrake:750', '8 SP AUTOMATIC', '60 months /  999,000 kms', '2904', '1965mm', '2017', 'TOUAREG', '-'),
(22, 0, '-', '81x95.5mm', 8, 1, 'Automatic Climate Control Filtered, Comfort Seats Front', '16.2', '17 Inch Alloy Wheels, Electronic Brake Force Distribution, Hill Holder, Traction Control System, Vehicle Stability Control', 'TURBO 4', 'ALL WHEEL DRIVE', 'Cruise Control, Multi Function Steering Wheel, Parking Distance Control Rear, Reversing Camera, Satellite Navigation', '2.0L', 'DIESEL TURBO F/INJ', 'Sound System with 8 Speakers', '56730a2571506.jpg', 'DISC - VENTILATED', '7*17', 'Independent, MacPherson strut, Lower arm, Anti roll bar', '215/65 R17', '5.9L / 100km', '60L', 'DIESEL', '201mm', '1658mm', '1600', '4486mm', '110kW @  3500rpm', '340Nm @  1750rpm', 'Rs 53,50,000/-', 'DISC', '7*17', 'Independent, 4 links, Coil Spring, Anti roll bar', '215/65 R17', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '5', 'Central Locking Remote Control, Engine Immobiliser', '6 months /  10,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:2500  Unbrake:600', '7 SP AUTO DIRECT SHIFT', '36 months /  100,000 kms', '2681', '1839mm', '2017', 'TIGUAN', '-'),
(23, 1, '5D HATCHBACK', '71x75.6mm', 8, 2, 'Air Conditioning', '10.5', 'Electronic Brake Force Distribution, Electronic Stability Program, Hill Holder, Traction Control System', 'TURBO 4', 'FRONT WHEEL DRIVE', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control, Parking Distance Control Rear, Reversing Camera, Trip Computer, Voice Recognition System', '1.2L', 'TURBO MPFI', 'Radio CD with 6 Speakers', '2018-Volkswagen-Polo-R-Line.jpg', 'DISC - VENTILATED', '6x15', 'MacPherson strut, Coil Spring, Gas damper, Anti roll bar', '185/60 R15', '4.8L / 100km', '45L', 'PREMIUM UNLEADED PETROL', '143mm', '1453mm', '1082', '3972mm', '66kW @  4400rpm', '160Nm @  1400rpm', 'Rs 26,45,000/-', 'DISC', '6x15', 'Torsion bar, Hydraulic double acting shock absorber', '185/60 R15', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '5', 'Central Locking Remote Control, Engine Immobiliser', '12 months /  15,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:1000  Unbrake:530', '5 SP MANUAL', '36 months /  999,000 kms', '2470', '1682mm', '2017', 'POLO', '-'),
(24, 0, '-', '82.5x92.8mm', 8, 2, 'Auto Climate Control with Dual Temp Zones, Heated Front Seats, Power Sunroof', '9.8', 'Adaptive Damping Control, 19 Inch Alloy Wheels, Electronic Brake Force Distribution, Electronic Stability Program, Hill Holder, Sports Suspension, Traction Control System', 'TURBO 4', 'FRONT WHEEL DRIVE', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control, Leather Steering Wheel, Multi Function Steering Wheel, Parking Distance Control Rear, Power Steering, Reversing Camera, Trip Computer', '2.0L', 'TURBO MPFI', 'CD with 6 CD Stacker, Radio CD with 8 Speakers', 'download (13).jpg', 'DISC - VENTILATED', '8.0x19', 'MacPherson strut, Coil Spring, Gas damper, Anti roll bar', '235/35 R19', '8.1L / 100km', '55L', 'PREMIUM UNLEADED PETROL', '142mm', '1410mm', '1371', '4255mm', '188kW @  6000rpm', '330Nm @  2500rpm', 'Rs 82,50,000/-', 'DISC - VENTILATED', '8.0x19', 'Multi-link system, Coil Spring, Gas damper, Anti roll bar', '235/35 R19', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Seatbelts - Pre-tensioners Front Seats, Side Front Air Bags', '4', 'Alarm System/Remote Anti Theft, Central Locking Remote Control, Engine Immobiliser', '12 months /  15,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:0 Unbrake:0', '6 SP MANUAL', '36 months /  999,000 kms', '2575', '1820mm', '2017', 'SCIROCCO', '-'),
(25, 1, '4D SEDAN', '82.5x84.2mm', 8, 3, 'Automatic Climate Control Filtered, Air Con + Climate Control Multi Zone', '9.6', '17 Inch Alloy Wheels, Electronic Brake Force Distribution, Hill Holder, Traction Control System, Vehicle Stability Control', 'TURBO 4', 'FRONT WHEEL DRIVE', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control, Leather Steering Wheel, Multi Function Steering Wheel, Parking Distance Control Rear, Power Steering, Reversing Camera, Satellite Navigation, Trip Computer', '1.8L', 'TURBO MPFI', 'Radio CD with 8 Speakers', 'vw-passat-r-line-sedan-grey-2016.jpg', 'DISC - VENTILATED', '7*17', 'MacPherson strut, Coil Spring, Gas damper, Anti roll bar', '215/50 R17', '6L/100km', '70L', 'PREMIUM UNLEADED PETROL', '145mm', '1456mm', '1450', '4767mm', '132kW @  5100rpm', '250Nm @  1250rpm', 'Rs 58,00,000/-', 'DISC', '7*17', 'Multi-link system, Coil Spring, Gas damper, Anti roll bar', '215/50 R17', '-', '5', '-', '12 months /  15,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:1800 Unbrake:750', '7 SP AUTO DIRECT SHIFT', '36 months /  999,000 kms', '2791', '1832mm', '2017', 'PASSAT', '-'),
(26, 0, '-', '86x94.3mm', 7, 1, 'Auto Climate Control with Dual Temp Zones, Heated Front Seats, Power Sunroof', '14', '19 Inch Alloy Wheels, Electronic Brake Force Distribution, Electronic Damper Control, Hill Holder, Sports Suspension, Traction Control System', 'DIESEL TURBO 4', 'ALL WHEEL DRIVE', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control, Multi Function Steering Wheel, Mobile Phone Connectivity, Parking Distance Control Rear, Power Steering, Reversing Camera, Trip Computer', '2.2L', 'DIESEL TURBO F/INJ', 'Radio CD with 6 Speakers, Sound System', 'download (15).jpg', 'DISC - VENTILATED', '7*19', 'MacPherson strut, Coil Spring, Gas damper, Anti roll bar', '225/55 R19', '5.7L / 100km', '58L', 'DIESEL', '150mm', '1710mm', '1687', '4540mm', '129kW @  4500rpm', '420Nm @  2000rpm', 'Rs 86,00,000/-', 'DISC', '7*19', 'Multi-link system, Coil Spring, Gas damper, Anti roll bar', '225/55 R19', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '5', '-', '6 months /  10,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:1800  Unbrake:750', '6 SP AUTOMATIC', '36 months /  999,000 kms', '2700', '1840mm', '2017', 'CX-5', '-'),
(28, 1, 'DUAL CAB UTILITY', '86x105.1mm', 10, 6, 'Air Conditioning', '15.5', '17 Inch Alloy Wheels, Electronic Brake Force Distribution, Hill Holder, Traction Control System, Vehicle Stability Control', 'DIESEL TURBO 4', '4x4', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control, Leather Steering Wheel, Multi Function Steering Wheel, Mobile Phone Connectivity, Parking Distance Control Rear, Power Steering, Reversing Camera, Satellite Navigation, Trip Compute', '2.4L', 'DIESEL TURBO F/INJ', 'Radio CD with 6 Speakers', '4502.jpg', 'DISC - VENTILATED', '7.5*17', 'Lower wishbone, Coil Spring, Hydraulic double acting shock absorber, Anti roll bar', '245/65 R17', '7.6L /100km', '75L', 'DIESEL', '205mm', '1780mm', '1965', '5280mm', '133kW @  3500rpm', '430Nm @  2500rpm', 'RS 50,00,000/-', 'DRUM', '7.5*17', 'Leaf spring, Hydraulic double acting shock absorber', '245/65 R17', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '5', 'Central Locking Remote Control, Engine Immobiliser', '12 months /  15,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:3100  Unbrake:750', '5 SP AUTOMATIC', '60 months /  100,000 kms', '3000', '1815mm', '2017', 'TRITON', '-'),
(29, 0, '-', '86x86mm', 14, 1, 'Auto Climate Control with Dual Temp Zones', '16', '17 Inch Alloy Wheels, Electronic Brake Force Distribution, Hill Holder, Traction Control System, Vehicle Stability Control', 'DIESEL TURBO 4', 'ALL WHEEL DRIVE', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control, Parking Distance Control Rear, Reversing Camera, Trip Computer, Voice Recognition System', '2.0L', 'DIESEL TURBO F/INJ', 'Radio CD with 6 Speakers', '967e799c48fe7fd073fba805702a0a0c.jpg', 'DISC - VENTILATED', '7*17', 'MacPherson strut, Coil Spring, Gas damper, Anti roll bar', '225/60 R17', '6.4L/100km', '60L', 'DIESEL', '220mm', '1735mm', '1635', '4610mm', '108kW @  3600rpm', '350Nm @  1600rpm', 'RS 1,07,80,000/-', 'DISC - VENTILATED', '7*17', 'Double wishbone, Coil Spring, Gas damper, Anti roll bar', '225/60 R17', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Seatbelts - Pre-tensioners Front Seats, Side Front Air Bags', '5', 'Central Locking Remote Control, Engine Immobiliser', '6 months /  12.5,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:1800  Unbrake:750', 'CONTINUOUS VARIABLE', '36 months /  999,000 kms', '2640mm', '1795mm', '2017', 'FORESTER', '-'),
(30, 0, '-', '86x86mm', 14, 1, 'Air Conditioning', '15.2', '17 Inch Alloy Wheels, Electronic Brake Force Distribution, Hill Holder, Traction Control System, Vehicle Stability Control', 'DIESEL TURBO 4', 'ALL WHEEL DRIVE', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control, Multi Function Steering Wheel, Mobile Phone Connectivity, Parking Distance Control Rear, Power Steering, Reversing Camera, Trip Computer', '2.0L', 'TURBO CDI', 'Radio CD with 6 Speakers', '0f13a308-488e-4b34-8dda-b5dd3eeb69e5.JPG', 'DISC - VENTILATED', '7*17', 'MacPherson strut, Coil Spring, Gas damper, Anti roll bar', '225/65 R17', '6.3L/100km', '60L', 'DIESEL', '213mm', '1675mm', '1590', '4815mm', '110kW @  3600rpm', '350Nm @  1600rpm', 'RS 78,00,000/-', 'DISC - VENTILATED', '7*17', 'Double wishbone, Coil Spring, Gas damper, Anti roll bar', '225/65 R17', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '5', 'Central Locking Remote Control, Engine Immobiliser', '6 months /  12.5,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:1700  Unbrake:750', 'CONTINUOUS VARIABLE', '36 months /  100,000 kms', '2745', '1840mm', '2017', 'SUBARU OUTBACK', '-'),
(31, 0, '4D SEDAN', '83x92mm', 15, 3, 'Automatic Air Con / Climate Control', '9.8', 'Active Body Control Suspension, Active Steering, Adaptive Damping Control, 18 Inch Alloy Wheels, Electronic Stability Program, Hill Holder, Traction Control System', 'TURBO 4', 'REAR WHEEL DRIVE', 'Leather Steering Wheel, Multi Function Steering Wheel, Mobile Phone Connectivity, Parking Distance Control Rear, Power Steering, Reversing Camera, Trip Computer', '2.0L', 'TURBO DIRECT F/INJ', 'Radio Compact Disc Player', 'images.jpg', 'DISC - VENTILATED', '8.0x18', 'Multi-link system, Coil Spring, Gas damper, Anti roll bar', '245/45 R18', '6.4L/100km', '66L', 'PREMIUM UNLEADED PETROL', '111mm', '1470mm', '1780', '4925mm', '135kW @  5500rpm', '300Nm @  1200rpm', 'RS 2,10,00,000/-', 'DISC', '8.0x18', 'Multi-link system, Coil Spring, Gas damper, Anti roll bar', '245/45 R18', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags', '5', 'Engine Immobiliser', '12 months /  25,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:0 Unbrake:0', '9 SP AUTOMATIC G-TRONIC', '36 months /  999,000 kms', '2939', '1852mm', '2017', 'E200', '-'),
(32, 1, '-', '81x96.9mm', 3, 6, 'Air Conditioner', '10.6', '-', 'INLINE 4', 'ALL WHEEL DRIVE', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control, Multi Function Steering Wheel, Mobile Phone Connectivity, Parking Distance Control Rear, Power Steering, Reversing Camera, Trip Computer', '-', '	2.2 L 16 DOHC VTT DICOR', 'Radio CD with 4 Speakers', 'pickups-gallery01.jpg', 'DISC ', '-', '-', '215/75 R16', '-', '65L', 'DIESEL', '200mm', '1833mm', '1900', '5152mm', '140 bhp @ 4000 RPM', '320 Nm @ 1750 RPM', 'RS 29,20,000/-', 'DRUM', '-', '-', '215/75 R16', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '5', '-', '6 months /  10,000 kms', 'POWER ASSISTED', '-', 'Manual', '36 months /  100,000 kms', '-', '1860mm', '2017', 'XENON', '-'),
(33, 0, '4D WAGON', '-', 15, 1, 'Air Conditioning', '-', '19 Inch Alloy Wheels, Electronic Brake Force Distribution, Electronic Damper Control, Hill Holder, Sports Suspension, Traction Control System', 'INLINE 4', 'FRONT WHEEL DRIVE', '-', '-', 'DIESEL TURBO F/INJ', 'Radio CD with 6 Speakers', 'mercedes gla 200.jpg', 'DISC - VENTILATED', '-', 'MacPherson strut, Coil Spring, Gas damper, Anti roll bar', '235/50 R18', '-', '50L', 'DIESEL', '183mm', '1494mm', '1585', '4417mm', '134 bhp @ 3600 RPM', '300 Nm @ 1600 RPM', 'RS 2,10,00,000', 'DISC', '-', 'Torsion bar, Coil Spring, Hydraulic double acting shock absorber', '235/50 R18', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '5', 'Central Locking Remote Control, Engine Immobiliser', '12 months /  15,000 kms', 'RACK & PINION - POWER ASSISTED', '-', 'Automatic ', '36 months /  100,000 kms', '-', '1804mm', '2017', 'GLA 200', '-'),
(34, 0, '-', '81x97mm', 5, 7, 'Air Conditioning', '10.3', '17 Inch Alloy Wheels, Electronic Brake Force Distribution, Hill Holder, Traction Control System, Vehicle Stability Control', 'INLINE 4', 'FRONT WHEEL DRIVE', '-', '-', 'MULTI POINT F/INJ', 'Radio CD with 6 Speakers', 'kia soul.jpg', 'DISC - VENTILATED', '6.5x17', 'MacPherson strut, Coil Spring, Gas damper, Anti roll bar', '215/55 R17', '-', '-', 'Electric', '150mm', '1619mm', '1375', '4140mm', '113kW @  6200rpm', '191Nm @  4700rpm', 'RS 58,00,000/-', 'DISC', '6.5x17', 'Torsion bar, Coil Spring, Hydraulic double acting shock absorber', '215/55 R17', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '5', 'Alarm System/Remote Anti Theft, Central Locking Remote Control, Engine Immobiliser', '12 months /  15,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:1100  Unbrake:550', '6 SP AUTOMATIC', '84 months /  999,000 kms', '2570', '1800mm', '2017', 'SOUL EV', '-'),
(35, 0, '4D WAGON', '83x92.4mm', 11, 1, '-', '15.5', '20 Inch Alloy Wheels, Electronic Brake Force Distribution, Hill Holder, Traction Control System', 'DIESEL TURBO 4', 'FOUR WHEEL DRIVE', 'Cruise Control, Leather Steering Wheel, Multi Function Steering Wheel, Reversing Camera, Satellite Navigation, Trip Computer', '2.0L', 'DIESEL TURBO F/INJ', 'Sound System with 10 Speakers', 'landrover.jpg', 'DISC - VENTILATED', '8.0x20', 'Independent, Double wishbone, MacPherson strut', '245/45 R20', '6.5L/100km', '77L', 'DIESEL', '220mm', '1888mm', '2115', '4970mm', '177kW @  4000rpm', '500Nm @  1500rpm', 'RS 2,30,00,000/-', 'DISC - VENTILATED', '8.0x20', 'Independent, Multi-link system', '245/45 R20', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags', '5', 'Alarm System/Remote Anti Theft, Central Locking Remote Control, Engine Immobiliser', '12 months /  15,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:3500  Unbrake:750', '8 SP AUTOMATIC', '36 months /  100,000 kms', '2923', '2073mm', '2016', 'DISCOVERY', '-'),
(36, 0, '4D WAGON', '87.5x83.1mm', 11, 1, 'Auto Climate Control with Dual Temp Zones, Automatic Climate Control Filtered', '10', 'Auto Stability Control, 18 Inch Alloy Wheels, Electronic Brake Force Distribution, Electronic Stability Program, Hill Holder, Traction Control System, Vehicle Stability Control', 'TURBO 4', 'ALL WHEEL DRIVE', 'Cruise Control, Leather Steering Wheel, Multi Function Steering Wheel, Parking Distance Control Rear, Reversing Camera, Satellite Navigation, Trip Computer', '2.0L', 'TURBO MPFI', 'Sound System with 10 Speakers', 'landroverdiscoverysporty.jpg', 'DISC - VENTILATED', '8x18', 'MacPherson strut', '235/60 R18', '8.2L / 100km', '65L', 'PREMIUM UNLEADED PETROL', '212mm', '1690mm', '1759', '4590mm', '177kW @  5500rpm', '340Nm @  3200rpm', 'RS 2,30,50,000/-', 'DISC', '8x18', 'Coil Spring', '235/60 R18', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags', '5', 'Central Locking Remote Control, Engine Immobiliser', '12 months /  20,000 kms', 'ELECTRIC POWER STEERING', 'Brake:2000  Unbrake:750', '9 SP AUTOMATIC', '36 months /  100,000 kms', '2741', '1894mm', '2017', 'DISCOVERY SPORT', '-'),
(37, 0, '4D SEDAN', '89x100mm', 7, 3, 'Auto Climate Control with Dual Temp Zones, Heated Front Seats, Power Sunroof', '13', '19 Inch Alloy Wheels, Electronic Brake Force Distribution, Electronic Damper Control, Hill Holder, Sports Suspension, Traction Control System', 'INLINE 4', 'FRONT WHEEL DRIVE', 'Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control Intelligent/Active, Leather Steering Wheel, Multi Function Steering Wheel, Parking Distance Control Rear, Power Steering, Reversing Camera, Satellite Navigation, Trip Computer', '2.5L', 'MULTI POINT F/INJ', 'Radio Compact Disc Player, Sound System with 11 Speakers', 'mazda6.jpg', 'DISC - VENTILATED', '7.5x19', 'MacPherson strut, Coil Spring, Gas damper, Anti roll bar', '225/45 R19', '6.6L/100km', '62L', 'UNLEADED PETROL', '165mm', '1450mm', '1503', '4865mm', '138kW @  5700rpm', '250Nm @  3250rpm', 'RS 81,00,000/-', 'DISC', '7.5x19', 'Multi-link system, Coil Spring, Gas damper, Anti roll bar', '225/45 R19', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '5', 'Central Locking Remote Control, Engine Immobiliser', '6 months /  10,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:1500  Unbrake:550', '6 SP AUTOMATIC', '36 months /  999,000 kms', '2830', '1840mm', '2017', 'MAZDA 6', '-'),
(38, 0, '4D SEDAN', '83.5x91.2mm', 7, 3, 'Air Conditioning', '13', '16 Inch Alloy Wheels, Electronic Brake Force Distribution, Hill Holder, Traction Control System', 'INLINE 4', 'FRONT WHEEL DRIVE', 'Driver Adjustable Steering Wheel - Tilt & Telescopic, Cruise Control, Leather Steering Wheel, Multi Function Steering Wheel, Reversing Camera, Satellite Navigation, Trip Computer, Voice Recognition System', '2.0L', 'GASOLINE DIRECT INJ', 'Sound System with 6 Speakers', 'mazda3.jpg', 'DISC - VENTILATED', '6.5x16', 'MacPherson strut, Coil Spring, Gas damper, Anti roll bar', '205/60 R16', '5.8L / 100km', '51L', 'UNLEADED PETROL', '155mm', '1450mm', '1258', '4580mm', '114kW @  6000rpm', '200Nm @  4000rpm', 'RS 68,00,000/-', 'DISC', '6.5x16', 'Multi-link system, Coil Spring, Gas damper, Anti roll bar', '205/60 R16', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '5', 'Central Locking Remote Control, Engine Immobiliser', '12 months /  10,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:1200  Unbrake:600', '6 SP MANUAL', '36 months /  999,000 kms', '2700', '1795mm', '2017', 'MAZDA 3', '-'),
(39, 0, '2D WAGON', '78x69.5mm', 12, 1, 'Air Conditioning', '9.5', '15 Inch Alloy Wheels, Electronic Stability Program', 'INLINE 4', 'FOUR WHEEL DRIVE', 'Leather Steering Wheel, Power Steering', '1.3L', 'MULTI POINT F/INJ', 'Radio CD with 4 Speakers', 'jinny.png', 'DISC ', '5.5Jx15', '3 links, Coil Spring, Rigid axle', '205/70 R15', '7.3L / 100km', '40L', 'UNLEADED PETROL', '195mm', '1670mm', '1045', '3625mm', '60kW @  5500rpm', '110Nm @  4500rpm', 'RS 35,00,000/-', 'DRUM', '5.5Jx15', '3 links, Coil Spring, Rigid axle', '205/70 R15', 'Dual Front Airbag Package, Anti-lock Braking, Seatbelts - Pre-tensioners Front Seats', '4', 'Central Locking Remote Control, Engine Immobiliser', '6 months /  10,000 kms', 'BALL & NUT - POWER ASSISTED', 'Brake:1300  Unbrake:350', '5 SP MANUAL 4x4', '36 months /  100,000 kms', '2250', '1600mm', '2017', 'JIMNY', '-'),
(40, 0, '5D HATCHBACK', '73x82mm', 12, 2, 'Air Conditioning', '10.0', 'Electronic Brake Force Distribution, Electronic Stability Program, Hill Holder, Traction Control System', 'INLINE 4', 'FRONT WHEEL DRIVE', 'Cruise Control, Parking Distance Control Rear, Power Steering, Trip Computer', '1.4L', 'MULTI POINT F/INJ', 'Radio CD with 4 Speakers', 'swift.png', 'DISC - VENTILATED', '5x15', 'MacPherson strut, Coil Spring, Gas damper, Anti roll bar', '175/65 R15', '6.2L / 100km', '42L', 'UNLEADED PETROL', '140mm', '1510mm', '1025', '3850mm', '70kW @  6000rpm', '130Nm @  4000rpm', 'RS 30,49,000/-', 'DRUM', '5x15', 'Torsion bar, Coil Spring, Hydraulic double acting shock absorber', '175/65 R15', 'Dual Front Airbag Package, Anti-lock Braking, Head Airbags, Side Airbags, Seatbelts - Pre-tensioners Front Seats', '5', 'Central Locking Remote Control, Engine Immobiliser', '6 months /  10,000 kms', 'RACK & PINION - POWER ASSISTED', 'Brake:0 Unbrake:0', '4 SP AUTOMATIC', '36 months /  100,000 kms', '2430', '1695mm', '2017', 'SWIFT', '-');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auction`
--
ALTER TABLE `auction`
  ADD CONSTRAINT `FKD88CDE433D50A5F3` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FKD88CDE43ACA67B53` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKD88CDE43F5767E01` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`);

--
-- Constraints for table `bidder`
--
ALTER TABLE `bidder`
  ADD CONSTRAINT `FKAD3189F4213DE6C1` FOREIGN KEY (`auction_id`) REFERENCES `auction` (`id`),
  ADD CONSTRAINT `FKAD3189F4ACA67B53` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `sales_reg`
--
ALTER TABLE `sales_reg`
  ADD CONSTRAINT `FKFB0BCAE16B55D3E1` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`);

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `FK14638F2C3D50A5F3` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK14638F2CF5767E01` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
