-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2023 at 06:27 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `watch_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id_account` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `create_date` datetime DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id_account`, `user_name`, `password`, `create_date`, `status`, `user_id`) VALUES
(1, 'hai112', '123', '2023-04-10 11:13:35', 1, 3),
(2, 'vinh', '123', '2023-04-10 11:30:38', 1, 2),
(3, 'phat123', '123', '2023-04-10 11:30:58', 1, 1),
(4, 'linh2005', '123', '2023-04-10 11:35:52', 1, 4),
(5, 'thu000', '123', '2023-04-11 13:51:27', 1, 6),
(6, 'abc', 'abc', '2023-05-08 14:42:40', 1, 10),
(10, 'tk', 'mk', '2023-05-11 17:03:45', 1, 14),
(11, 'pv', '1', '2023-05-11 20:45:11', 1, 15),
(12, 'nguoidung', 'pass', '2023-05-11 20:45:35', 1, 16),
(13, 'abcd', 'Vinh1234', '2023-05-15 00:00:00', 1, 17),
(20, 'abcd', 'Vinh1234', '2023-05-15 00:00:00', 1, 24),
(21, 'abcd', 'Vinh1234', '2023-05-15 00:00:00', 1, 25),
(23, 'abcd', 'Vinh1234', '2023-05-15 00:00:00', 1, 27),
(24, 'abcd', 'Vinh1234', '2023-05-15 00:00:00', 1, 28),
(25, 'abcd', 'Vinh1234', '2023-05-15 00:00:00', 1, 29),
(26, 'abcd', 'Vinh1234', '2023-05-15 00:00:00', 1, 30),
(27, 'abcd', 'Vinh1234', '2023-05-15 00:00:00', 1, 31),
(28, 'abcde', 'Vinh1234', '2023-05-15 00:00:00', 1, 32);

-- --------------------------------------------------------

--
-- Table structure for table `action`
--

CREATE TABLE `action` (
  `id_action` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(25) NOT NULL,
  `icon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `action`
--

INSERT INTO `action` (`id_action`, `name`, `code`, `icon`) VALUES
(1, 'thông tin', 'qltt', 'icon ti-id-badge'),
(2, 'tài khoản', 'qltk', 'icon ti-home'),
(3, 'sản phẩm', 'qlsp', 'icon ti-time'),
(4, 'hóa đơn', 'qlhd', 'icon ti-receipt'),
(5, 'đơn hàng', 'qldh', 'icon ti-truck'),
(6, 'báo cáo', 'qlbc', 'icon ti-bar-chart');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id_bill` int(11) NOT NULL,
  `deliver_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_date` datetime DEFAULT current_timestamp(),
  `total_price` float DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `voucher_id` int(11) DEFAULT NULL,
  `status_bill` int(11) DEFAULT NULL,
  `dienthoai` varchar(11) DEFAULT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `description_bill` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id_bill`, `deliver_address`, `create_date`, `total_price`, `user_id`, `voucher_id`, `status_bill`, `dienthoai`, `fullname`, `email`, `description_bill`) VALUES
(488, 'Quận 11', '2023-05-16 03:15:01', 18195300, 6, 1, 1, '0902458804', 'Hoàng Văn Thụ', 'linh@gmail.com', ''),
(489, 'hanoi', '2023-05-16 11:03:21', 796000, 16, 1, 2, '0842109878', 'taikhoan', 'abc@abc.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id_bill` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `unit_price` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`id_bill`, `id_product`, `unit_price`, `quantity`, `is_deleted`) VALUES
(488, 6, '18195300', 1, 0),
(489, 10, '766000', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id_band` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id_band`, `name`) VALUES
(1, 'Casio'),
(2, 'Citizen'),
(3, 'G-Shock & Baby-G'),
(4, 'Louis Erard'),
(5, 'Olym Pianus - Olympia Star'),
(6, 'Orient'),
(7, 'Seiko'),
(8, 'Tissot');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `name`) VALUES
(1, 'Đồng hồ nam'),
(2, 'Đồng hồ nữ'),
(3, 'Phụ kiện');

-- --------------------------------------------------------

--
-- Table structure for table `material_glass`
--

CREATE TABLE `material_glass` (
  `id_material_glass` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `material_glass`
--

INSERT INTO `material_glass` (`id_material_glass`, `name`) VALUES
(1, 'Kính Cứng'),
(2, 'Kính Sapphia');

-- --------------------------------------------------------

--
-- Table structure for table `material_wire`
--

CREATE TABLE `material_wire` (
  `id_material_wire` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `material_wire`
--

INSERT INTO `material_wire` (`id_material_wire`, `name`) VALUES
(1, 'Dây Da'),
(2, 'Dây Kim Loại'),
(3, 'Dây Nhựa / Cao Su'),
(4, 'Dây Vải');

-- --------------------------------------------------------

--
-- Table structure for table `pin`
--

CREATE TABLE `pin` (
  `id_pin` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pin`
--

INSERT INTO `pin` (`id_pin`, `name`) VALUES
(1, 'Máy Quartz'),
(2, 'Máy cơ'),
(3, 'Máy lên cót tay'),
(4, 'Máy lên dây tự động');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `pin_id` int(11) DEFAULT NULL,
  `material_wire_id` int(11) NOT NULL,
  `material_glass_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `name`, `img`, `price`, `quantity`, `category_id`, `brand_id`, `pin_id`, `material_wire_id`, `material_glass_id`, `create_date`, `is_deleted`) VALUES
(5, 'ĐỒNG HỒ CITIZEN AU1080-20A NAM ECO-DRIVE DÂY VẢI', 'dong-ho-citizen-au1080-20a-nam-eco-drive-day-vai-600x600.jpg', 5040000, 9, 1, 2, 3, 2, 1, '2023-05-01 13:39:03', 0),
(6, 'ĐỒNG HỒ LOUIS ERARD 13900AA05.BDC102 NAM PIN DÂY DA', '13900AA05.BDC102-600x600.jpg', 18195300, 2, 1, 4, 1, 1, 1, '2023-05-02 13:39:17', 0),
(7, 'ĐỒNG HỒ OLYM PIANUS OP99141-71AGSK TRẮNG NAM TỰ ĐỘNG DÂY INOX', 'dong-ho-olym-pianus-op99141-71agsk-trang-nam-tu-dong-day-inox-600x600.jpg', 6912000, 10, 1, 5, 3, 2, 2, '2023-05-01 13:39:32', 0),
(8, 'ĐỒNG HỒ ORIENT FSTAA002W0 NAM PIN DÂY DA', 'EX1410-88A-600x600.jpg', 2737000, 3, 1, 6, 4, 1, 1, '2023-05-03 13:39:45', 0),
(10, 'ĐỒNG HỒ CASIO LA670WL-1BDF NỮ PIN DÂY DA', 'RA-BA0001G10B-000 (1).jpg', 766000, 9, 2, 1, 1, 2, 1, '2023-05-04 13:39:59', 0),
(11, 'ĐỒNG HỒ CITIZEN EX1410-88A NỮ ECO-DRIVE DÂY INOX', '885sslb-600x600.jpg', 6120000, 3, 2, 2, 4, 2, 1, '2023-05-05 13:40:13', 0),
(12, 'ĐỒNG HỒ CASIO GA-100DE-2ADR NỮ PIN DÂY NHỰA', 'dong-ho-casio-ga-100de-2adr-nu-pin-day-nhua-600x600.jpg', 4393000, 1, 2, 3, 1, 3, 2, '2023-05-06 13:40:27', 0),
(13, 'ĐỒNG HỒ TISSOT T41.1.183.34 NỮ TỰ ĐỘNG DÂY INOX', 'dong-ho-casio-la670wl-1bdf-nu-pin-day-da-600x600.jpg', 17640000, 5, 2, 8, 4, 1, 2, '2023-05-07 13:40:42', 0),
(97, 'Đồng hồ ORIENT 36.4 mm Nữ RA-AC0008S10B', 'dong-ho-citizen-au1080-20a-nam-eco-drive-day-vai-600x600.jpg', 1373600, 4, 2, 6, 3, 2, 2, '2023-05-08 13:40:57', 0),
(191, 'abc', 'default-share-removebg-preview.png', 110000, 1, 1, 1, 1, 1, 1, '2023-05-02 13:41:11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `id_product` int(11) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(50) NOT NULL,
  `color` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shape` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `size` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `water_resistance` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `origin` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_detail`
--

INSERT INTO `product_detail` (`id_product`, `description`, `code`, `color`, `shape`, `size`, `water_resistance`, `gender`, `origin`) VALUES
(5, 'Đồng hồ nam Citizen AU1080-20A nổi bật Pin sử dụng công nghệ hiện đại Eco-Drive (Năng Lượng Ánh Sáng), với thiết kế theo phong cách thời trang với dây đeo chất liệu bằng vải tông màu kem trẻ trung.', 'AU1080-20A', 'Trắng', 'Tròn', '40 - 43mm', '3ATM', 'Nam', 'Trung Quốc'),
(6, 'Đây là dòng sản phẩm tuyệt vời cho những người đang tìm kiếm chiếc đồng hồ được thiết kế riêng mang đầy đủ sự “chất” Vintage cho đến hiện nay, đó là “chất cổ điển” và chỉ là “cổ điển” tinh khiết.', '13900AA05.BDC102', 'Xanh', 'Tròn', '> 44mm', '5ATM', 'Nam', 'Nhật Bản'),
(7, 'Mẫu đồng hồ Olym Pianus OP99141-71AGSK vẻ ngoài tinh tế sang trọng ấn tượng với kiểu thiết kế độc đáo đến từ ô chân kính phô diễn ra 1 phần trải nghiệm hoạt động của bộ máy cơ đầy nam tính.', 'OP99141-71AGSK- T', 'Bạc Vàng', 'Tròn', '40 - 43mm', '3ATM', 'Nam', 'Trung Quốc'),
(8, 'Đồng hồ Orient FSTAA002W0 có vỏ kim loại phủ màu vàng sang trọng, kim chỉ và vạch số thanh mãnh nổi bật trên nền số, ô lịch ngày vị trí 3h tinh tế, dây đeo bằng chất liệu da cao cấp màu nâu đem lại phong cách lịch lãm, sang trọng cho phái mạnh', 'FSTAA002W0', 'Trắng Vàng', 'Chữ nhật', '35 - 39mm', '3ATM', 'Nam', 'Trung Quốc'),
(10, 'Mẫu đồng hồ Casio LA670WL-1BDF  với thiết kế bộ máy nhỏ gọn tạo nên vẻ ngoài thanh mảnh nữ tính, vỏ máy tông màu vàng phối cùng mẫu dây đeo kim loại đen tăng thêm vẻ đẹp thời trang.', ' LA670WL-1BDF', 'Bạc Đen', 'Vuông', '< 29mm', '3ATM', 'Nữ', 'Nhật Bản'),
(11, 'Đồng hồ Citizen EX1410-88A có mặt số hình chữ nhật bầu tinh tế, kim chỉ và vạch số thanh mãnh nổi bật trên nền số màu trắng trang nhã, phần quai được đính pha lê Swarovski sang trọng mang đến vẻ thanh lịch, duyên dáng dành cho phái nữ.', 'EX1410-88A', 'Bạc', 'Đặc biệt', '< 29mm', '3ATM', 'Nữ', 'Trung Quốc'),
(12, 'Mẫu G-Shock GA-100DE-2ADR với vẻ ngoài cá tính thích hợp cho những bạn trẻ năng động, phù hợp cho những chuyến đi phượt ấn tượng với khả năng chịu nước lên đến 20ATM, với đồng hồ điện tử hiện thị đa chức năng tiện ích.', 'GA-100DE-2ADR', 'Xanh', 'Tròn', '> 44 mm', '5ATM', 'Nữ', 'Nhật Bản'),
(13, 'Mẫu Tissot T41.1.183.34 vẻ ngoài giản dị của chiếc đồng hồ 3 kim nhưng lại khoác lên sự trang nhã với nền mặt số được phối tông màu trắng trước bề mặt kính Sapphire kết hợp cùng tổng thể chiếc đồng hồ kim loại màu bạc đầy sang trọng.', 'T41.1.183.34', 'Trắng', 'Tròn', '< 29mm', '3ATM', 'Nữ', 'Trung Quốc'),
(97, 'Mang nét sang trọng và tinh tế, mẫu đồng hồ kim này phù hợp để các quý cô thể hiện sức hấp dẫn của mình\nĐồng hồ Orient RA-AC0008S10B - Cơ tự động là chiếc đồng hồ nữ mang thương hiệu Orient nổi tiếng và lâu đời của Nhật Bản.', 'RA-AC0008S10B', 'Trắng', 'Tròn', '< 29mm', '3ATM', '', 'Nhật Bản');

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `id_receipt` int(11) NOT NULL,
  `create_date` datetime DEFAULT current_timestamp(),
  `supplier_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`id_receipt`, `create_date`, `supplier_id`, `user_id`, `total`) VALUES
(24, '2023-04-15 22:45:23', 3, 1, 5034720),
(25, '2023-04-15 22:46:27', 3, 1, 6000000),
(27, '2023-04-15 23:27:24', 3, 1, 2747200),
(28, '2023-05-09 16:19:29', 3, 1, 110000);

-- --------------------------------------------------------

--
-- Table structure for table `receipt_detail`
--

CREATE TABLE `receipt_detail` (
  `id_receipt_detail` int(11) NOT NULL,
  `receipt_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `percent` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receipt_detail`
--

INSERT INTO `receipt_detail` (`id_receipt_detail`, `receipt_id`, `product_id`, `quantity`, `price`, `percent`) VALUES
(19, 24, 97, 4, 1234000, 0.02),
(20, 25, 97, 6, 1000000, 0),
(22, 27, 97, 2, 1360000, 0.01),
(23, 28, 191, 1, 100000, 0.1);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id_role`, `name`) VALUES
(1, 'admin'),
(2, 'manage'),
(3, 'staff'),
(4, 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `role_action`
--

CREATE TABLE `role_action` (
  `id_role` int(11) NOT NULL,
  `id_action` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_action`
--

INSERT INTO `role_action` (`id_role`, `id_action`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `name`, `address`, `phone_number`, `email`) VALUES
(3, 'ĐỒNG HỒ HƯNG THỊNH', '256 Nguyễn Thiện Thuật, Phường 03, Quận 3, TP Hồ Chí Minh (TPHCM)', '0918795589', 'donghohunghtinh@gmail.com'),
(4, 'ĐĂNG QUANG WATCH', 'Số 55 Trần Đăng Ninh, Quận Cầu Giấy, TP. Hà Nội (TPHN)', '0986681189', 'sieuthidangquang@gmail.com'),
(5, 'ĐỒNG HỒ HT LUXURY', '79 Nguyễn Văn Tuyết, P. Ngã Tư Sở, Q. Đống Đa, TP Hà Nội (TPHN)', ' 0833743222', 'htluxury.vn@gmail.com'),
(6, 'Đồng hồ Hải Triều', '23/22A đường số 3, P.BHHA, Q.Bình Tân', '0305060102', 'phatchuong007@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id_type` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id_type`, `name`) VALUES
(1, 'Nhân viên'),
(2, 'Khách hàng');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `name`, `address`, `phone`, `email`, `type`, `role_id`, `birthday`, `gender`) VALUES
(1, 'Chương Vĩnh Phát', '23/22A đường số 3, P.BHHA, Q.Bình Tân', '0902458804', 'phatchuong007@gmail.com', 1, 1, '2002-01-03', 1),
(2, 'Phạm Quang Vinh', '23/22A đường số 3, P.BHHA, Q.Bình Tân', '0902458804', 'vinhphat007@gmail.com', 1, 1, '2002-12-05', 1),
(3, 'La Mạnh Hải', '23/22A đường số 3, P.BHHA, Q.Bình Tân', '0902458804', '1@gmail.com', 1, 1, '2001-03-09', 1),
(4, 'Chương Mỹ Linh', 'Quận 11', '0908050602', 'linh@gmail.com', 2, 4, '2005-10-29', 2),
(5, 'Chương Mỹ Linh', 'Quận 11', '0908050602', '1@gmail.com', 2, 4, '2006-02-09', 2),
(6, 'Hoàng Văn Thụ', 'Quận 11', '0902458804', 'linh@gmail.com', 2, 4, '2003-02-05', 2),
(7, 'Hồ Ngọc Lâm', 'Quận 11', '0908050602', 'Lam@gmail.com', 1, 3, '2000-12-02', 2),
(9, 'Tạ Văn Thanh', 'Quận 11', '0902458804', 'Thanh@gmail.com', 1, 3, '2006-12-05', 1),
(10, 'test', '1', '1', '1', 1, 4, '2023-05-01', 1),
(14, 'v', 'v', '1', '1', 2, 4, '2023-05-02', 1),
(15, 'user', 'tphcm', '1', 'a', 2, 4, '2023-05-07', 1),
(16, 'taikhoan', 'hanoi', '0812364676', 'abc@abc.com', 2, 4, '2023-05-01', 1),
(17, 'Hoai Nam', '1', '0919869283', 'phannguyenhoainam1720@gmail.com', 2, 4, '2023-05-01', 0),
(18, 'abc', 'abc', '0122423333', 'abc@gmail.com', 2, 4, '2023-05-01', 0),
(19, 'Hoai Nam', '1', '0919869283', 'phannguyenhoainam1720@gmail.com', 2, 4, '2023-05-01', 0),
(20, 'Hoai Nam', '1', '0919869283', 'phannguyenhoainam1720@gmail.com', 2, 4, '2023-05-01', 0),
(21, 'Hoai Nam', '1', '0919869283', 'phannguyenhoainam1720@gmail.com', 2, 4, '2023-05-01', 0),
(22, 'Hoai Nam', '1', '0919869283', 'phannguyenhoainam1720@gmail.com', 2, 4, '2023-05-01', 0),
(23, 'Hoai Nam', '1', '0919869283', 'phannguyenhoainam1720@gmail.com', 2, 4, '2023-05-01', 0),
(24, 'Hoai Nam', '1', '0919869283', 'phannguyenhoainam1720@gmail.com', 2, 4, '2023-05-02', 0),
(25, 'Hoai Nam', '1', '0919869283', 'phannguyenhoainam1720@gmail.com', 2, 4, '2023-05-01', 0),
(26, 'Hoai Nam', '1', '0919869283', 'phannguyenhoainam1720@gmail.com', 2, 4, '2023-05-01', 0),
(27, 'Hoai Nam', '1', '0919869283', 'phannguyenhoainam1720@gmail.com', 2, 4, '2023-05-01', 0),
(28, 'Hoai Nam', '1', '0919869283', 'phannguyenhoainam1720@gmail.com', 2, 4, '2023-05-01', 0),
(29, 'Hoai Nam', '1', '0919869283', 'phannguyenhoainam1720@gmail.com', 2, 4, '2023-05-01', 0),
(30, 'Hoai Nam', '1', '0919869283', 'phannguyenhoainam1720@gmail.com', 2, 4, '2023-05-01', 0),
(31, 'Hoai Nam', '1', '0919869283', 'phannguyenhoainam1720@gmail.com', 2, 4, '2023-05-01', 0),
(32, 'Hoai Nam', '1', '0919869283', 'phannguyenhoainam1720@gmail.com', 2, 4, '2023-05-01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `id_voucher` int(11) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `value` float DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`id_voucher`, `code`, `value`, `start_date`, `end_date`) VALUES
(1, NULL, NULL, NULL, NULL),
(2, 'giamgia2%', 0.02, '2023-04-11 00:00:00', '2023-04-26 00:00:00'),
(3, 'abc', 10, '2023-05-01 16:59:16', '2023-05-02 21:59:16'),
(4, 'vinh', 20, '2023-05-09 05:34:15', '2023-05-11 10:34:15'),
(5, 'quangvinh', 50, '2023-05-11 08:48:57', '2023-05-20 13:48:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id_account`),
  ADD KEY `fk_account_user` (`user_id`);

--
-- Indexes for table `action`
--
ALTER TABLE `action`
  ADD PRIMARY KEY (`id_action`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id_bill`),
  ADD KEY `fk_bill_user` (`user_id`),
  ADD KEY `fk_bill_voucher` (`voucher_id`);

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id_bill`,`id_product`),
  ADD KEY `bill_detail_ibfk_2` (`id_product`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id_band`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `material_glass`
--
ALTER TABLE `material_glass`
  ADD PRIMARY KEY (`id_material_glass`);

--
-- Indexes for table `material_wire`
--
ALTER TABLE `material_wire`
  ADD PRIMARY KEY (`id_material_wire`);

--
-- Indexes for table `pin`
--
ALTER TABLE `pin`
  ADD PRIMARY KEY (`id_pin`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `fk_product_category` (`category_id`),
  ADD KEY `fk_product_brand` (`brand_id`),
  ADD KEY `fk_product_pin` (`pin_id`),
  ADD KEY `fk_p_m_g` (`material_glass_id`),
  ADD KEY `fk_material_wire` (`material_wire_id`);

--
-- Indexes for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`id_receipt`),
  ADD KEY `fk_receipt_supplier` (`supplier_id`),
  ADD KEY `fk_receipt_user` (`user_id`);

--
-- Indexes for table `receipt_detail`
--
ALTER TABLE `receipt_detail`
  ADD PRIMARY KEY (`id_receipt_detail`),
  ADD KEY `fk_receipt_detail_receipt` (`receipt_id`),
  ADD KEY `fk_receipt_detail_product` (`product_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `role_action`
--
ALTER TABLE `role_action`
  ADD PRIMARY KEY (`id_role`,`id_action`),
  ADD KEY `fk_roleaction_action` (`id_action`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `fk_user_role` (`role_id`),
  ADD KEY `fk_user_type` (`type`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id_voucher`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id_account` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `action`
--
ALTER TABLE `action`
  MODIFY `id_action` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id_bill` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=490;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id_band` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `material_glass`
--
ALTER TABLE `material_glass`
  MODIFY `id_material_glass` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `material_wire`
--
ALTER TABLE `material_wire`
  MODIFY `id_material_wire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pin`
--
ALTER TABLE `pin`
  MODIFY `id_pin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `id_receipt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `receipt_detail`
--
ALTER TABLE `receipt_detail`
  MODIFY `id_receipt_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `fk_account_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `fk_bill_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `fk_bill_voucher` FOREIGN KEY (`voucher_id`) REFERENCES `voucher` (`id_voucher`);

--
-- Constraints for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `bill_detail_ibfk_1` FOREIGN KEY (`id_bill`) REFERENCES `bill` (`id_bill`),
  ADD CONSTRAINT `bill_detail_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_material_wire` FOREIGN KEY (`material_wire_id`) REFERENCES `material_wire` (`id_material_wire`),
  ADD CONSTRAINT `fk_p_m_g` FOREIGN KEY (`material_glass_id`) REFERENCES `material_glass` (`id_material_glass`),
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id_band`),
  ADD CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id_category`),
  ADD CONSTRAINT `fk_product_pin` FOREIGN KEY (`pin_id`) REFERENCES `pin` (`id_pin`);

--
-- Constraints for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `fk_productdetail_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `receipt`
--
ALTER TABLE `receipt`
  ADD CONSTRAINT `fk_receipt_supplier` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id_supplier`),
  ADD CONSTRAINT `fk_receipt_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `receipt_detail`
--
ALTER TABLE `receipt_detail`
  ADD CONSTRAINT `fk_receipt_detail_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id_product`),
  ADD CONSTRAINT `fk_receipt_detail_receipt` FOREIGN KEY (`receipt_id`) REFERENCES `receipt` (`id_receipt`);

--
-- Constraints for table `role_action`
--
ALTER TABLE `role_action`
  ADD CONSTRAINT `fk_roleaction_action` FOREIGN KEY (`id_action`) REFERENCES `action` (`id_action`),
  ADD CONSTRAINT `fk_roleaction_role` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id_role`),
  ADD CONSTRAINT `fk_user_type` FOREIGN KEY (`type`) REFERENCES `type` (`id_type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
