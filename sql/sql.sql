-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2021 at 12:46 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `productPrice` FLOAT NOT NULL,
  `productImage` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `userId`, `productId`, `qty`, `productName`, `productPrice`, `productImage`) VALUES
(40, 1, 6, 1, 'Essex EUP-123EA1', '230000000', '4c301f519e.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`) VALUES
(1, 'DOGE', 1),
(2, 'ETH', 1),
(4, 'BTC', 1),
(5, 'LUNA', 1);


-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdDate` date NOT NULL,
  `receivedDate` date DEFAULT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `createdDate`, `receivedDate`, `status`) VALUES
(39, 31, '2021-12-07', '2021-12-07', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `productPrice` FLOAT NOT NULL,
  `productName` varchar(100) NOT NULL,
  `productImage` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `orderId`, `productId`, `qty`, `productPrice`, `productName`, `productImage`) VALUES
(36, 39, 7, 2, '3190000', 'GUITAR YAMAHA CX40', 'd3ac08c33e.jpg'),
(37, 39, 4, 1, '749000000', 'Boston GP-156', 'a30bcd79d7.jpg'),
(38, 39, 8, 3, '19000000', 'Taylor 114E', 'cb50eef0d8.jpg'),
(39, 39, 9, 4, '4200000', 'Takamine D2D', '758ded2800.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `originalPrice` FLOAT NOT NULL,
  `promotionPrice` FLOAT NOT NULL,
  `image` varchar(50) NOT NULL,
  `createdBy` int(11) NOT NULL,
  `createdDate` date NOT NULL,
  `cateId` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `des` varchar(1000) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `soldCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `originalPrice`, `promotionPrice`, `image`, `createdBy`, `createdDate`, `cateId`, `qty`, `des`, `status`, `soldCount`) VALUES
(2, 'Kohler & Campbell KIG50D', 2, 3, 'ad9b7cdca7bb0956644ae1ef3832ad8f.png', 1, '0000-00-00', 2, 96, 'Mô tả', 1, 4),
(3, 'Kawai ND-21', 2, 3, 'ad9b7cdca7bb0956644ae1ef3832ad8f.png', 1, '0000-00-00', 2, 9, 'Mô tả nhạc chỗ này để sau chèn nhạc.', 1, 1),
(4, 'Boston GP-156', 4, 3, 'LiUXXCYxBDZmlGJeFIs6kA.png', 1, '0000-00-00', 2, 19, 'Mô tả', 1, 1),
(5, 'Kohler & Campbell J310B', 2, 1, 'LiUXXCYxBDZmlGJeFIs6kA.png', 1, '0000-00-00', 2, 8, 'Mô tả', 1, 2),
(6, 'Essex EUP-123EA1', 3, 3, 'LiUXXCYxBDZmlGJeFIs6kA.png', 1, '0000-00-00', 2, 7, 'Mô tả', 1, 3),
(7, 'GUITAR YAMAHA CX40', '3190000', '3190000', 'LiUXXCYxBDZmlGJeFIs6kA.png', 1, '2021-12-07', 4, 8, 'CX40', 1, 2),
(8, 'Taylor 114E', '19000000', '19000000', 'LiUXXCYxBDZmlGJeFIs6kA.png', 1, '2021-12-07', 4, 7, 'Mô tả', 1, 3),
(9, 'Takamine D2D', '4200000', '4200000', 'LiUXXCYxBDZmlGJeFIs6kA.png', 1, '2021-12-07', 4, 6, 'Mô tả', 1, 4),
(10, 'Takamine ED2DCNAT', '6350000', '6200000', 'LiUXXCYxBDZmlGJeFIs6kA.png', 1, '2021-12-07', 4, 10, 'Mô tả', 1, 0),
(11, 'TAYLOR 150E 12 String', '21100000', '21100000', 'LiUXXCYxBDZmlGJeFIs6kA.png', 1, '2021-12-07', 4, 10, 'Mô tả', 1, 0),
(12, 'TAYLOR 214CE DLX', 5, 1, 'LiUXXCYxBDZmlGJeFIs6kA.png', 1, '2021-12-07', 4, 10, 'Mô tả', 1, 0),
(13, 'Roland BK-9', 4, '31000000', 'LiUXXCYxBDZmlGJeFIs6kA.png', 1, '2021-12-07', 5, 20, 'Mô tả', 1, 0),
(14, 'Roland E-A7', '29000000', '29000000', 'LiUXXCYxBDZmlGJeFIs6kA.png', 1, '2021-12-07', 5, 15, 'Mô tả', 1, 0),
(15, 'Roland FA-06', 1, 1, 'LiUXXCYxBDZmlGJeFIs6kA.png', 1, '2021-12-07', 5, 10, 'Mô tả', 1, 0),
(16, 'Roland FA-08', 5, 5, 'LiUXXCYxBDZmlGJeFIs6kA.png', 1, '2021-12-07', 5, 10, 'Mô tả', 1, 0),
(17, 'Roland AXSYNTH', 3, 3, 'LiUXXCYxBDZmlGJeFIs6kA.png', 1, '2021-12-07', 5, 20, 'Mô tả', 1, 0),
(18, 'Roland GAIA SH-01', 1, 1, 'LiUXXCYxBDZmlGJeFIs6kA.png', 1, '2021-12-07', 5, 5, 'Mô tả', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `address` varchar(500) NOT NULL,
  `isConfirmed` tinyint(4) NOT NULL DEFAULT 0,
  `captcha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `fullname`, `dob`, `password`, `role_id`, `status`, `address`, `isConfirmed`, `captcha`) VALUES
(1, 'admin@gmail.com', 'Nguyễn Trường', '2021-11-01', '21232f297a57a5a743894a0e4a801fc3', 1, 1, '', 1, '');

--O
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`userId`),
  ADD KEY `product_id` (`productId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`userId`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`orderId`),
  ADD KEY `product_id` (`productId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cate_id` (`cateId`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;


COMMIT;

