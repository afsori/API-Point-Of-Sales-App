-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2020 at 04:02 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id_categories` int(11) NOT NULL,
  `Categories` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id_categories`, `Categories`) VALUES
(667, 'Tshirt '),
(668, 'Long Pants'),
(669, 'Jacket'),
(671, 'Shirt Updated'),
(672, 'makanan'),
(673, 'makanan'),
(674, 'makanan'),
(675, 'makanan'),
(676, 'makanan'),
(677, 'makanan'),
(678, 'makanan');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL,
  `name` varchar(35) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id_product`, `name`, `description`, `image`, `price`, `category`, `date_added`, `date_updated`, `quantity`) VALUES
(7, 'Granny\'s Victoria sponge', '', 'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--363933_12.jpg?itok=cm06vhxi', 27900, '', '2019-10-18 12:07:15', '2020-01-03 06:47:55', 0),
(8, 'Caramel soufflés', 'Soufflés are always an after-dinner winner, and these saucy caramel treats are no exception', 'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--484548_11.jpg?itok=VuIJwW0u', 29250, '', '2019-10-18 12:08:41', '2019-12-30 18:14:15', 50),
(9, 'Coffee & cream', 'This coffee and cream layered cocktail makes a decadent after-dinner drink served with chocolates', 'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--849521_11.jpg?itok=BQ0BUMuc', 20000, '', '2019-10-19 14:59:28', '2019-12-30 18:15:44', 20),
(10, 'Pink Drink', 'Entire recipe: 50 calories, 2g total fat (2g sat fat), 0mg sodium, 7g carbs, 1.5g fiber, 5g sugars, 0g protein', 'https://d2gtpjxvvd720b.cloudfront.net/system/recipe/image/1873/default_HG-low-calorie-recipe-for-Starbucks-pink-drink.jpg', 20000, '', '2019-10-19 15:13:14', '2019-12-30 18:19:52', 50),
(11, 'Kopi kekinian.', 'Kopi kekinian.', 'https://cdn.idntimes.com/content-images/community/2017/12/image-blog-kopi-73702b2d61ed23109fbac8aebb0551c3.jpg', 200, '', '2019-10-20 07:44:19', '2019-12-30 18:21:10', 50),
(12, 'Teh kekinian.', 'Tak hanya kopi kekinian yang meramaikan kuliner tanah air, Teh kekinian juga mulai marak di tahun ini. Mulai dari bubble tea, teh keju, hingga Thai tea dengan baragam pilihan rasa.', 'https://cdn.idntimes.com/content-images/community/2017/12/bubble-tea-be6eebe523a4acd7272c78ace3c65c01.jpg', 200, '', '2019-10-20 07:44:23', '2019-12-30 18:21:48', 50),
(13, 'Jus mangga', 'Diawali dengan kehadiran King Mango, akhirnya semakin banyak jus mangga kekinian yang hadir di tengah-tengah masyarakat. Perpaduan Jus mangga, whipped cream dan potongan mangga segar ini ternyata disukai banyak orang.', 'https://cdn.idntimes.com/content-images/community/2017/12/ddpmuw5v0aa0wn5-9c65c1b840c8d0e90ccf3bf37e632c7c.jpg', 200, '', '2019-10-20 07:44:25', '2019-12-30 18:22:46', 50),
(14, 'Milk shake', 'Kali ini bukan hanya dari segi rasanya, tapi cara penyajiannya. Jika biasanya milk shake disajikan bisa di atas gelas namun sekarang milk shake lebih sering di sajikan di dalan mugjar.', 'https://cdn.idntimes.com/content-images/community/2017/12/20162f012f212f142fmilkshakest57549-82081181db91a3dfb23d34647e0693af.jpg', 200, '', '2019-10-20 07:44:27', '2019-12-30 18:23:22', 50);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id_order` int(11) NOT NULL,
  `date_added` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `total` int(11) DEFAULT NULL,
  `count` int(100) DEFAULT NULL,
  `name` varchar(125) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id_order`, `date_added`, `total`, `count`, `name`) VALUES
(253, NULL, 20200, 2, 'Kopi kekinian.,Pink Drink'),
(254, NULL, 49250, 2, 'Coffee & cream,Caramel soufflés'),
(255, NULL, 200, 1, 'Kopi kekinian.'),
(256, NULL, 200, 1, 'Jus mangga'),
(257, NULL, 49450, 3, 'Jus mangga,Caramel soufflés,Pink Drink'),
(258, NULL, 558200, 3, 'Granny\'s Victoria sponge,Granny\'s Victoria sponge,Fried foods'),
(259, NULL, 558200, 3, 'Granny\'s Victoria sponge,Granny\'s Victoria sponge,Fried foods'),
(260, NULL, 339000, 4, 'Granny\'s Victoria sponge,Coffee & cream');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(8, 'hasan', '$2a$10$gxAl1.VsTPcylcrYV8o66O8/ctZe3r5L/N3wciu5G9dziETVOtB5i'),
(9, 'afsori', '$2a$10$1xL5fD3b6i1.l3x4ivDzAuyzQnT5skmWTIgU.d/QP90r5NSk/6uXi'),
(10, 'afsori', '$2a$10$KlR.uoXg5yyx5REnioWm8uy5K1n.mqpdaaI40pUrRT8pCrGIZGeAm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categories`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categories` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=679;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
