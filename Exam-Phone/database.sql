-- --------------------------------------------------------
-- Máy chủ:                      127.0.0.1
-- Server version:               10.4.25-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Phiên bản:           12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table phone.infomation
CREATE TABLE IF NOT EXISTS `infomation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=474 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table phone.infomation: ~9 rows (approximately)
DELETE FROM `infomation`;
INSERT INTO `infomation` (`id`, `name`, `brand`, `price`, `description`) VALUES
	(1, 'But', 'Nokia', 11.11, 'DTcuaBut'),
	(2, 'HaBut', 'Samsung', 10, 'abc'),
	(3, 'HaHuyBut', 'Apple', 22.22, 'xyz'),
	(4, 'hahuybut', 'OPPO', 11.11, 'dt'),
	(5, 'buthuyha', 'OPPO', 11.11, 'abcd'),
	(470, 'Dat', 'Realme', 101.1, 'asdf'),
	(471, 'Quoc Anh', 'Nokia', 99.99, ' abc123'),
	(472, 'Thanh', 'Apple', 12.12, '1234'),
	(473, 'Duong', 'Nokia', 13.13, '5678abc');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
