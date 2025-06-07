-- phpMyAdmin SQL Dump
-- version 4.0.10deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 17, 2025 at 06:14 PM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `VacationDatabaseSystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `Accommodation`
--

CREATE TABLE IF NOT EXISTS `Accommodation` (
  `accommodation_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `payment_type` enum('Credit','Bank Transfer','Cash') NOT NULL,
  `room_type` varchar(50) DEFAULT 'Standart',
  PRIMARY KEY (`accommodation_id`),
  KEY `customer_id` (`customer_id`),
  KEY `hotel_id` (`hotel_id`),
  KEY `accommodation_id` (`accommodation_id`),
  KEY `hotel_id_2` (`hotel_id`),
  KEY `hotel_id_3` (`hotel_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=502 ;

--
-- Dumping data for table `Accommodation`
--

INSERT INTO `Accommodation` (`accommodation_id`, `customer_id`, `hotel_id`, `check_in_date`, `check_out_date`, `total_price`, `payment_type`, `room_type`) VALUES
(1, 1, 1, '2024-12-01', '2024-12-05', 800.00, 'Credit', 'Standart'),
(2, 2, 2, '2024-12-03', '2024-12-07', 480.00, 'Bank Transfer', 'Standart'),
(3, 3, 3, '2024-12-01', '2024-12-05', 500.00, '', 'Standart'),
(4, 4, 4, '2024-12-07', '2025-12-10', 900.00, 'Cash', 'Standart'),
(5, 5, 5, '2024-12-09', '2024-12-12', 750.00, 'Cash', 'Standart'),
(6, 6, 6, '2024-12-10', '2024-12-15', 800.00, '', 'Standart'),
(7, 7, 7, '2024-12-13', '2024-12-17', 1000.00, 'Credit', 'Standart'),
(8, 8, 8, '2024-12-20', '2024-12-25', 1000.00, '', 'Standart'),
(9, 9, 9, '2024-12-17', '2024-12-21', 920.00, 'Bank Transfer', 'Standart'),
(10, 10, 10, '2024-12-19', '2024-12-22', 1020.00, 'Cash', 'Standart'),
(11, 11, 11, '2024-12-21', '2024-12-24', 950.00, 'Bank Transfer', 'Standart'),
(12, 12, 12, '2024-12-23', '2024-12-27', 1100.00, 'Credit', 'Standart'),
(13, 13, 13, '2024-12-25', '2024-12-29', 780.00, 'Cash', 'Standart'),
(14, 14, 14, '2024-12-27', '2024-12-30', 860.00, 'Credit', 'Standart'),
(15, 15, 15, '2024-12-29', '2025-01-02', 1200.00, 'Cash', 'Standart'),
(16, 16, 16, '2024-12-31', '2025-01-03', 880.00, 'Credit', 'Standart'),
(17, 17, 17, '2025-01-02', '2025-01-05', 940.00, 'Bank Transfer', 'Standart'),
(18, 18, 18, '2025-01-04', '2025-01-07', 1120.00, 'Cash', 'Standart'),
(19, 19, 19, '2025-01-06', '2025-01-09', 1300.00, 'Bank Transfer', 'Standart'),
(20, 20, 20, '2025-01-08', '2025-01-11', 1050.00, 'Cash', 'Standart'),
(21, 21, 21, '2025-01-10', '2025-01-13', 950.00, 'Cash', 'Standart'),
(22, 22, 22, '2025-01-12', '2025-01-15', 1150.00, 'Credit', 'Standart'),
(23, 23, 23, '2025-01-14', '2025-01-17', 720.00, 'Cash', 'Standart'),
(24, 24, 24, '2025-01-16', '2025-01-19', 920.00, 'Bank Transfer', 'Standart'),
(25, 25, 25, '2025-01-18', '2025-01-21', 830.00, 'Cash', 'Standart'),
(26, 26, 26, '2025-01-20', '2025-01-23', 1040.00, 'Credit', 'Standart'),
(27, 27, 27, '2025-01-22', '2025-01-25', 1160.00, 'Credit', 'Standart'),
(28, 28, 28, '2025-01-24', '2025-01-27', 980.00, 'Cash', 'Standart'),
(501, 27, 15, '2025-06-01', '2025-06-07', 1200.00, 'Credit', 'Standart');

-- --------------------------------------------------------

--
-- Stand-in structure for view `ActiveCustomers`
--
CREATE TABLE IF NOT EXISTS `ActiveCustomers` (
`customer_id` int(11)
,`first_name` varchar(50)
,`last_name` varchar(50)
,`status` enum('Active','Cancelled','No Reservation Yet')
);
-- --------------------------------------------------------

--
-- Table structure for table `Activity`
--

CREATE TABLE IF NOT EXISTS `Activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(11) DEFAULT NULL,
  `activity_date` datetime NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `participant_limit` int(11) DEFAULT NULL,
  `ticket_price` decimal(10,2) DEFAULT '0.00',
  `is_recurring` tinyint(1) DEFAULT NULL,
  `age_restriction` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`activity_id`),
  KEY `hotel_id` (`hotel_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `Activity`
--

INSERT INTO `Activity` (`activity_id`, `hotel_id`, `activity_date`, `location_id`, `participant_limit`, `ticket_price`, `is_recurring`, `age_restriction`) VALUES
(1, 1, '2024-12-25 10:00:00', 1001, 50, 25.00, 1, '+18'),
(2, 1, '2024-12-26 15:00:00', 1002, NULL, 0.00, 0, NULL),
(3, 2, '2024-12-27 09:30:00', 1003, 100, 50.00, 1, NULL),
(4, 2, '2024-12-28 14:00:00', 1004, 30, 15.00, 0, '+12'),
(5, 3, '2024-12-29 11:00:00', 1005, 20, 0.00, 1, '+18'),
(6, 3, '2024-12-30 18:00:00', 1006, 60, 40.00, 0, '+16'),
(7, 4, '2024-12-31 10:00:00', 1007, NULL, 0.00, 1, '+8'),
(8, 4, '2025-01-01 19:00:00', 1008, 15, 10.00, 0, '+21'),
(9, 5, '2025-01-02 16:30:00', 1009, 80, 20.00, 1, '+18'),
(10, 5, '2025-01-03 12:00:00', 1010, NULL, 5.00, 0, '+13'),
(11, 6, '2025-01-04 09:00:00', 1011, 25, 0.00, 1, NULL),
(12, 6, '2025-01-05 20:00:00', 1012, 10, 30.00, 0, '+18'),
(13, 7, '2025-01-06 14:30:00', 1013, 35, 12.50, 1, NULL),
(14, 7, '2025-01-07 17:00:00', 1014, NULL, 0.00, 0, '+8'),
(15, 8, '2025-01-08 10:00:00', 1015, 100, 50.00, 1, '+18'),
(16, 8, '2025-01-09 18:00:00', 1016, 75, 20.00, 0, '+21'),
(17, 9, '2025-01-10 08:00:00', 1017, NULL, 0.00, 1, NULL),
(18, 9, '2025-01-11 16:00:00', 1018, 50, 25.00, 0, '+18'),
(19, 10, '2025-01-12 15:00:00', 1019, 20, 0.00, 1, '+12'),
(20, 10, '2025-01-13 09:00:00', 1020, 40, 15.00, 0, NULL),
(21, 1, '2025-01-14 17:30:00', 1021, NULL, 0.00, 1, '+18'),
(22, 2, '2025-01-15 11:00:00', 1022, 30, 35.00, 0, '+8'),
(23, 3, '2025-01-16 14:00:00', 1023, 25, 0.00, 1, '+16'),
(24, 4, '2025-01-17 10:00:00', 1024, 10, 20.00, 0, '+21'),
(25, 5, '2025-01-18 19:00:00', 1025, 80, 50.00, 1, '+18'),
(26, 6, '2025-01-19 13:00:00', 1026, 50, 10.00, 0, '+13'),
(27, 7, '2025-01-20 15:00:00', 1027, NULL, 0.00, 1, NULL),
(28, 8, '2025-01-21 18:00:00', 1028, 30, 40.00, 0, '+12');

-- --------------------------------------------------------

--
-- Table structure for table `Customers`
--

CREATE TABLE IF NOT EXISTS `Customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `birth_date` date NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `email` (`email`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=103 ;

--
-- Dumping data for table `Customers`
--

INSERT INTO `Customers` (`customer_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `birth_date`) VALUES
(1, 'John', 'Smith', 'john.smith@example.com', '+1234567890', '123 Elm Street, Springfield', '1985-06-15'),
(2, 'Jane', 'Doe', 'jane.doe@example.com', '+1234567891', '456 Oak Avenue, Metropolis', '1992-08-10'),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', '+1234567892', '789 Pine Lane, Gotham', '1980-01-01'),
(4, 'Emily', 'Davis', 'emily.davis@example.com', '+1234567893', '101 Maple Drive, Smallville', '1995-03-12'),
(5, 'Chris', 'Brown', 'chris.brown@example.com', '+1234567894', '202 Birch Boulevard, Star City', '1978-12-20'),
(6, 'Sarah', 'Miller', 'sarah.miller@example.com', '+1234567895', '303 Cedar Way, Central City', '1990-07-07'),
(7, 'David', 'Wilson', 'david.wilson@example.com', '+1234567896', '404 Cherry Crescent, Coast City', '1988-11-25'),
(8, 'Emma', 'Taylor', 'emma.taylor@example.com', '+1234567897', '505 Willow Alley, Hill Valley', '1996-09-30'),
(9, 'Daniel', 'Anderson', 'daniel.anderson@example.com', '+1234567898', '606 Sycamore Circle, Riverdale', '1983-05-22'),
(10, 'Sophia', 'Thomas', 'sophia.thomas@example.com', '+1234567899', '707 Poplar Path, Sunnydale', '1997-04-18'),
(11, 'James', 'Jackson', 'james.jackson@example.com', '+1234567800', '808 Aspen Avenue, Greenvale', '1989-02-14'),
(12, 'Olivia', 'White', 'olivia.white@example.com', '+1234567801', '909 Magnolia Lane, Rosewood', '1994-10-10'),
(13, 'Ethan', 'Harris', 'ethan.harris@example.com', '+1234567802', '1010 Chestnut Road, Shadyside', '1975-01-30'),
(14, 'Ava', 'Martin', 'ava.martin@example.com', '+1234567803', '1111 Walnut Drive, Kingsland', '1991-06-05'),
(15, 'Lucas', 'Garcia', 'lucas.garcia@example.com', '+1234567804', '1212 Hickory Street, Elmwood', '1987-03-21'),
(16, 'Mia', 'Martinez', 'mia.martinez@example.com', '+1234567805', '1313 Dogwood Terrace, Briarwood', '1993-08-02'),
(17, 'Liam', 'Robinson', 'liam.robinson@example.com', '+1234567806', '1414 Maplewood Court, Cloverfield', '1982-11-11'),
(18, 'Isabella', 'Clark', 'isabella.clark@example.com', '+1234567807', '1515 Redwood Lane, Ravenswood', '1998-07-27'),
(19, 'Noah', 'Lewis', 'noah.lewis@example.com', '+1234567808', '1616 Fir Place, Everwood', '1981-04-04'),
(20, 'Charlotte', 'Walker', 'charlotte.walker@example.com', '+1234567809', '1717 Palm Court, Thornhill', '1999-12-12'),
(21, 'Mason', 'Young', 'mason.young@example.com', '+1234567810', '1818 Cypress Way, Blackwood', '1979-10-25'),
(22, 'Amelia', 'Allen', 'amelia.allen@example.com', '+1234567811', '1919 Larch Lane, Whitestone', '1986-03-09'),
(23, 'Logan', 'King', 'logan.king@example.com', '+1234567812', '2020 Spruce Boulevard, Brookfield', '1992-05-14'),
(24, 'Harper', 'Scott', 'harper.scott@example.com', '+1234567813', '2121 Alder Drive, Northfield', '1995-09-19'),
(25, 'Elijah', 'Hill', 'elijah.hill@example.com', '+1234567814', '2222 Juniper Street, Lakeshore', '1984-02-22'),
(26, 'Evelyn', 'Adams', 'evelyn.adams@example.com', '+1234567815', '2323 Elmwood Road, Pinehurst', '1990-01-01'),
(27, 'Oliver', 'Baker', 'oliver.baker@example.com', '+1234567816', '2424 Birchwood Circle, Maplewood', '1983-07-17'),
(28, 'Sophia', 'Brown', 'sophia.brown@example.com', '+1234567817', '2525 Sycamore Drive, Willowbrook', '1996-08-08');

-- --------------------------------------------------------

--
-- Table structure for table `Destinations`
--

CREATE TABLE IF NOT EXISTS `Destinations` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `continent` varchar(50) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2002 ;

--
-- Dumping data for table `Destinations`
--

INSERT INTO `Destinations` (`location_id`, `city`, `country`, `continent`) VALUES
(1001, 'Paris', 'France ', 'Europe'),
(1002, 'Malé', 'Maldives', 'Asia'),
(1003, 'Aspen', 'United States', 'North America'),
(1004, 'Tokyo', 'Japan', 'Asia'),
(1005, 'Bali', 'Indonesia', 'Asia'),
(1006, 'Zurich', 'Switzerland', 'Europe'),
(1007, 'Cape Town', 'South Africa', 'Africa'),
(1008, 'Rio de Janeiro', 'Brazil', 'South America'),
(1009, 'Sydney', 'Australia', 'Oceania'),
(1010, 'London', 'United Kingdom', 'Europe'),
(1011, 'New York', 'United States', 'North America'),
(1012, 'Rome', 'Italy\r\n', 'Europe'),
(1013, 'Bangkok', 'Thailand', 'Asia'),
(1014, 'Dubai', 'United Arab Emirates ', 'Asia'),
(1015, 'Hong Kong', 'China', 'Asia'),
(1016, 'Singapore', 'Singapore', 'Asia'),
(1017, 'Istanbul', 'Türkiye', 'Europe'),
(1018, 'Moscow', 'Russia', 'Europe'),
(1019, 'Vancouver', 'Canada', 'North America'),
(1020, 'Buenos Aires', 'Argentina', 'South America'),
(1021, 'Helsinki', 'Finland', 'Europe'),
(1022, 'Vienna', 'Austria', 'Europe'),
(1023, 'Berlin', 'Germany', 'Europe'),
(1024, 'Barcelona', 'Spain', 'Europe'),
(1025, 'Mumbai', 'India', 'Asia'),
(1026, 'Lima', 'Peru', 'South America'),
(1027, 'Cairo', 'Egypt', 'Africa'),
(1028, 'Mexico City', 'Mexico', 'North America');

-- --------------------------------------------------------

--
-- Table structure for table `Feedback`
--

CREATE TABLE IF NOT EXISTS `Feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `rating` tinyint(4) DEFAULT NULL,
  `comment` text,
  `feedback_category` enum('Accommodation','Hotels','Travel Option','Hygiene','Service Quality','Food Quality','Transportation Comfort') NOT NULL,
  `feedback_date` date NOT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `Feedback`
--

INSERT INTO `Feedback` (`feedback_id`, `customer_id`, `rating`, `comment`, `feedback_category`, `feedback_date`) VALUES
(1, 1, 4, 'Great room but noisy neighbors.', 'Accommodation', '2024-12-10'),
(2, 2, 5, 'Hotel staff were incredibly helpful.', 'Hotels', '2024-12-11'),
(3, 3, 3, 'Train was delayed but comfortable.', 'Travel Option', '2024-12-12'),
(4, 4, 5, 'Excellent hygiene in the bathrooms.', 'Hygiene', '2024-12-13'),
(5, 5, 4, 'Food was tasty but portions were small.', 'Food Quality', '2024-12-14'),
(6, 6, 3, 'Bus seats were cramped.', 'Transportation Comfort', '2024-12-15'),
(7, 7, 5, 'The service quality exceeded expectations.', 'Service Quality', '2024-12-16'),
(8, 8, 2, 'Hotel cleanliness could be improved.', 'Hygiene', '2024-12-17'),
(9, 9, 4, 'Plane was on time, smooth trip.', 'Travel Option', '2024-12-18'),
(10, 10, 4, 'Nice room with great view.', 'Accommodation', '2024-12-19'),
(11, 11, 5, 'Amazing breakfast options.', 'Food Quality', '2024-12-20'),
(12, 12, 3, 'Average hygiene standards.', 'Hygiene', '2024-12-21'),
(13, 13, 5, 'Beautiful hotel with friendly staff.', 'Hotels', '2024-12-22'),
(14, 14, 2, 'Ski equipment was old and unsafe.', 'Service Quality', '2024-12-23'),
(15, 15, 4, 'Car rental was smooth and affordable.', 'Travel Option', '2024-12-24'),
(16, 16, 5, 'Hygiene standards were exceptional.', 'Hygiene', '2024-12-25'),
(17, 17, 3, 'Food was okay but service was slow.', 'Food Quality', '2024-12-26'),
(18, 18, 5, 'Comfortable bike rentals, very clean.', 'Transportation Comfort', '2024-12-27'),
(19, 19, 4, 'Room was good, but noisy air conditioner.', 'Accommodation', '2024-12-28'),
(20, 20, 5, 'Best spa experience ever!', 'Service Quality', '2024-12-29'),
(21, 21, 2, 'Train was overcrowded.', 'Transportation Comfort', '2024-12-30'),
(22, 22, 5, 'Hotel exceeded all expectations.', 'Hotels', '2024-12-31'),
(23, 23, 4, 'Fun kayaking tour.', 'Travel Option', '2025-01-01'),
(24, 24, 3, 'Bus was late and uncomfortable.', 'Transportation Comfort', '2025-01-02'),
(25, 25, 5, 'Highly recommend this hotel.', 'Hotels', '2025-01-03'),
(26, 26, 5, 'Amazing hiking tour.', 'Service Quality', '2025-01-04'),
(27, 27, 4, 'Plane was smooth and relaxing.', 'Travel Option', '2025-01-05'),
(28, 28, 5, 'Perfectly clean hotel room.', 'Hygiene', '2025-01-06');

-- --------------------------------------------------------

--
-- Table structure for table `Hotels`
--

CREATE TABLE IF NOT EXISTS `Hotels` (
  `hotel_id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_name` varchar(100) NOT NULL,
  `hotel_type` enum('Bungalow','Villa','Suite') NOT NULL,
  `room_count` int(11) NOT NULL,
  `price_per_night` decimal(10,2) NOT NULL,
  `location` varchar(255) NOT NULL,
  `meal_services` varchar(255) NOT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=402 ;

--
-- Dumping data for table `Hotels`
--

INSERT INTO `Hotels` (`hotel_id`, `hotel_name`, `hotel_type`, `room_count`, `price_per_night`, `location`, `meal_services`) VALUES
(1, 'Hotel Grand Palace', 'Suite', 150, 200.50, 'Paris, France', 'Breakfast, Dinner'),
(2, 'Sunrise Resort', 'Bungalow', 80, 120.75, 'Malé, Maldives', 'All-inclusive'),
(3, 'Mountain Escape', '', 50, 75.00, 'Aspen, USA', 'Lunch, Dinner'),
(4, 'Tokyo Paradise', 'Suite', 100, 180.00, 'Tokyo, Japan', 'Breakfast Only'),
(5, 'Beachfront Bliss', 'Bungalow', 60, 210.30, 'Bali, Indonesia', 'All-inclusive'),
(6, 'Forest Retreat', '', 40, 90.50, 'Zurich, Switzerland', 'Dinner Only'),
(7, 'Ocean Breeze', 'Bungalow', 70, 250.00, 'Sydney, Australia', 'All-inclusive'),
(8, 'Royal Stay', 'Suite', 120, 300.00, 'London, England', 'Breakfast, Lunch, Dinner'),
(9, 'Eco Lodge', '', 30, 85.00, 'Cape Town, South Africa', 'Lunch Only'),
(10, 'Seaside Inn', 'Bungalow', 50, 195.00, 'Rio de Janeiro, Brazil', 'Breakfast, Dinner'),
(11, 'Desert Oasis', 'Suite', 140, 220.00, 'Dubai, UAE', 'All-inclusive'),
(12, 'Arctic View', '', 25, 110.00, 'Reykjavik, Iceland', 'Lunch, Dinner'),
(13, 'Urban Delight', 'Suite', 110, 275.00, 'New York, USA', 'Breakfast Only'),
(14, 'Island Paradise', 'Bungalow', 45, 230.00, 'Honolulu, USA', 'All-inclusive'),
(15, 'Nature''s Nest', '', 35, 95.00, 'Banff, Canada', 'Dinner Only'),
(16, 'Metropolitan Hotel', 'Suite', 200, 320.00, 'Hong Kong, China', 'Breakfast, Lunch'),
(17, 'Luxury Stay', 'Bungalow', 90, 400.00, 'Dubai, UAE', 'Breakfast, Dinner'),
(18, 'Rustic Haven', '', 20, 60.00, 'Kyoto, Japan', 'Lunch Only'),
(19, 'Sunny Retreat', 'Bungalow', 80, 150.00, 'Miami, USA', 'All-inclusive'),
(20, 'Mountain Peak', 'Suite', 160, 210.00, 'Whistler, Canada', 'Breakfast, Dinner'),
(21, 'Oceanfront Escape', 'Bungalow', 55, 245.00, 'Malé, Maldives', 'All-inclusive'),
(22, 'The Lakehouse', '', 45, 70.00, 'Interlaken, Switzerland', 'Lunch Only'),
(23, 'City Lights Hotel', 'Suite', 125, 290.00, 'Los Angeles, USA', 'Breakfast Only'),
(24, 'Coastal Comfort', 'Bungalow', 75, 205.00, 'Gold Coast, Australia', 'All-inclusive'),
(25, 'Woodland Retreat', '', 30, 80.00, 'Jackson Hole, USA', 'Dinner Only'),
(26, 'Tropical Bliss', 'Bungalow', 60, 185.00, 'Phuket, Thailand', 'All-inclusive'),
(27, 'Skyline View Hotel', 'Suite', 140, 320.00, 'Dubai, UAE', 'Breakfast, Dinner'),
(28, 'Riverfront Lodge', 'Suite', 50, 100.00, 'Salzburg, Austria', 'Lunch Only'),
(401, 'Flora Suite Hotel', 'Suite', 70, 350.00, 'Miami, USA', 'All-inclusive');

-- --------------------------------------------------------

--
-- Table structure for table `Insurance`
--

CREATE TABLE IF NOT EXISTS `Insurance` (
  `insurance_id` int(11) NOT NULL AUTO_INCREMENT,
  `reservation_id` int(11) DEFAULT NULL,
  `policy_number` varchar(50) NOT NULL,
  `coverage_details` enum('Health','Loss of Assets','Trip Cancellation') NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `insurance_provider` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`insurance_id`),
  KEY `reservation_id` (`reservation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `Insurance`
--

INSERT INTO `Insurance` (`insurance_id`, `reservation_id`, `policy_number`, `coverage_details`, `cost`, `start_date`, `end_date`, `insurance_provider`) VALUES
(2, 1004, 'POL00002', 'Loss of Assets', 95.00, '2024-12-03', '2024-12-10', NULL),
(3, 1005, 'POL00003', 'Trip Cancellation', 80.00, '2024-12-05', '2024-12-15', NULL),
(5, 1007, 'POL00005', 'Loss of Assets', 125.75, '2024-12-10', '2024-12-17', NULL),
(6, 1008, 'POL00006', 'Trip Cancellation', 100.00, '2024-12-12', '2024-12-20', NULL),
(8, 3002, 'POL00008', 'Loss of Assets', 95.50, '2024-12-18', '2024-12-25', NULL),
(9, 3009, 'POL00009', 'Trip Cancellation', 75.00, '2024-12-20', '2024-12-27', NULL),
(11, 3011, 'POL00011', 'Loss of Assets', 85.25, '2025-01-01', '2025-01-08', NULL),
(12, 3012, 'POL00012', 'Trip Cancellation', 95.75, '2025-01-03', '2025-01-10', NULL),
(14, 3014, 'POL00014', 'Loss of Assets', 110.50, '2025-01-07', '2025-01-14', NULL),
(15, 3015, 'POL00015', 'Trip Cancellation', 70.00, '2025-01-10', '2025-01-17', NULL),
(17, 3017, 'POL00017', 'Loss of Assets', 140.00, '2025-01-15', '2025-01-22', NULL),
(18, 3018, 'POL00018', 'Trip Cancellation', 100.00, '2025-01-17', '2025-01-24', NULL),
(20, 3020, 'POL00020', 'Loss of Assets', 90.00, '2025-01-23', '2025-01-30', NULL),
(21, 3021, 'POL00021', 'Trip Cancellation', 95.00, '2025-01-25', '2025-02-01', NULL),
(23, 3023, 'POL00023', 'Loss of Assets', 145.00, '2025-02-01', '2025-02-08', NULL),
(24, 3024, 'POL00024', 'Trip Cancellation', 115.00, '2025-02-03', '2025-02-10', NULL),
(26, 3026, 'POL00026', 'Loss of Assets', 125.50, '2025-02-09', '2025-02-16', NULL),
(27, 3027, 'POL00027', 'Trip Cancellation', 75.00, '2025-02-12', '2025-02-19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PastReservations`
--

CREATE TABLE IF NOT EXISTS `PastReservations` (
  `reservation_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `accommodation_id` int(11) DEFAULT NULL,
  `reservation_date` date DEFAULT NULL,
  `status` enum('Active','Cancelled','No Reservation Yet') DEFAULT NULL,
  `log_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `action_type` enum('UPDATE','DELETE','INSERT') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PastReservations`
--

INSERT INTO `PastReservations` (`reservation_id`, `customer_id`, `accommodation_id`, `reservation_date`, `status`, `log_date`, `action_type`) VALUES
(7001, 1, 3, '2024-07-08', 'Active', '2025-01-09 16:23:02', ''),
(7002, 2, 3, '2024-01-05', 'No Reservation Yet', '2025-01-09 16:23:02', ''),
(7001, 1, 3, '2024-07-08', 'Active', '2025-01-09 16:25:50', 'UPDATE'),
(7001, 1, 3, '2024-07-08', 'Cancelled', '2025-01-09 16:27:39', 'UPDATE'),
(7001, 1, 3, '2024-07-08', 'Cancelled', '2025-01-09 16:28:14', 'DELETE');

-- --------------------------------------------------------

--
-- Table structure for table `Photos`
--

CREATE TABLE IF NOT EXISTS `Photos` (
  `photo_id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_url` varchar(255) NOT NULL,
  `photo_type` enum('Interior','Exterior','Hotel Room','Pool','Food','Others') NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `upload_date` date NOT NULL,
  `resolution` varchar(50) DEFAULT NULL,
  `visibility_status` enum('Published','Preview','Deleted') NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  `file_size` decimal(6,2) DEFAULT NULL,
  `file_format` enum('JPEG','PNG','BMP','Others') NOT NULL,
  PRIMARY KEY (`photo_id`),
  KEY `hotel_id` (`hotel_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1021 ;

--
-- Dumping data for table `Photos`
--

INSERT INTO `Photos` (`photo_id`, `photo_url`, `photo_type`, `hotel_id`, `upload_date`, `resolution`, `visibility_status`, `tags`, `rating`, `file_size`, `file_format`) VALUES
(1001, 'https://example.com/photos/pool1.jpg', 'Pool', 1, '2024-12-01', '1920x1080', 'Published', 'pool, relaxing, water', 4.70, 2.50, 'JPEG'),
(1002, 'https://example.com/photos/room1.jpg', 'Hotel Room', 1, '2024-12-02', '1080x720', 'Published', 'room, cozy, modern', 4.50, 1.80, 'JPEG'),
(1003, 'https://example.com/photos/food1.jpg', 'Food', 2, '2024-12-03', '1280x720', 'Published', 'breakfast, buffet, delicious', 4.80, 1.60, 'PNG'),
(1004, 'https://example.com/photos/exterior1.jpg', 'Exterior', 2, '2024-12-04', '1920x1080', 'Published', 'exterior, building, view', 4.40, 2.20, 'JPEG'),
(1005, 'https://example.com/photos/pool2.jpg', 'Pool', 3, '2024-12-05', '1920x1080', 'Preview', 'pool, sunny, large', 4.60, 2.80, 'JPEG'),
(1006, 'https://example.com/photos/interior1.jpg', 'Interior', 3, '2024-12-06', '1280x720', 'Published', 'interior, elegant, spacious', 4.50, 1.90, 'PNG'),
(1007, 'https://example.com/photos/food2.jpg', 'Food', 4, '2024-12-07', '1080x720', 'Published', 'dinner, gourmet, plates', 4.90, 1.50, 'JPEG'),
(1008, 'https://example.com/photos/room2.jpg', 'Hotel Room', 4, '2024-12-08', '1920x1080', 'Deleted', 'room, clean, spacious', 4.20, 2.10, 'JPEG'),
(1009, 'https://example.com/photos/pool3.jpg', 'Pool', 5, '2024-12-09', '1280x720', 'Published', 'pool, small, tropical', 4.30, 1.70, 'PNG'),
(1010, 'https://example.com/photos/exterior2.jpg', 'Exterior', 5, '2024-12-10', '1920x1080', 'Published', 'building, luxury, design', 4.60, 2.40, 'JPEG'),
(1011, 'https://example.com/photos/interior2.jpg', 'Interior', 6, '2024-12-11', '1280x720', 'Preview', 'interior, lighting, decor', 4.40, 1.75, 'JPEG'),
(1012, 'https://example.com/photos/food3.jpg', 'Food', 6, '2024-12-12', '1920x1080', 'Published', 'breakfast, fresh, fruits', 4.70, 1.90, 'PNG'),
(1013, 'https://example.com/photos/room3.jpg', 'Hotel Room', 7, '2024-12-13', '1920x1080', 'Deleted', 'room, modern, comfortable', 4.50, 2.00, 'JPEG'),
(1014, 'https://example.com/photos/exterior3.jpg', 'Exterior', 7, '2024-12-14', '1920x1080', 'Published', 'exterior, architecture, resort', 4.80, 2.30, 'JPEG'),
(1015, 'https://example.com/photos/pool4.jpg', 'Pool', 8, '2024-12-15', '1920x1080', 'Published', 'pool, relaxing, nature', 4.70, 2.20, 'PNG'),
(1016, 'https://example.com/photos/interior3.jpg', 'Interior', 8, '2024-12-16', '1920x1080', 'Preview', 'interior, warm, welcoming', 4.30, 1.80, 'JPEG'),
(1017, 'https://example.com/photos/food4.jpg', 'Food', 9, '2024-12-17', '1080x720', 'Published', 'lunch, dessert, drinks', 4.80, 1.40, 'JPEG'),
(1018, 'https://example.com/photos/room4.jpg', 'Hotel Room', 9, '2024-12-18', '1920x1080', 'Published', 'room, deluxe, king bed', 4.90, 2.10, 'JPEG'),
(1019, 'https://example.com/photos/exterior4.jpg', 'Exterior', 10, '2024-12-19', '1280x720', 'Published', 'building, greenery, view', 4.60, 1.90, 'PNG'),
(1020, 'https://example.com/photos/pool5.jpg', 'Pool', 10, '2024-12-20', '1920x1080', 'Published', 'pool, family, blue water', 4.70, 2.50, 'JPEG');

-- --------------------------------------------------------

--
-- Table structure for table `Reservations`
--

CREATE TABLE IF NOT EXISTS `Reservations` (
  `reservation_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `accommodation_id` int(11) NOT NULL,
  `reservation_date` date NOT NULL,
  `status` enum('Active','Cancelled','No Reservation Yet') NOT NULL,
  PRIMARY KEY (`reservation_id`),
  KEY `accommodation_id` (`accommodation_id`),
  KEY `fk_customer_reservation` (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=7003 ;

--
-- Dumping data for table `Reservations`
--

INSERT INTO `Reservations` (`reservation_id`, `customer_id`, `accommodation_id`, `reservation_date`, `status`) VALUES
(1003, 3, 3, '2024-12-03', 'No Reservation Yet'),
(1004, 4, 4, '2024-12-05', 'Cancelled'),
(1005, 5, 5, '2024-12-07', 'Active'),
(1006, 6, 6, '2024-12-09', 'No Reservation Yet'),
(1007, 7, 7, '2024-12-11', 'Active'),
(1008, 8, 8, '2024-12-13', 'No Reservation Yet'),
(3001, 1, 5, '2024-12-01', 'Active'),
(3002, 2, 7, '2024-12-03', 'Cancelled'),
(3009, 9, 9, '2024-12-17', 'Active'),
(3010, 10, 10, '2024-12-19', 'Cancelled'),
(3011, 11, 12, '2024-12-21', 'Active'),
(3012, 12, 14, '2024-12-23', 'Active'),
(3013, 13, 11, '2024-12-25', 'Cancelled'),
(3014, 14, 15, '2024-12-27', 'Active'),
(3015, 15, 18, '2024-12-29', 'Active'),
(3016, 16, 20, '2024-12-31', 'Cancelled'),
(3017, 17, 16, '2025-01-02', 'Active'),
(3018, 18, 13, '2025-01-04', 'Active'),
(3019, 19, 17, '2025-01-06', 'Cancelled'),
(3020, 20, 19, '2025-01-08', 'Active'),
(3021, 21, 22, '2025-01-10', 'Active'),
(3022, 22, 24, '2025-01-12', 'Cancelled'),
(3023, 23, 25, '2025-01-14', 'Active'),
(3024, 24, 21, '2025-01-16', 'Active'),
(3025, 25, 23, '2025-01-18', 'Cancelled'),
(3026, 26, 26, '2025-01-20', 'Active'),
(3027, 27, 27, '2025-01-22', 'Active'),
(3028, 28, 28, '2025-01-24', 'Cancelled'),
(6004, 1, 12, '2025-01-24', 'Active'),
(7002, 2, 3, '2024-01-05', 'No Reservation Yet');

--
-- Triggers `Reservations`
--
DROP TRIGGER IF EXISTS `log_reservation`;
DELIMITER //
CREATE TRIGGER `log_reservation` AFTER UPDATE ON `Reservations`
 FOR EACH ROW INSERT INTO PastReservations (reservation_id, customer_id, accommodation_id,reservation_date, status, action_type)
VALUES (OLD.reservation_id, OLD.customer_id, OLD.accommodation_id, OLD.reservation_date, OLD.status, 'UPDATE')
//
DELIMITER ;
DROP TRIGGER IF EXISTS `log_reservation_delete`;
DELIMITER //
CREATE TRIGGER `log_reservation_delete` AFTER DELETE ON `Reservations`
 FOR EACH ROW INSERT INTO PastReservations (reservation_id, customer_id, accommodation_id,reservation_date, status, action_type)
VALUES (OLD.reservation_id, OLD.customer_id, OLD.accommodation_id, OLD.reservation_date, OLD.status, 'DELETE')
//
DELIMITER ;
DROP TRIGGER IF EXISTS `log_reservation_insert`;
DELIMITER //
CREATE TRIGGER `log_reservation_insert` AFTER INSERT ON `Reservations`
 FOR EACH ROW INSERT INTO PastReservations (reservation_id, customer_id, accommodation_id,reservation_date, status, action_type)
VALUES (NEW.reservation_id, NEW.customer_id, NEW.accommodation_id, NEW.reservation_date, NEW.status, 'INSERT')
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Service`
--

CREATE TABLE IF NOT EXISTS `Service` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(100) NOT NULL,
  `service_availability` tinyint(1) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `operating_hours` varchar(50) DEFAULT NULL,
  `is_complimentary` tinyint(1) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  PRIMARY KEY (`service_id`),
  KEY `hotel_id` (`hotel_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `Service`
--

INSERT INTO `Service` (`service_id`, `service_name`, `service_availability`, `price`, `operating_hours`, `is_complimentary`, `hotel_id`) VALUES
(1, 'Room Service', 1, 15.00, '24:00-24:00', 0, 1),
(2, 'Spa', 1, 50.00, '08:00-22:00', 0, 1),
(3, 'Swimming Pool', 1, NULL, '06:00-20:00', 1, 1),
(4, 'Free Wi-Fi', 1, NULL, '24:00-24:00', 1, 2),
(5, 'Breakfast Buffet', 1, 20.00, '07:00-10:00', 0, 2),
(6, 'Gym', 1, NULL, '05:00-23:00', 1, 2),
(7, 'Parking', 1, NULL, '24:00-24:00', 1, 3),
(8, 'Laundry Service', 0, 10.00, '08:00-18:00', 0, 3),
(9, 'Airport Shuttle', 1, 25.00, '06:00-22:00', 0, 3),
(10, 'Daily Housekeeping', 1, NULL, '09:00-17:00', 1, 4),
(11, 'Car Rental', 1, 40.00, '08:00-20:00', 0, 4),
(12, 'Babysitting Service', 0, 30.00, '10:00-18:00', 0, 4),
(13, 'Conference Room', 1, 100.00, '09:00-18:00', 0, 5),
(14, '24/7 Reception', 1, NULL, '24:00-24:00', 1, 5),
(15, 'Tour Desk', 1, NULL, '08:00-20:00', 1, 5),
(16, 'Concierge', 1, NULL, '24:00-24:00', 1, 6),
(17, 'Pet-Friendly Services', 1, 15.00, '09:00-21:00', 0, 6),
(18, 'Valet Parking', 1, 10.00, '06:00-00:00', 0, 6),
(19, 'Mini Bar', 1, 5.00, '24:00-24:00', 0, 7),
(20, 'Business Center', 1, NULL, '09:00-18:00', 1, 7),
(21, 'Tennis Court', 1, NULL, '06:00-22:00', 1, 7),
(22, 'Evening Entertainment', 1, 50.00, '19:00-23:00', 0, 8),
(23, 'Personal Trainer', 0, 30.00, '07:00-20:00', 0, 8),
(24, 'Hair Salon', 1, 20.00, '09:00-19:00', 0, 8),
(25, 'Yoga Classes', 1, 15.00, '06:00-08:00', 0, 9),
(26, 'Sauna', 1, 25.00, '10:00-22:00', 0, 9),
(27, 'Wine Tasting', 0, 45.00, '18:00-22:00', 0, 9),
(28, 'Cooking Classes', 1, 30.00, '14:00-16:00', 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `TransportDestination`
--

CREATE TABLE IF NOT EXISTS `TransportDestination` (
  `transport_id` int(11) NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`transport_id`,`location_id`),
  KEY `location_id` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `TransportOptions`
--

CREATE TABLE IF NOT EXISTS `TransportOptions` (
  `transport_id` int(11) NOT NULL AUTO_INCREMENT,
  `transport_type` enum('Train','Bus','Bicycle','Plane','Car','Boat') NOT NULL,
  `departure_point` varchar(255) NOT NULL,
  `destination_point` varchar(255) NOT NULL,
  `travel_duration` int(11) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  PRIMARY KEY (`transport_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2029 ;

--
-- Dumping data for table `TransportOptions`
--

INSERT INTO `TransportOptions` (`transport_id`, `transport_type`, `departure_point`, `destination_point`, `travel_duration`, `cost`) VALUES
(2001, 'Plane', 'JFK Airport', 'Charles de Gaulle', 7, 480.00),
(2002, 'Bus', 'Berlin', 'Prague', 4, 45.00),
(2003, 'Train', 'Tokyo', 'Osaka', 2, 90.00),
(2004, 'Car', 'Los Angeles', 'San Francisco', 5, 70.00),
(2005, 'Bicycle', 'Amsterdam', 'Rotterdam', 3, 8.00),
(2006, 'Boat', 'Miami', 'Bahamas', 6, 280.00),
(2007, 'Plane', 'Heathrow', 'Dubai', 6, 430.00),
(2008, 'Train', 'Paris', 'Lyon', 2, 55.00),
(2009, 'Bus', 'Rome', 'Florence', 3, 35.00),
(2010, 'Car', 'New York', 'Boston', 4, 85.00),
(2011, 'Bicycle', 'Seoul', 'Incheon', 1, 12.00),
(2012, 'Boat', 'Sydney', 'Hobart', 8, 340.00),
(2013, 'Plane', 'Tokyo', 'Seoul', 2, 190.00),
(2014, 'Train', 'Berlin', 'Hamburg', 2, 45.00),
(2015, 'Bus', 'Madrid', 'Barcelona', 5, 40.00),
(2016, 'Car', 'Las Vegas', 'Los Angeles', 4, 80.00),
(2017, 'Bicycle', 'Copenhagen', 'Malmö', 2, 10.00),
(2018, 'Boat', 'Vancouver', 'Victoria', 6, 240.00),
(2019, 'Plane', 'Singapore', 'Bangkok', 2, 170.00),
(2020, 'Train', 'Vienna', 'Budapest', 2, 60.00),
(2021, 'Bus', 'Buenos Aires', 'Mendoza', 8, 50.00),
(2022, 'Car', 'Cape Town', 'Stellenbosch', 1, 25.00),
(2023, 'Bicycle', 'Geneva', 'Lausanne', 1, 15.00),
(2024, 'Boat', 'Athens', 'Santorini', 7, 380.00),
(2025, 'Plane', 'Dubai', 'Malé', 4, 290.00),
(2026, 'Train', 'Munich', 'Salzburg', 1, 35.00),
(2027, 'Bus', 'Istanbul', 'Ankara', 7, 30.00),
(2028, 'Car', 'Toronto', 'Ottawa', 5, 110.00);

-- --------------------------------------------------------

--
-- Table structure for table `Voucher`
--

CREATE TABLE IF NOT EXISTS `Voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_code` varchar(50) NOT NULL,
  `discount_amount` decimal(10,2) NOT NULL,
  `validity_start` date NOT NULL,
  `validity_end` date NOT NULL,
  `minimum_spend` decimal(10,2) DEFAULT NULL,
  `status` enum('Valid','Used','Expired') NOT NULL,
  `hotel_id` int(11) NOT NULL,
  PRIMARY KEY (`voucher_id`),
  UNIQUE KEY `voucher_code` (`voucher_code`),
  KEY `hotel_id` (`hotel_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=50029 ;

--
-- Dumping data for table `Voucher`
--

INSERT INTO `Voucher` (`voucher_id`, `voucher_code`, `discount_amount`, `validity_start`, `validity_end`, `minimum_spend`, `status`, `hotel_id`) VALUES
(50001, 'DISC2024', 50.00, '2024-12-01', '2024-12-31', 200.00, 'Used', 1),
(50002, 'HOLIDAY50', 75.00, '2024-12-01', '2025-01-15', 300.00, 'Valid', 1),
(50004, 'WINTER30', 30.00, '2024-12-10', '2025-01-10', 150.00, 'Used', 2),
(50005, 'WELCOME25', 25.00, '2025-01-01', '2025-03-31', 150.00, 'Valid', 2),
(50006, 'SPRING20', 20.00, '2025-03-01', '2025-05-31', 120.00, 'Valid', 2),
(50008, 'LUXE100', 100.00, '2024-12-15', '2025-02-28', 500.00, 'Valid', 3),
(50009, 'FAST10', 10.00, '2024-12-01', '2024-12-20', 50.00, 'Used', 3),
(50010, 'PREMIUM60', 60.00, '2025-01-01', '2025-04-30', 300.00, 'Valid', 4),
(50011, 'VIP50', 50.00, '2024-12-01', '2024-12-31', 200.00, 'Valid', 4),
(50012, 'BONUS75', 75.00, '2024-12-10', '2025-01-15', 350.00, 'Valid', 4),
(50014, 'RESORT30', 30.00, '2024-12-01', '2024-12-31', 150.00, 'Used', 5),
(50015, 'FAMILY25', 25.00, '2024-12-20', '2025-01-31', 200.00, 'Valid', 5),
(50016, 'DELUXE50', 50.00, '2025-01-01', '2025-03-31', 300.00, 'Valid', 6),
(50017, 'GROUP20', 20.00, '2025-02-15', '2025-04-15', 150.00, 'Valid', 6),
(50018, 'CITYBREAK40', 40.00, '2024-12-01', '2025-01-10', 250.00, 'Used', 6),
(50019, 'WEEKEND10', 10.00, '2025-03-01', '2025-03-31', 50.00, 'Valid', 7),
(50021, 'SPA100', 100.00, '2024-12-01', '2025-02-28', 500.00, 'Valid', 7),
(50023, 'STAYCATION25', 25.00, '2025-01-01', '2025-01-31', 150.00, 'Used', 8),
(50024, 'EXPERIENCE30', 30.00, '2025-02-01', '2025-03-31', 200.00, 'Valid', 8),
(50025, 'GOLD50', 50.00, '2025-01-15', '2025-04-15', 300.00, 'Valid', 9),
(50026, 'BUDGET20', 20.00, '2024-12-01', '2025-01-15', 150.00, 'Valid', 9),
(50027, 'HOLIDAY100', 100.00, '2024-12-20', '2025-03-31', 500.00, 'Valid', 9),
(50028, 'LUXURY30', 30.00, '2025-01-01', '2025-04-30', 250.00, 'Valid', 10);

-- --------------------------------------------------------

--
-- Structure for view `ActiveCustomers`
--
DROP TABLE IF EXISTS `ActiveCustomers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ActiveCustomers` AS select `c`.`customer_id` AS `customer_id`,`c`.`first_name` AS `first_name`,`c`.`last_name` AS `last_name`,`r`.`status` AS `status` from (`Customers` `c` join `Reservations` `r` on((`c`.`customer_id` = `r`.`customer_id`))) where (`r`.`status` = 'Active');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Accommodation`
--
ALTER TABLE `Accommodation`
  ADD CONSTRAINT `Accommodation_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`customer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `Accommodation_ibfk_2a` FOREIGN KEY (`hotel_id`) REFERENCES `Hotels` (`hotel_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_accommodation_customer` FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_accommodation_hotel` FOREIGN KEY (`hotel_id`) REFERENCES `Hotels` (`hotel_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_accommodation_reservation` FOREIGN KEY (`accommodation_id`) REFERENCES `Accommodation` (`accommodation_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Activity`
--
ALTER TABLE `Activity`
  ADD CONSTRAINT `Activity_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `Hotels` (`hotel_id`) ON DELETE SET NULL;

--
-- Constraints for table `Feedback`
--
ALTER TABLE `Feedback`
  ADD CONSTRAINT `Feedback_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`customer_id`) ON DELETE CASCADE;

--
-- Constraints for table `Insurance`
--
ALTER TABLE `Insurance`
  ADD CONSTRAINT `Insurance_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `Reservations` (`reservation_id`) ON DELETE CASCADE;

--
-- Constraints for table `Photos`
--
ALTER TABLE `Photos`
  ADD CONSTRAINT `Photos_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `Hotels` (`hotel_id`) ON DELETE CASCADE;

--
-- Constraints for table `Reservations`
--
ALTER TABLE `Reservations`
  ADD CONSTRAINT `fk_customer_reservation` FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`customer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_reservation_accommodation` FOREIGN KEY (`accommodation_id`) REFERENCES `Accommodation` (`accommodation_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `Reservations_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`customer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `Reservations_ibfk_2` FOREIGN KEY (`accommodation_id`) REFERENCES `Accommodation` (`accommodation_id`) ON DELETE CASCADE;

--
-- Constraints for table `Service`
--
ALTER TABLE `Service`
  ADD CONSTRAINT `Service_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `Hotels` (`hotel_id`) ON DELETE CASCADE;

--
-- Constraints for table `TransportDestination`
--
ALTER TABLE `TransportDestination`
  ADD CONSTRAINT `TransportDestination_ibfk_1` FOREIGN KEY (`transport_id`) REFERENCES `TransportOptions` (`transport_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TransportDestination_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `Destinations` (`location_id`) ON DELETE CASCADE;

--
-- Constraints for table `Voucher`
--
ALTER TABLE `Voucher`
  ADD CONSTRAINT `Voucher_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `Hotels` (`hotel_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
