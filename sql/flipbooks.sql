-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2017 at 06:45 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `flipbooks`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookstore`
--

CREATE TABLE IF NOT EXISTS `bookstore` (
  `store_id` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'bs99',
  `location` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'BSK-III stage ,Bangalore',
  `budget` int(11) NOT NULL DEFAULT '500000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='holds the data of a bookstore';

--
-- Dumping data for table `bookstore`
--

INSERT INTO `bookstore` (`store_id`, `location`, `budget`) VALUES
('bs01', 'BSK-III stage ,Bangalore', 500000),
('bs02', 'Jayanagar 4th block ,Bangalore', 400000),
('bs03', 'Avenue road,Bangalore', 800000),
('bs04', 'Indranagar ,Bangalore', 300000),
('bs05', 'Whitefield ,Bangalore', 999000),
('bs06', 'Indira Nagar,Bangalore', 90000),
('bs07', 'Basaweshwara Nagar,Bangalore', 90000),
('bs09', 'HSR Layout,Bangalore', 99500),
('bs10', 'M.G road,Mysore', 500000),
('bs11', 'Bull temple road,Mangalore', 600000),
('bs12', 'Rbi water tank,M.Pnagar,Tumkur', 500000),
('bs13', 'AfzalGunj,Hyderabad,Telangana ', 700000),
('bs14', 'Ambedkar Nagar, Nellore, Andhr', 300000),
('bs15', 'Thermal Power Station Colony, ', 800000),
('bs16', 'George Town Rd,George Town,All', 100000),
('bs17', 'Amritsar FOB, Guru Arjun Nagar', 900000),
('bs18', 'North Guwahati, Guwahati, Assa', 500000),
('bs19', 'Ashoka Marg,Nashik, Maharashtr', 800000),
('bs20', 'Narayana Nagar, Kitchipalayam,', 300000),
('bs21', 'Kannanthura, Thiruvananthapura', 500000),
('bs22', 'Railway Colony, Tis Hazari, Ne', 2000000);

-- --------------------------------------------------------

--
-- Table structure for table `bookstore_new_stock`
--

CREATE TABLE IF NOT EXISTS `bookstore_new_stock` (
  `store_id` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'bs01',
  `book_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookstore_new_stock`
--

INSERT INTO `bookstore_new_stock` (`store_id`, `book_id`, `quantity`) VALUES
('bs22', 'b0024', 12),
('bs21', 'b0025', 20),
('bs20', 'b0026', 20),
('bs20', 'b0027', 14),
('bs18', 'b0028', 16),
('bs18', 'b0029', 25),
('bs19', 'b0030', 11),
('bs16', 'b0031', 12),
('bs15', 'b0032', 15),
('bs21', 'b0033', 30),
('bs22', 'b0034', 18),
('bs07', 'b0035', 16),
('bs18', 'b0036', 30),
('bs18', 'b0037', 19),
('bs16', 'b0038', 20),
('bs15', 'b0039', 35),
('bs15', 'b0040', 15),
('bs14', 'b0041', 15),
('bs10', 'b0042', 15),
('bs13', 'b0043', 15),
('bs09', 'b0023', 18),
('bs03', 'b0001', 20),
('bs01', 'b0002', 10),
('bs04', 'b0003', 15),
('bs04', 'b0004', 25),
('bs04', 'b0005', 10),
('bs05', 'b0006', 10),
('bs04', 'b0007', 10),
('bs01', 'b0008', 20),
('bs05', 'b0009', 25),
('bs05', 'b0010', 15),
('bs01', 'b0011', 20),
('bs02', 'b0012', 1000),
('bs04', 'b0013', 15),
('bs01', 'b0014', 10),
('bs03', 'b0015', 10),
('bs01', 'b0016', 26),
('bs02', 'b0017', 10),
('bs02', 'b0018', 10),
('bs04', 'b0019', 10),
('bs05', 'b0020', 10),
('bs05', 'b0021', 10),
('bs04', 'b0022', 10);

-- --------------------------------------------------------

--
-- Table structure for table `bookstore_old_stock`
--

CREATE TABLE IF NOT EXISTS `bookstore_old_stock` (
  `store_id` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `book_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `books_supplied`
--

CREATE TABLE IF NOT EXISTS `books_supplied` (
  `sup_id` varchar(7) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'sup9999',
  `ISBN` varchar(13) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `store_id` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'bs99',
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_supplied`
--

INSERT INTO `books_supplied` (`sup_id`, `ISBN`, `store_id`, `quantity`) VALUES
('sup0001', '1593476894236', 'bs03', 20),
('sup0001', '6946574915111', 'bs22', 11),
('sup0001', '9519472057100', 'bs01', 21),
('sup0001', '9519472057101', 'bs04', 40),
('sup0001', '9519472057445', 'bs01', 50),
('sup0002', '6946574915112', 'bs07', 15),
('sup0002', '9519472057103', 'bs04', 45),
('sup0002', '9519472057115', 'bs02', 26),
('sup0002', '9867855117824', 'bs02', 30),
('sup0003', '6946574915114', 'bs18', 32),
('sup0003', '9518369765592', 'bs03', 25),
('sup0003', '9519472057105', 'bs04', 23),
('sup0003', '9519472057124', 'bs01', 10),
('sup0003', '9519472057190', 'bs04', 20),
('sup0004', '9987870287714', 'bs04', 21),
('sup0005', '6946574915115', 'bs16', 25),
('sup0005', '6946574915117', 'bs15', 31),
('sup0005', '9979225644440', 'bs05', 42),
('sup0006', '9519472057110', 'bs01', 25),
('sup0006', '9700549856022', 'bs01', 15),
('sup0007', '9907241597622', 'bs02', 32),
('sup0008', '6946574915116', 'bs15', 25),
('sup0008', '9519472057107', 'bs05', 40),
('sup0008', '9519472057110', 'bs04', 45),
('sup0008', '9519472057115', 'bs05', 23),
('sup0008', '9519472057180', 'bs02', 20),
('sup0008', '9976879564531', 'bs05', 26),
('sup0009', '6946574915118', 'bs14', 19),
('sup0009', '9519472057116', 'bs05', 45),
('sup0009', '9519472057119', 'bs05', 40),
('sup0009', '9909228054325', 'bs04', 32),
('sup0010', '6946574915119', 'bs10', 17),
('sup0010', '9688126704300', 'bs03', 20),
('sup0012', '8923726303615', 'bs09', 50),
('sup0013', '6946574915120', 'bs13', 25),
('sup0016', '2969927631010', 'bs21', 12),
('sup0017', '2969927631009', 'bs15', 6),
('sup0018', '2969927631008', 'bs16', 61),
('sup0019', '2969927631007', 'bs19', 56),
('sup0020', '2969927631006', 'bs18', 43),
('sup0021', '2969927631005', 'bs18', 72),
('sup0022', '2969927631004', 'bs20', 21),
('sup0023', '2969927631003', 'bs20', 34),
('sup0024', '2969927631002', 'bs21', 21),
('sup0024', '6946574915113', 'bs18', 20),
('sup0025', '2969927631001', 'bs22', 34);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `cust_id` varchar(5) COLLATE utf8_bin NOT NULL DEFAULT 'c9999',
  `mobile_no` varchar(13) COLLATE utf8_bin NOT NULL,
  `email_id` varchar(50) COLLATE utf8_bin NOT NULL,
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  `age` tinyint(4) NOT NULL,
  `address` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(16) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Customer details ';

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `mobile_no`, `email_id`, `name`, `age`, `address`, `password`) VALUES
('c0002', '+918417478321', 'iamdude@gmail.com', 'Ramesh', 35, 'Jayangar,bangalore', 'iamawesome'),
('c0003', '+919768156890', 'sunil.nerd@gmail.com', 'Sunil', 20, 'Banashankri', 'sunilpesit9.6'),
('c0004', '+919768156125', 'varun.shade@gmail.com', 'Varun', 20, 'Kalisi palya', 'varunshivaJi'),
('c0005', '+918968156890', 'vaishak.author@gmail.com', 'Vaishak', 21, 'J.P nagar,Banaglore', 'vaishakknotiit'),
('c0006', '+919765656890', 'sidd.koti@gmail.com', 'Siddharth', 30, 'Gandhi nagar,Bangalore', 'iamchinese'),
('c0007', '+919768159990', 'uma.shankar@gmail.com', 'Umashankar', 40, 'M.P nagar,Bangalore', 'iamaboy'),
('c0008', '+919768156800', 'sai@gmail.com', 'Sai prasad', 65, 'Bannerghatta road', 'saibiker'),
('c0009', '+919446791410', 'ravi.kumar@gmail.com', 'Ravi', 45, 'G.M hospital road,gangavathi', 'ravicricket007'),
('c0010', '+918971356720', 'sathkrith@gmail.com', 'Sathktith', 65, 'Krisha temple road,udupi', 'iamgenius'),
('c0011', '+91954652454', 'pmgk07@gmail.com', 'Preetham', 20, '#86,Vijayanagar,Bangalore-40', 'IAMAROBO'),
('c0012', '+919845468454', 'chingiskoti@gamil.com', 'Sid', 20, 'Banshankari, Banalore', 'i love china'),
('c0013', '+919628456739', 'Sourav.geek@gmail.com', 'Sourav', 20, 'J.k road  Chamrajpura, Mysuru, Karnataka', 'book geek'),
('c0014', '+919628456100', 'Rahul.reddy@gmail.com', 'Rahul', 26, 'B.t colony, Sadar Bazar, Raipur, Chhattisgarh', 'gym boy'),
('c0016', '+919628786739', 'Shashank.soum@gmail.com', 'Shashank', 78, 'Dollars road, Budge Budge, Kolkata, West Bengal ', 'i am fat'),
('c0017', '+918628456739', 'Siddhanth.khalif@gmail.com', 'Siddhanth', 95, 'NH-10,Electricity Board Area, Kota, Rajasthan', 'bhurj khalifa'),
('c0018', '+917628456739', 'Ratesh.mm@gmail.com', 'Ratesh', 42, 'Shimla,Jammu, Jammu and Kashmir, India', 'pixles'),
('c0019', '+917411983322', 'shreehari.twin1@gmail.com', 'Shreehari', 45, 'Amritsar Jn FOB, Putligarh, Amritsar, Punjab', 'TWIN1'),
('c0020', '+917411981022', 'shrinidhi.twin2@gmail.com', 'Shrinidhi', 45, 'Amritsar Jn FOB, Putligarh, Amritsar, Punjab', 'TWIN2'),
('c0021', '+91911983322', 'shreyas.bolt@gmail.com', 'Shreyas', 67, 'Umraokar Ln, Uttareshwar Peth,Kolhapur,Maharashtra', 'gowda'),
('c0022', '+918911983322', 'prithvi.absent@gmail.com', 'Prithvi raj', 23, 'Ambedkar Nagar, Nellore, Andhra Pradesh', 'aluma doluma'),
('c0023', '+917499983322', 'damodhar.gb@gmail.com', 'Damodhar', 77, 'Babajipura, Vadodara, Gujarat ', 'floyd warshall'),
('c22', '74834758437', 'sdjfbsk@sdhbvs.com', 'jrdks', 34, 'sjkbskjbc', 'ksjdjfbsdk'),
('c23', '123', 'w@c.com', 'fe', 21, 'Dfefew', 'adsjfdjf'),
('c24', '7259315555', 'siddykoti@gmail.com', 'siddy koti', 55, 'dharwad', 'hhhhhh');

-- --------------------------------------------------------

--
-- Table structure for table `new_books`
--

CREATE TABLE IF NOT EXISTS `new_books` (
  `book_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'b9999',
  `ISBN` varchar(13) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `author` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `edition` smallint(6) NOT NULL DEFAULT '1',
  `pub_id` varchar(6) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `year` year(4) NOT NULL DEFAULT '1974',
  `language` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'English',
  `price` smallint(5) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_books`
--

INSERT INTO `new_books` (`book_id`, `ISBN`, `title`, `author`, `edition`, `pub_id`, `year`, `language`, `price`, `quantity`, `category`) VALUES
('b0001', '9518369765592', 'The Sword''s Scent', 'Blue Balliett ', 1, 'pub001', 1980, 'English', 500, 20, 'Mystery'),
('b0002', '9519472057100', 'Kiss of Ice', 'Iain M. Banks ', 2, 'pub002', 1991, 'English', 750, 10, 'Classic'),
('b0003', '9519472057101', 'Hard Beginning', 'Michele Bardsley', 5, 'pub007', 1980, 'English', 800, 15, 'Health'),
('b0004', '9519472057103', 'Women in the Edge', 'Dan Barker', 1, 'pub009', 2000, 'English', 1000, 25, 'Romance'),
('b0005', '9519472057105', 'My experiments with Truth', 'Mahatma Gandhi', 1, 'pub001', 1974, 'English', 450, 10, 'Biography'),
('b0006', '9519472057107', 'Far from the Madding Crowd', 'Thomas Hardy', 8, 'pub002', 1970, 'English', 500, 10, 'History'),
('b0007', '9519472057110', 'Geetanjali', 'Rabindra Nath Tagore', 4, 'pub002', 1974, 'Hindi', 200, 10, 'Poetry'),
('b0008', '9519472057115', 'One Day in the Life of Ivan Denisovitch', 'Alexander Solzhenitsyn', 1, 'pub006', 1995, 'English', 600, 20, 'Horror'),
('b0009', '9519472057116', 'The Merchant of venice', 'William shakespeare', 1, 'pub007', 1974, 'English', 800, 25, 'Mystery'),
('b0010', '9519472057119', 'The Moon and Six pense', 'Somerset Maughan', 5, 'pub008', 1979, 'English', 1000, 15, 'Poetry'),
('b0011', '9519472057124', 'A Tale of Two Cities', 'Charles Dickens', 1, 'pub009', 1965, 'English', 500, 20, 'Literature'),
('b0012', '9519472057180', 'Utopia', 'Sir Thomas Moor', 1, 'pub010', 1974, 'English', 799, 1000, 'Literature'),
('b0013', '9519472057190', 'Origin of species', 'charles Darwin', 1, 'pub010', 1980, 'English', 800, 15, 'Science'),
('b0014', '9519472057445', 'David Copperfield', 'Charles Dickens', 4, 'pub002', 1995, 'English', 900, 10, 'Literature'),
('b0015', '9688126704300', 'A passage to India', 'E.M.Forster', 6, 'pub001', 1979, 'English', 900, 10, 'Literature'),
('b0016', '9700549856022', 'Discovery of India', 'Pandit Jawaharlal Nehru', 1, 'pub003', 1974, 'English', 500, 26, 'Politics'),
('b0017', '9867855117824', 'The Lady of the Last Minstrel', 'Sir Walter Scott', 1, 'pub003', 1975, 'English', 999, 10, 'Romance'),
('b0018', '9907241597622', 'Pride and Prejudice', 'Jane Austen', 5, 'pub005', 1974, 'English', 599, 10, 'Politics'),
('b0019', '9909228054325', 'Arthashastra', 'Kautilya', 3, 'pub004', 1960, 'Sanskrit', 599, 10, 'Philosophy'),
('b0020', '9976879564531', 'Le Contract Social', 'Jean Jacques Rousseau', 1, 'pub007', 1974, 'French', 800, 10, 'Literature'),
('b0021', '9979225644440', 'Avigyan Sakuntalam', 'Kalidas', 3, 'pub010', 1974, 'Sanskrit', 200, 10, 'Poetry'),
('b0022', '9987870287714', 'Ain-i-Akbari', 'Abul Fazal', 1, 'pub006', 1974, 'Urdu', 200, 10, 'Religion'),
('b0023', '8923726303615', 'Gust of Wind', 'Pharrell Williams ', 1, 'pub012', 2013, 'English', 500, 18, 'Fantasy'),
('b0024', '2969927631001', 'Wealth of Nations', 'Adam Smith', 1, 'pub022', 1974, 'English', 350, 12, 'History'),
('b0025', '2969927631002', 'Valley of Dolls', 'Jacqueline Susann', 4, 'pub021', 1974, 'English', 499, 20, 'Classic'),
('b0026', '2969927631003', 'Sons and Lovers', 'D.H.Lawrence', 5, 'pub017', 1974, 'English', 299, 20, 'Romance'),
('b0027', '2969927631004', 'Shape of Things to Come', 'H.G.Wells', 3, 'pub021', 1974, 'English', 400, 14, 'Poetry'),
('b0028', '2969927631005', 'Pride and Prejudice', 'Jane Austen', 10, 'pub019', 1990, 'English', 699, 16, 'Mystery'),
('b0029', '2969927631006', 'The Other Side of Midnight', 'Sindye Sheldon', 7, 'pub017', 1996, 'English', 799, 25, 'Fantasy'),
('b0030', '2969927631007', 'A Gift of Monotheists', 'Ram Mohan Roy', 2, 'pub016', 2000, 'English', 199, 11, 'Politics'),
('b0031', '2969927631008', 'A week with Gandhi', 'L. Fischer', 6, 'pub014', 1980, 'English', 299, 12, 'Politics'),
('b0032', '2969927631009', 'Adventures of Sherlock Homes', 'Arther Canon Doel', 4, 'pub014', 1974, 'English', 566, 15, 'Politics'),
('b0033', '2969927631010', 'All the Prime Minister''s Men', 'Janardan Thakur', 2, 'pub012', 1974, 'English', 621, 30, 'Politics'),
('b0034', '6946574915111', 'Mookajjiya Kanasugalu ', 'Kota Shivarama Karanth ', 2, 'pub007', 2000, 'Kannada', 299, 18, 'Poetry'),
('b0035', '6946574915112', 'Karvalo ', 'K.P. Poornachandra Tejaswi', 5, 'pub014', 2005, 'Kannada', 199, 16, 'Health'),
('b0036', '6946574915113', 'Jugaari Cross (Hardcover) ', ' K.P. Poornachandra Tejaswi ', 1, 'pub020', 1980, 'Kannada', 70, 30, 'Literature'),
('b0037', '6946574915114', 'Bettada Jeeva ', 'Kota Shivarama Karanth ', 3, 'pub021', 2000, 'Kannada', 35, 19, 'Horror'),
('b0038', '6946574915115', 'Chomana Dudi ', 'Kota Shivarama Karanth', 7, 'pub016', 1970, 'Kannada', 89, 20, 'Mystery'),
('b0039', '6946574915116', 'Parva', ' S.L. Bhyrappa', 1, 'pub022', 1998, 'Tamil', 45, 35, 'Philosophy'),
('b0040', '6946574915117', 'An Unknown Indian', 'Nirod C. Choudhary', 2, 'pub017', 2005, 'English', 150, 15, 'History'),
('b0041', '6946574915118', 'An Unknown Indian', 'Nirod C. Choudhary', 1, 'pub017', 2005, 'Kannada', 150, 15, 'History'),
('b0042', '6946574915119', 'An Unknown Indian', 'Nirod C. Choudhary', 1, 'pub007', 2005, 'Tamil', 150, 15, 'History'),
('b0043', '6946574915120', 'An Unknown Indian', 'Nirod C. Choudhary', 1, 'pub013', 2005, 'English', 150, 15, 'History'),
('b5444', '1593476894236', 'Marks on Head', 'Mahatma Gandhi', 1, 'pub007', 1944, 'English', 299, 20, 'History');

-- --------------------------------------------------------

--
-- Table structure for table `new_books_selling_bill`
--

CREATE TABLE IF NOT EXISTS `new_books_selling_bill` (
  `store_id` varchar(4) COLLATE utf8_bin NOT NULL,
  `bill_id` varchar(12) COLLATE utf8_bin NOT NULL DEFAULT '000001',
  `cust_id` varchar(5) COLLATE utf8_bin NOT NULL DEFAULT 'c9999',
  `date_time` datetime NOT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bill or Order details';

--
-- Dumping data for table `new_books_selling_bill`
--

INSERT INTO `new_books_selling_bill` (`store_id`, `bill_id`, `cust_id`, `date_time`, `total_price`) VALUES
('bs01', '1461127481', 'c23', '2016-04-20 10:14:59', 750),
('bs03', '000007272', 'c0002', '2016-04-07 00:00:00', 299),
('bs04', '1461123950', 'c22', '2016-04-20 09:16:06', 450),
('bs04', '1495428168', 'c24', '2017-05-22 10:13:19', 450),
('bs04', '27823', 'c0023', '2016-04-13 11:00:00', 199),
('bs04', '64564', 'c23', '2016-04-30 00:00:00', 600),
('bs17', '000001', 'c0022', '2016-04-07 15:11:38', 500),
('bs18', '64654', 'c0022', '2016-03-22 10:11:44', 99);

-- --------------------------------------------------------

--
-- Table structure for table `new_books_sold`
--

CREATE TABLE IF NOT EXISTS `new_books_sold` (
  `store_id` varchar(4) COLLATE utf8_bin NOT NULL,
  `bill_id` varchar(12) COLLATE utf8_bin NOT NULL,
  `item_id` varchar(5) COLLATE utf8_bin NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='The items purchased are listed here';

--
-- Dumping data for table `new_books_sold`
--

INSERT INTO `new_books_sold` (`store_id`, `bill_id`, `item_id`, `quantity`) VALUES
('bs01', '1461127481', 'b0002', 3),
('bs04', '1461123950', 'b0005', 1),
('bs04', '1495428168', 'b0005', 1);

-- --------------------------------------------------------

--
-- Table structure for table `old_books`
--

CREATE TABLE IF NOT EXISTS `old_books` (
  `book_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `book_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ISBN` varchar(13) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pub_id` varchar(7) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `quantity` int(11) NOT NULL,
  `edition` tinyint(4) NOT NULL,
  `year` smallint(6) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `language` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `old_books_bought`
--

CREATE TABLE IF NOT EXISTS `old_books_bought` (
  `store_id` varchar(4) COLLATE utf8_bin NOT NULL,
  `bill_id` varchar(12) COLLATE utf8_bin NOT NULL,
  `item_id` varchar(5) COLLATE utf8_bin NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='The items purchased are listed here';

-- --------------------------------------------------------

--
-- Table structure for table `old_books_buying_bill`
--

CREATE TABLE IF NOT EXISTS `old_books_buying_bill` (
  `store_id` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bill_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `seller_id` varchar(7) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `date_time` datetime NOT NULL,
  `purprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `old_books_selling_bill`
--

CREATE TABLE IF NOT EXISTS `old_books_selling_bill` (
  `store_id` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bill_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cust_id` varchar(7) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `date_time` datetime NOT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `old_books_sold`
--

CREATE TABLE IF NOT EXISTS `old_books_sold` (
  `store_id` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bill_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `item_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE IF NOT EXISTS `publishers` (
  `pub_id` varchar(6) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'pub999',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Publishers details';

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`pub_id`, `name`, `address`) VALUES
('pub001', 'Pearson', '#75,street 105,Los Angels,US '),
('pub002', 'Marvel ', 'New york,U.S.A'),
('pub003', 'Acumen Publications', 'U.K'),
('pub004', 'Cambridge University Press', '7075 Oak Street  Pueblo, CO 81001'),
('pub005', 'IGI Global U.S.A', '3130 Elizabeth Street  Mason, OH 45040'),
('pub006', 'Oxford University Press U.K', '3451 Mill Street  Delaware, OH 43015'),
('pub007', 'Pearson', '564 Wood Street  North Wales, PA 19454'),
('pub008', 'University Science Books', 'Lawrence Yard, London N15 5AA, UK'),
('pub009', 'Morgan & Claypool Publishers', '80 Blackmoorfoot Rd, Huddersfield, West Yorkshire '),
('pub010', 'Rand Corporation', 'A499, Pwllheli, Gwynedd LL53, UK'),
('pub012', 'JKB Prints', '#34,Palace Road,Mysore '),
('pub013', 'BBC Books', '14B Wakley St, London EC1V 7LT, UK'),
('pub014', 'Chronicle Books', '2 Bol Don, Cemaes Bay, Isle of Anglesey LL67 HJ,UK'),
('pub015', 'Cisco Press', 'A6177, Bradford, West Yorkshire BD7, UK'),
('pub016', 'Times Books', '2943 Little Rise Turnabout, Helix, New York, USA'),
('pub017', 'Shoemaker & Hoard Publishers', 'Grand Bear Mount, Monte Carlo, New York, USA'),
('pub018', 'Robson Books', '4269 Sleepy Cove, Pahrump, Saskatchewan,CA'),
('pub019', 'Microsoft Press ', 'Cinder Line, America, Ontario,CA'),
('pub020', 'Compare Infobase Limited', 'Shyam Talkies Road, Raipur, Chhattisgarh'),
('pub021', 'Pitara Kids Network', 'PO Rd, Bhaldarpura, Gandhibagh, Nagpur,Maharashtra'),
('pub022', 'Arihant Publications Limited', 'Kaiser Ganj,  Kaisar Ganj,Ajmer, Rajasthan');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE IF NOT EXISTS `suppliers` (
  `sup_id` varchar(7) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'sup9999',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='holds the details of suppliers';

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`sup_id`, `name`, `address`) VALUES
('sup0001', 'Adam Richiti', 'Bangalore'),
('sup0002', 'New book suppliers', 'J.P nagar, 7th phase,Bangalore'),
('sup0003', 'Shri sai book house', 'Basvangudi 10th main,Bangalore'),
('sup0004', 'Sarasvathi book house', 'G.K.W layout,Bangalore'),
('sup0005', 'Sapna book suppliers', 'Kanakpura road,Bangalore'),
('sup0006', 'Inidan book suppliers', 'Koramangala,Bangalore'),
('sup0007', 'S.B.K book suppliers', 'Kalyan nagar,Bangalore'),
('sup0008', 'Koti book suppliers ', 'Majestic,Bangalore'),
('sup0009', 'Shri Lakshmi book suppliers', 'Dollars colony,Bangalore'),
('sup0010', 'Shan suppliers Ltd', 'Dwarka Nagar,Bangalore'),
('sup0012', 'Arcade Book Suppliers', 'Raja Rajeswari Nagar,Bangalore'),
('sup0013', 'The Melon book store Company', 'Jayanagar,Mysore'),
('sup0014', 'ABC book store', 'Bull temple road,Mangalore'),
('sup0015', 'Narayana book house', 'Rbi water tank,M.Pnagar,Tumkur'),
('sup0016', 'Paradise book house', 'AfzalGunj,Hyderabad,Telangana'),
('sup0017', 'Bavrshi book store', 'Ambedkar Nagar, Nellore, Andhra Pradesh'),
('sup0018', 'Shetty''s book paradise', 'Thermal Power Station Colony, Kota, Rajasthan'),
('sup0019', 'Namo book house', 'Church Town Rd,George Town,Allahabad, Uttar Pradeh'),
('sup0020', 'School book company', 'Cod road, Guru Arjun Nagar, Amritsar, Punjab'),
('sup0021', 'Pathanjali book house', 'Gow, Guwahati, Assam'),
('sup0022', 'Shiv sena book house', 'Ashoka pillar,Nashik, Maharashtra'),
('sup0023', 'Amma book house', 'Jk Nagar, Kitchipalayam, Salem, Tamil Nadu'),
('sup0024', 'Coastal book house', 'Elephant road Thiruvananthapuram, Kerala'),
('sup0025', 'The new delhi book house', 'Bankers Colony, Tis Hazari, New Delhi, Delhi	');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookstore`
--
ALTER TABLE `bookstore`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `bookstore_new_stock`
--
ALTER TABLE `bookstore_new_stock`
  ADD KEY `bstore_id` (`store_id`), ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `bookstore_old_stock`
--
ALTER TABLE `bookstore_old_stock`
  ADD PRIMARY KEY (`store_id`,`book_id`), ADD KEY `obook_id` (`book_id`);

--
-- Indexes for table `books_supplied`
--
ALTER TABLE `books_supplied`
  ADD PRIMARY KEY (`sup_id`,`ISBN`,`store_id`), ADD KEY `bsup_id` (`sup_id`), ADD KEY `bISBN` (`ISBN`), ADD KEY `bbstore_id` (`store_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`), ADD UNIQUE KEY `mobile_no` (`mobile_no`), ADD UNIQUE KEY `email_id_2` (`email_id`), ADD KEY `email_id` (`email_id`);

--
-- Indexes for table `new_books`
--
ALTER TABLE `new_books`
  ADD PRIMARY KEY (`book_id`), ADD UNIQUE KEY `ISBN` (`ISBN`), ADD KEY `book_id` (`book_id`), ADD KEY `bpub_id` (`pub_id`), ADD KEY `ISBN_2` (`ISBN`);

--
-- Indexes for table `new_books_selling_bill`
--
ALTER TABLE `new_books_selling_bill`
  ADD PRIMARY KEY (`store_id`,`bill_id`), ADD KEY `cust_id` (`cust_id`), ADD KEY `billbstore_id` (`store_id`), ADD KEY `bill_id` (`bill_id`), ADD KEY `cust_id_2` (`cust_id`);

--
-- Indexes for table `new_books_sold`
--
ALTER TABLE `new_books_sold`
  ADD PRIMARY KEY (`store_id`,`bill_id`,`item_id`), ADD KEY `book_id_foreigney` (`item_id`), ADD KEY `store_id` (`store_id`), ADD KEY `store_id_2` (`store_id`), ADD KEY `store_id_3` (`store_id`,`bill_id`,`item_id`), ADD KEY `store_id_4` (`store_id`), ADD KEY `bill_id` (`bill_id`), ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `old_books`
--
ALTER TABLE `old_books`
  ADD PRIMARY KEY (`book_id`), ADD UNIQUE KEY `ISBN` (`ISBN`), ADD KEY `oISBN` (`ISBN`), ADD KEY `obook_id` (`book_id`), ADD KEY `pub_id` (`pub_id`);

--
-- Indexes for table `old_books_bought`
--
ALTER TABLE `old_books_bought`
  ADD PRIMARY KEY (`store_id`,`bill_id`,`item_id`), ADD KEY `book_id_foreigney` (`item_id`), ADD KEY `store_id` (`store_id`), ADD KEY `store_id_2` (`store_id`), ADD KEY `bill_id` (`bill_id`), ADD KEY `item_id` (`item_id`), ADD KEY `store_id_3` (`store_id`);

--
-- Indexes for table `old_books_buying_bill`
--
ALTER TABLE `old_books_buying_bill`
  ADD PRIMARY KEY (`store_id`,`bill_id`), ADD KEY `bill_id` (`bill_id`), ADD KEY `seller_id` (`seller_id`), ADD KEY `purprice` (`purprice`), ADD KEY `bill_id_2` (`bill_id`), ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `old_books_selling_bill`
--
ALTER TABLE `old_books_selling_bill`
  ADD PRIMARY KEY (`store_id`,`bill_id`), ADD KEY `bill_id` (`bill_id`), ADD KEY `cust_id` (`cust_id`), ADD KEY `total_price` (`total_price`), ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `old_books_sold`
--
ALTER TABLE `old_books_sold`
  ADD PRIMARY KEY (`store_id`,`bill_id`,`item_id`), ADD KEY `bill_id` (`bill_id`), ADD KEY `item_id` (`item_id`), ADD KEY `price` (`price`), ADD KEY `quantity` (`quantity`), ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`pub_id`), ADD KEY `pub_id` (`pub_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`sup_id`), ADD KEY `sup_id` (`sup_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookstore_new_stock`
--
ALTER TABLE `bookstore_new_stock`
ADD CONSTRAINT `book_id_foreign_key` FOREIGN KEY (`book_id`) REFERENCES `new_books` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `bookstore_id_foreigney` FOREIGN KEY (`store_id`) REFERENCES `bookstore` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookstore_old_stock`
--
ALTER TABLE `bookstore_old_stock`
ADD CONSTRAINT `bookstore_foreign_key` FOREIGN KEY (`store_id`) REFERENCES `bookstore` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `bookstore_old_stock_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `old_books` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `books_supplied`
--
ALTER TABLE `books_supplied`
ADD CONSTRAINT `bookstore id foreign key` FOREIGN KEY (`store_id`) REFERENCES `bookstore` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `supllierforeignkey` FOREIGN KEY (`sup_id`) REFERENCES `suppliers` (`sup_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `new_books`
--
ALTER TABLE `new_books`
ADD CONSTRAINT `isbn_foreignkey` FOREIGN KEY (`ISBN`) REFERENCES `books_supplied` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `publisher_id_foreignkey` FOREIGN KEY (`pub_id`) REFERENCES `publishers` (`pub_id`) ON UPDATE CASCADE;

--
-- Constraints for table `new_books_selling_bill`
--
ALTER TABLE `new_books_selling_bill`
ADD CONSTRAINT `cust_id_foreign` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `store_id_foreign_key` FOREIGN KEY (`store_id`) REFERENCES `bookstore` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `new_books_sold`
--
ALTER TABLE `new_books_sold`
ADD CONSTRAINT `book_id_foreigney` FOREIGN KEY (`item_id`) REFERENCES `new_books` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `new books sold_ibfk_1` FOREIGN KEY (`bill_id`) REFERENCES `new_books_selling_bill` (`bill_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `storeid` FOREIGN KEY (`store_id`) REFERENCES `bookstore` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `old_books`
--
ALTER TABLE `old_books`
ADD CONSTRAINT `pub_id_foreign_key` FOREIGN KEY (`pub_id`) REFERENCES `publishers` (`pub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `old_books_bought`
--
ALTER TABLE `old_books_bought`
ADD CONSTRAINT `old_books_bought_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `bookstore` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `old_books_bought_ibfk_2` FOREIGN KEY (`bill_id`) REFERENCES `old_books_buying_bill` (`bill_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `old_books_bought_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `old_books` (`book_id`);

--
-- Constraints for table `old_books_buying_bill`
--
ALTER TABLE `old_books_buying_bill`
ADD CONSTRAINT `seller_id` FOREIGN KEY (`seller_id`) REFERENCES `customer` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `store_id` FOREIGN KEY (`store_id`) REFERENCES `bookstore` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `old_books_selling_bill`
--
ALTER TABLE `old_books_selling_bill`
ADD CONSTRAINT `old_books_selling_bill_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `old_books_selling_bill_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `bookstore` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `old_books_sold`
--
ALTER TABLE `old_books_sold`
ADD CONSTRAINT `old_books_sold_ibfk_1` FOREIGN KEY (`bill_id`) REFERENCES `old_books_selling_bill` (`bill_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `old_books_sold_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `bookstore` (`store_id`),
ADD CONSTRAINT `old_books_sold_item _id` FOREIGN KEY (`item_id`) REFERENCES `old_books` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
