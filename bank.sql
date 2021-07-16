SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
--
-- Table structure for table transaction
--
CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Table structure for table users
--
CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table users
--
INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Sumedha', 'sb@email.com', 250000),
(2, 'Divyaa', 'ds@email.com', 600000),
(3, 'Yash', 'yd@email.com', 100000),
(4, 'Sukriti', 'smb@email.com', 700000),
(5, 'Saksham', 'stb@email.com', 150000),
(6, 'Anil', 'ad@email.com', 180000),
(7, 'Namita', 'nd@email.com', 140000),
(8, 'Madhu', 'ms@email.com', 130000),
(9, 'Rajnish', 'rs@email.com', 200000),
(10, 'Neeraj', 'nb@email.com', 240000);
--
-- Indexes for dumped tables
--
-- Indexes for table transaction
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);
--
-- Indexes for table users
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
--
-- AUTO_INCREMENT for dumped tables
--
-- AUTO_INCREMENT for table transaction
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table users
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;