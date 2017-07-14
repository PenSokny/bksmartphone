-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2016 at 11:29 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datns`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessories`
--

CREATE TABLE `accessories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `price` int(11) NOT NULL,
  `long_des` text COLLATE utf8_bin NOT NULL,
  `short_des` text COLLATE utf8_bin NOT NULL,
  `promotion_percent` int(11) NOT NULL,
  `accessories_category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `accessories`
--

INSERT INTO `accessories` (`id`, `name`, `price`, `long_des`, `short_des`, `promotion_percent`, `accessories_category_id`, `product_id`) VALUES
(21, 'Ốp lưng Galaxy S7 Edge Nhựa Rubber X-Mobile', 70000, '', '<ul>\r\n	<li>Chất liệu nhựa rubber, kiểu d&aacute;ng thời trang v&agrave; đẹp mắt</li>\r\n	<li>Thiết kế vừa vặn v&agrave; &ocirc;m s&aacute;t th&acirc;n m&aacute;y</li>\r\n	<li>Dễ d&agrave;ng th&aacute;o/lắp ốp v&agrave;o m&aacute;y</li>\r\n</ul>\r\n', 0, 1, 12),
(22, 'Ốp lưng Galaxy S7 Edge Nhựa trong viền Nude', 70000, '', '<ul>\r\n	<li>Chất liệu nhựa trong, kiểu d&aacute;ng thời trang v&agrave; đẹp mắt</li>\r\n	<li>Thiết kế vừa vặn v&agrave; &ocirc;m s&aacute;t th&acirc;n m&aacute;y</li>\r\n	<li>Dễ d&agrave;ng th&aacute;o/lắp ốp v&agrave;o m&aacute;y</li>\r\n</ul>\r\n', 0, 1, 12),
(23, 'Pin sạc dự phòng Polymer 15000 mAh Eco TS-D195', 690000, '<ul>\r\n	<li>Hiệu suất sạc:&nbsp;<span style="line-height:1.6">65%</span></li>\r\n	<li>Đ&egrave;n LED b&aacute;o hiệu:&nbsp;<span style="line-height:1.6">C&oacute;</span></li>\r\n	<li>Thời gian sạc:&nbsp;<span style="line-height:1.6">10h với Adapter 2A- 8h với adapter 2.4A</span></li>\r\n	<li>Nguồn v&agrave;o: &nbsp;<span style="line-height:1.6">DC5V 2A</span></li>\r\n	<li>Cổng ra USB 1:&nbsp;<span style="line-height:1.6">DC5V 1A</span></li>\r\n	<li>Cổng ra USB 2:&nbsp;<span style="line-height:1.6">DC5V 2A</span></li>\r\n	<li>K&iacute;ch thước (NxDxC):<span style="line-height:1.6">137.6x64.1x22 mm</span></li>\r\n	<li>Tự ngắt khi sạc đầy điện thoại: &nbsp;<span style="line-height:1.6">Kh&ocirc;ng</span></li>\r\n</ul>\r\n', '<ul>\r\n	<li>D&ugrave;ng để sạc điện thoại,m&aacute;y t&iacute;nh bảng mọi l&uacute;c, mọi nơi.</li>\r\n	<li>L&otilde;i pin Polymer bền bỉ.</li>\r\n	<li>Thiết kế thời trang v&agrave; sang trọng.</li>\r\n	<li>T&iacute;ch hợp đ&egrave;n LED b&aacute;o trạng th&aacute;i pin tiện dụng</li>\r\n	<li>C&ocirc;ng nghệ Smart IC tự động điều chỉnh nguồn ra.</li>\r\n</ul>\r\n', 0, 2, 12),
(24, 'Pin sạc dự phòng Polymer 10000mAh Xmobile D10000', 620000, '<ul>\r\n	<li>Hiệu suất sạc: &nbsp;<span style="line-height:1.6">70%</span></li>\r\n	<li>Đ&egrave;n LED b&aacute;o hiệu:&nbsp;<span style="line-height:1.6">C&oacute;</span></li>\r\n	<li>Thời gian sạc:&nbsp;<span style="line-height:1.6">7 giờ đến 8 giờ</span></li>\r\n	<li>Nguồn v&agrave;o:<span style="line-height:1.6">5V - 2A</span></li>\r\n	<li>Cổng ra USB 1:&nbsp;<span style="line-height:1.6">5V - 1A</span></li>\r\n	<li>Cổng ra USB 2:&nbsp;<span style="line-height:1.6">5V - 2.1A</span></li>\r\n	<li>K&iacute;ch thước (NxDxC):&nbsp;<span style="line-height:1.6">7.5x15.3x1.2 cm</span></li>\r\n	<li>Tự ngắt khi sạc đầy điện thoại: &nbsp;<span style="line-height:1.6">Kh&ocirc;ng</span></li>\r\n</ul>\r\n', '<ul>\r\n	<li>D&ugrave;ng để sạc điện thoại mọi l&uacute;c, mọi nơi m&agrave; kh&ocirc;ng cần ổ điện.</li>\r\n	<li>2 cổng sạc 1A v&agrave; 2.1A - Sạc cho điện thoại v&agrave; m&aacute;y t&iacute;nh bảng.</li>\r\n	<li>Sử dụng l&otilde;i pin Polymer Sony an to&agrave;n, bền bỉ.</li>\r\n	<li>Tuổi thọ hơn 1000 lần sạc.</li>\r\n	<li>C&oacute; t&iacute;ch hợp đ&egrave;n pin tiện dụng.</li>\r\n	<li>Thương hiệu Xmobile độc quyền.</li>\r\n</ul>\r\n', 0, 2, 12),
(25, 'Tai nghe in-ear Apple ME186FE/A', 600000, '<ul>\r\n	<li>Jack cắm:&nbsp;<span style="line-height:1.6">3.5 mm</span></li>\r\n	<li>Ph&iacute;m t&iacute;nh năng:&nbsp;<span style="line-height:1.6">Tắt mở, dừng tắt nhạc, tăng giảm &acirc;m lượng, nhận hay ngắt cuộc gọi</span></li>\r\n	<li>T&iacute;nh năng kh&aacute;c:&nbsp;<span style="line-height:1.6">Dải tần từ 5Hz-20kHz</span></li>\r\n</ul>\r\n', '<ul>\r\n	<li>Thiết kế đẹp mắt, tinh tế.</li>\r\n	<li>Dải tần từ 5Hz-20kHz mang lại &acirc;m bass chắc v&agrave; ấm.</li>\r\n	<li>Thiết kế bằng th&eacute;p kh&ocirc;ng rỉ, ngăn ngừa bụi bẩn v&agrave; vệ sinh dễ d&agrave;ng.</li>\r\n	<li>Jack cắm 3.5mm gi&uacute;p tương th&iacute;ch với nhiều điện thoại.</li>\r\n	<li>Sản phẩm ch&iacute;nh h&atilde;ng Apple, đảm bảo chất lượng.</li>\r\n</ul>\r\n', 10, 5, 12),
(26, 'Ốp lưng iPhone 6-6S Plus Nhựa Unique Baby Nude', 70000, '', '<ul>\r\n	<li>Chất liệu nhựa unique, c&oacute; độ bền cao.</li>\r\n	<li>Kiểu d&aacute;ng đẹp mắt, hợp thời trang.</li>\r\n	<li>Thiết kế vừa vặn v&agrave; &ocirc;m s&aacute;t th&acirc;n m&aacute;y.</li>\r\n	<li>Dễ d&agrave;ng th&aacute;o/lắp ốp v&agrave;o m&aacute;y.</li>\r\n</ul>\r\n', 0, 1, 1),
(27, 'Ốp lưng iPhone 6-6S Plus Nhựa dẻo Cô gái Rose', 125000, '', '<ul>\r\n	<li>Chất liệu nhựa dẻo, c&oacute; độ bền cao.</li>\r\n	<li>Kiểu d&aacute;ng đẹp mắt, hợp thời trang.</li>\r\n	<li>Thiết kế vừa vặn v&agrave; &ocirc;m s&aacute;t th&acirc;n m&aacute;y.</li>\r\n	<li>Dễ d&agrave;ng th&aacute;o/lắp ốp v&agrave;o m&aacute;y.</li>\r\n</ul>\r\n', 0, 1, 1),
(28, 'Pin sạc dự phòng Polymer 10000 mAh Eco TS-D190', 480000, '<ul>\r\n	<li>Hiệu suất sạc:&nbsp;<span style="line-height:1.6">65%</span></li>\r\n	<li>Đ&egrave;n LED b&aacute;o hiệu:&nbsp;<span style="line-height:1.6">Kh&ocirc;ng</span></li>\r\n	<li>Thời gian sạc:&nbsp;<span style="line-height:1.6">7 đế 9h với adapter 2A</span></li>\r\n	<li>Nguồn v&agrave;o:&nbsp;<span style="line-height:1.6">5V-2A</span></li>\r\n	<li>Cổng ra USB 1:&nbsp;<span style="line-height:1.6">5V-2A</span></li>\r\n	<li>Cổng ra USB 2:&nbsp;<span style="line-height:1.6">Kh&ocirc;ng.</span></li>\r\n	<li>K&iacute;ch thước (NxDxC):&nbsp;<span style="line-height:1.6">135.5x66.1x7 mm</span></li>\r\n	<li>Tự ngắt khi sạc đầy điện thoại: &nbsp;<span style="line-height:1.6">Kh&ocirc;ng</span></li>\r\n</ul>\r\n', '<ul>\r\n	<li>D&ugrave;ng để sạc điện thoại,m&aacute;y t&iacute;nh bảng mọi l&uacute;c, mọi nơi.</li>\r\n	<li>L&otilde;i pin Polymer bền bỉ.</li>\r\n	<li>Kiểu d&aacute;ng đẹp mắt, hợp thời trang.</li>\r\n	<li>Tương th&iacute;ch với hầu hết điện thoại.</li>\r\n	<li>C&ocirc;ng nghệ Smart IC tự động điều chỉnh nguồn ra.</li>\r\n	<li>Bảo h&agrave;nh 6 th&aacute;ng 1 đổi 1Lưu &yacute;: Sản phẩm n&agrave;y chỉ b&aacute;n Online v&agrave; kh&ocirc;ng &aacute;p dụng ch&iacute;nh s&aacute;ch đổi trả 1 th&aacute;ng.</li>\r\n</ul>\r\n', 0, 2, 1),
(29, 'Tai nghe EP Sony MDR-E9LP/BCE chính hãng', 190000, '<ul>\r\n	<li>Jack cắm:&nbsp;3.5 mm</li>\r\n	<li>Độ d&agrave;i d&acirc;y:1m2</li>\r\n	<li>Ph&iacute;m t&iacute;nh năng:&nbsp;Kh&ocirc;ng</li>\r\n	<li>T&iacute;nh năng kh&aacute;c:&nbsp;Tần số 18-22000Hz, c&ocirc;ng suất 100mW</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Thiết kế đơn giản, đẹp mắt.</li>\r\n	<li>Bộ m&agrave;ng loa 13,5 mm t&aacute;i tạo &acirc;m trầm mạnh mẽ.</li>\r\n	<li>Miếng đệm tai mềm cho cảm gi&aacute;c thoải m&aacute;i khi đeo.</li>\r\n	<li>Dải tần số rộng cho &acirc;m thanh ch&acirc;n thật v&agrave; sống động.</li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng 1 năm.</li>\r\n</ul>\r\n', 0, 5, 1),
(31, 'Ốp lưng nhựa Diamond Iphone 6 Icover Hoa Trắng', 140000, '', '<ul>\r\n	<li>Giữ điện thoại lu&ocirc;n đẹp v&agrave; c&aacute; t&iacute;nh</li>\r\n	<li>Mẫu m&atilde; đẹp - chất lượng cao</li>\r\n	<li>Gi&aacute; tốt nhất</li>\r\n</ul>\r\n', 0, 1, 3),
(32, 'Tai nghe chụp tai Kanen IP-950', 270000, '<ul>\r\n	<li>Jack cắm:&nbsp;<span style="line-height:1.6">3.5 mm</span></li>\r\n	<li>Độ d&agrave;i d&acirc;y:&nbsp;<span style="line-height:1.6">1m</span></li>\r\n	<li>Ph&iacute;m t&iacute;nh năng:&nbsp;<span style="line-height:1.6">Nghe nhận cuộc gọi.</span></li>\r\n	<li>T&iacute;nh năng kh&aacute;c:&nbsp;<span style="line-height:1.6">Khả năng gấp rất tiện dụng</span></li>\r\n</ul>\r\n', '<ul>\r\n	<li>Thiết kế trẻ trung, hợp thời trang.</li>\r\n	<li>Lớp đệm tai mềm cho cảm gi&aacute;c thoải m&aacute;i khi đeo.</li>\r\n	<li>C&aacute;c lỗ tho&aacute;ng kh&iacute; tạo cảm gi&aacute;c &ecirc;m &aacute;i khi nghe thời gian d&agrave;i.</li>\r\n	<li>Tương th&iacute;ch với hầu hết thiết bị điện tử.</li>\r\n	<li>T&iacute;ch hợp th&ecirc;m ph&iacute;m chức năng tiện dụng.</li>\r\n</ul>\r\n', 0, 5, 3),
(33, 'Miếng dán Film điện thoại', 50000, '', '<ul>\r\n	<li>Bảo vệ mặt lưng điện thoại một c&aacute;ch tốt nhất, chống trầy, xước</li>\r\n	<li>70% l&agrave; từ t&iacute;nh chỉ c&oacute; 30% l&agrave; chất d&iacute;nh tổng hợp.</li>\r\n</ul>\r\n', 0, 6, 3),
(35, 'Cáp sạc iPhone 5 - iPhone 6 X mobile', 135000, '', '<ul>\r\n	<li>C&aacute;p c&oacute; thể sạc v&agrave; truyền tải dữ liệu</li>\r\n	<li>C&oacute; thể d&ugrave;ng được cả 2 mặt của đầu c&aacute;p</li>\r\n	<li>Chuẩn kết nối 2.0 phổ biến</li>\r\n	<li>Chất lượng cao, tương đương h&agrave;ng theo m&aacute;y</li>\r\n</ul>\r\n', 0, 4, 4),
(36, 'Miếng dán màn hình 6 inch', 70000, '', '<ul>\r\n	<li>Chống trầy xước tối ưu cho m&agrave;n h&igrave;nh m&agrave;n h&igrave;nh lớn 6 inch</li>\r\n	<li>L&agrave;m giảm c&aacute;c dấu v&acirc;n tay v&agrave; vết ố</li>\r\n</ul>\r\n', 0, 6, 4),
(37, 'Miếng dán lưng iPhone 6 Plus', 50000, '', '<ul>\r\n	<li>Chống trầy xước tối ưu cho mặt sau iPhone 6 Plus</li>\r\n	<li>Cho điện thoại lu&ocirc;n đẹp v&agrave; mới</li>\r\n</ul>\r\n', 0, 6, 4),
(39, 'Tai nghe EP Sony MDR-E9LP chính hãng', 190000, '', '<ul>\r\n	<li>Thiết kế đơn giản, đẹp mắt.</li>\r\n	<li>Bộ m&agrave;ng loa 13,5 mm t&aacute;i tạo &acirc;m trầm mạnh mẽ.</li>\r\n	<li>Miếng đệm tai mềm cho cảm gi&aacute;c thoải m&aacute;i khi đeo.</li>\r\n	<li>Dải tần số rộng cho &acirc;m thanh ch&acirc;n thật v&agrave; sống động.</li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng 1 năm.</li>\r\n</ul>\r\n', 0, 5, 5),
(40, 'Tai nghe EP Maxell', 185000, '', '<ul>\r\n	<li>Thiết kế độc đ&aacute;o v&agrave; tiện dụng.</li>\r\n	<li>N&uacute;t cao su &ecirc;m &aacute;i cho cảm gi&aacute;c thoải m&aacute;i khi đeo.</li>\r\n	<li>&Acirc;m thanh chất lượng, sống động.</li>\r\n	<li>C&oacute; n&uacute;t nhận cuộc gọi thuận tiện cho việc hỗ trợ đ&agrave;m thoại.</li>\r\n	<li>C&oacute; khả năng tương th&iacute;ch tốt với c&aacute;c d&ograve;ng điện thoại.</li>\r\n</ul>\r\n', 0, 5, 5),
(41, 'Cáp Micro USB X mobile MU03-1000', 90000, '', '<ul>\r\n	<li>Kiểu d&aacute;ng đẹp mắt, cứng c&aacute;p.</li>\r\n	<li>C&aacute;p d&ugrave;ng để sạc hoặc truyền tải dữ liệu.</li>\r\n	<li>Cổng Micro USB tương th&iacute;ch tốt với hầu hết smartphone.</li>\r\n	<li>Nhỏ gọn v&agrave; thiết kế chống rối tiện lợi.</li>\r\n</ul>\r\n', 0, 4, 5),
(42, 'Miếng dán màn hình iPhone 6', 50000, '', '<ul>\r\n	<li>Chống trầy xước tối ưu cho m&agrave;n h&igrave;nh iPhone 6</li>\r\n	<li>Cho điện thoại lu&ocirc;n đẹp v&agrave; mới</li>\r\n</ul>\r\n', 0, 6, 7),
(43, 'Hub chuyển Cổng Lightning sang cổng HDMI Apple', 1070000, '', '<ul>\r\n	<li>Cổng lightning ph&ugrave; hợp với hầu hết iPhone, iPad.</li>\r\n	<li>C&aacute;p hỗ trợ hiển thị từ m&agrave;n h&igrave;nh điện thoại của bạn đến TV, m&agrave;n h&igrave;nh, m&aacute;y chiếu, hoặc m&agrave;n h&igrave;nh được trang bị cổng HDMI</li>\r\n	<li>Thiết kế nhỏ gọn, đẹp mắt gi&uacute;p dễ d&agrave;ng mang theo, di chuyển.</li>\r\n</ul>\r\n', 0, 4, 7),
(44, 'Ốp lưng nhựa semi iPhone 6 Icover Xe đạp', 140000, '', '<ul>\r\n	<li>Giữ điện thoại lu&ocirc;n đẹp v&agrave; c&aacute; t&iacute;nh</li>\r\n	<li>Mẫu m&atilde; đẹp - chất lượng cao</li>\r\n	<li>Gi&aacute; tốt nhất</li>\r\n</ul>\r\n', 0, 1, 7),
(45, 'Ốp lưng Xperia Z5 Premium Nhựa dẻo Nude', 45000, '', '<ul>\r\n	<li>Chất liệu nhựa dẻo cao cấp, hợp thời trang.</li>\r\n	<li>Thiết kế vừa vặn v&agrave; &ocirc;m s&aacute;t th&acirc;n m&aacute;y.</li>\r\n	<li>Dễ d&agrave;ng th&aacute;o/lắp ốp v&agrave;o m&aacute;y.</li>\r\n</ul>\r\n', 0, 1, 8),
(46, 'Tai nghe chụp tai Kanen IP-2050', 285000, '', '<ul>\r\n	<li>Thiết kế trẻ trung, c&oacute; thể gấp gọn rất tiện dụng.</li>\r\n	<li>Chất lượng &acirc;m thanh trung thực, sống động.</li>\r\n	<li>Chất liệu cao cấp v&agrave; bền bỉ.</li>\r\n	<li>Tương th&iacute;ch với hầu hết c&aacute;c thiết bị nghe nhạc</li>\r\n</ul>\r\n', 0, 5, 8),
(47, 'Tai nghe chụp tai Kanen IP-852', 285000, '', '<ul>\r\n	<li>Thiết kế hiện đại, trẻ trung.</li>\r\n	<li>Chất lượng &acirc;m thanh Stereo sống động.</li>\r\n	<li>C&oacute; khả năng gập gọn khi bạn di chuyển.</li>\r\n	<li>Lớp đệm tai mềm cho cảm gi&aacute;c thoải m&aacute;i khi đeo.</li>\r\n	<li>Tương th&iacute;ch với hầu hết c&aacute;c thiết bị điện tử</li>\r\n</ul>\r\n', 0, 5, 9),
(48, 'Đế sạc Lightning iPhone-iPad ML8H2AM-A Apple', 1340000, '', '<ul>\r\n	<li>Đế sạc tiện lợi d&ugrave;ng cho iPhone, iPad, iPod.</li>\r\n	<li>Cổng lightning ph&ugrave; hợp với hầu hết c&aacute;c d&ograve;ng iPhone, iPad, iPod.</li>\r\n	<li>Thiết kế kh&aacute; gọn nhẹ, đẹp mắt.</li>\r\n	<li>Vừa tận hưởng &acirc;m nhạc trong khi sạc th&ocirc;ng qua jack cắm 3.5 mm.</li>\r\n	<li>Sản phẩm ch&iacute;nh h&atilde;ng, đảm bảo chất lượng.</li>\r\n</ul>\r\n', 0, 4, 9),
(49, 'Ốp lưng nhựa Iphone 6 Louya A8 Trúc Đen', 60000, '', '<ul>\r\n	<li>Giữ điện thoại lu&ocirc;n đẹp v&agrave; c&aacute; t&iacute;nh</li>\r\n	<li>Mẫu m&atilde; đẹp - chất lượng cao</li>\r\n	<li>Gi&aacute; tốt nhất</li>\r\n</ul>\r\n', 0, 1, 10),
(50, 'Tai nghe iPhone- iPad-iPod MD827FE-A Apple', 657000, '<ul>\r\n	<li>Jack cắm:<span style="line-height:1.6">3.5 mm</span></li>\r\n	<li>Độ d&agrave;i d&acirc;y:<span style="line-height:1.6">1,1 m</span></li>\r\n	<li>Ph&iacute;m t&iacute;nh năng:<span style="line-height:1.6">Mic, Nghe/nhận cuộc gọi</span></li>\r\n	<li>T&iacute;nh năng kh&aacute;c:<span style="line-height:1.6">Trong lượng 200gr</span></li>\r\n</ul>\r\n', '<ul>\r\n	<li>Jack 3.5 mm ph&ugrave; hợp với đa số smartphone, ipad,..</li>\r\n	<li>Thiết kế hiện đại, đầu tai nghe tr&ograve;n theo h&igrave;nh d&aacute;ng của tai.</li>\r\n	<li>C&oacute; ph&iacute;m điều chỉnh &acirc;m lượng, nghe/nhận cuộc gọi.</li>\r\n	<li>Micro t&iacute;ch hợp c&oacute; khả năng lọc tiếng ồn.</li>\r\n	<li>Sản phẩm ch&iacute;nh h&atilde;ng nguy&ecirc;n seal 100%</li>\r\n	<li>Kh&ocirc;ng &aacute;p dụng ch&iacute;nh s&aacute;ch bảo h&agrave;nh</li>\r\n</ul>\r\n', 0, 5, 10),
(51, 'Tai nghe EP Sony MDR-E9LP/BC E chính hãng', 190000, '<ul>\r\n	<li>Jack cắm:<span style="line-height:1.6">3.5 mm</span></li>\r\n	<li>Độ d&agrave;i d&acirc;y:<span style="line-height:1.6">1m2</span></li>\r\n	<li>Ph&iacute;m t&iacute;nh năng:<span style="line-height:1.6">Kh&ocirc;ng</span></li>\r\n	<li>T&iacute;nh năng kh&aacute;c:<span style="line-height:1.6">Tần số 18-22000Hz, c&ocirc;ng suất 100mW</span></li>\r\n</ul>\r\n', '<ul>\r\n	<li>Thiết kế đơn giản, đẹp mắt.</li>\r\n	<li>Bộ m&agrave;ng loa 13,5 mm t&aacute;i tạo &acirc;m trầm mạnh mẽ.</li>\r\n	<li>Miếng đệm tai mềm cho cảm gi&aacute;c thoải m&aacute;i khi đeo.</li>\r\n	<li>Dải tần số rộng cho &acirc;m thanh ch&acirc;n thật v&agrave; sống động.</li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng 1 năm.</li>\r\n</ul>\r\n', 0, 5, 10),
(52, 'Ốp lưng Galaxy S6 Edge Nhựa dẻo X Mobile', 50000, '', '<ul>\r\n	<li>Chất liệu dẻo mỏng thời trang - c&aacute; t&iacute;nh</li>\r\n	<li>Thiết kế vừa vặn v&agrave; &ocirc;m s&aacute;t th&acirc;n m&aacute;y</li>\r\n	<li>Mượt m&agrave; v&agrave; &ecirc;m &aacute;i khi cầm</li>\r\n</ul>\r\n', 0, 1, 11),
(53, 'Miếng dán màn hình Lumia 950XL', 70000, '', '<ul>\r\n	<li>Chống trầy xước tối ưu cho m&agrave;n h&igrave;nh Lumia 950XL</li>\r\n	<li>L&agrave;m giảm c&aacute;c dấu v&acirc;n tay v&agrave; vết ố</li>\r\n	<li>Chất liệu Nhật Bản v&agrave; đ&oacute;ng g&oacute;i tại Đ&agrave;i Loan</li>\r\n</ul>\r\n', 0, 6, 14),
(54, 'Miếng dán màn hình Galaxy S7', 50000, '', '<ul>\r\n	<li>Chống trầy xước tối ưu cho m&agrave;n h&igrave;nh Galaxy S7</li>\r\n	<li>L&agrave;m giảm c&aacute;c dấu v&acirc;n tay v&agrave; vết ố</li>\r\n	<li>Chất liệu Nhật Bản v&agrave; đ&oacute;ng g&oacute;i tại Đ&agrave;i Loan</li>\r\n</ul>\r\n', 0, 6, 16),
(55, 'Ốp lưng iPhone 6-6S Nhựa dẻo dày bóng Batman Đen', 60000, '', '<ul>\r\n	<li>Chất liệu nhựa dẻo d&agrave;y b&oacute;ng v&agrave; in h&igrave;nh thời trang</li>\r\n	<li>Thiết kế vừa vặn v&agrave; &ocirc;m s&aacute;t th&acirc;n m&aacute;y</li>\r\n	<li>Dễ d&agrave;ng th&aacute;o/lắp ốp v&agrave;o m&aacute;y</li>\r\n</ul>\r\n', 0, 1, 17);

-- --------------------------------------------------------

--
-- Table structure for table `accessories_category`
--

CREATE TABLE `accessories_category` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `accessories_category`
--

INSERT INTO `accessories_category` (`id`, `name`) VALUES
(1, 'Ốp Lưng,Bao Da'),
(2, 'Pin,Sạc Dự Phòng'),
(3, 'Thẻ Nhớ'),
(4, 'Sạc Dây,Cáp Các Loại'),
(5, 'Tai Nghe'),
(6, 'Miếng Dán Màn Hình'),
(7, 'Phụ Kiện Khác');

-- --------------------------------------------------------

--
-- Table structure for table `accessories_color`
--

CREATE TABLE `accessories_color` (
  `id` int(11) NOT NULL,
  `accessories_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accessories_color`
--

INSERT INTO `accessories_color` (`id`, `accessories_id`, `color_id`) VALUES
(39, 21, 7),
(40, 22, 9),
(41, 23, 9),
(42, 24, 9),
(43, 25, 9),
(44, 24, 7),
(45, 26, 9),
(46, 27, 2),
(47, 27, 10),
(48, 28, 11),
(49, 28, 10),
(50, 29, 7),
(53, 31, 9),
(54, 32, 11),
(55, 32, 6),
(56, 33, 9),
(58, 35, 9),
(59, 36, 9),
(60, 37, 9),
(62, 39, 10),
(63, 40, 4),
(64, 41, 7),
(65, 42, 9),
(66, 43, 9),
(67, 44, 9),
(68, 45, 9),
(69, 46, 12),
(70, 47, 13),
(71, 48, 4),
(72, 49, 7),
(73, 50, 9),
(74, 51, 14),
(75, 52, 13),
(76, 53, 9),
(77, 54, 9),
(78, 55, 7);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(1, 'Samsung'),
(2, 'APPLE(IPhone)'),
(3, 'Nokia Microsoft'),
(4, 'Sony'),
(6, 'HTC'),
(7, 'Obi Worldphone'),
(8, 'Asus(Zenfone)'),
(9, 'LG'),
(10, 'Huawei'),
(11, 'Mobiistar'),
(12, 'Lenovo'),
(13, 'Philips'),
(14, 'ZTE'),
(15, 'Honor'),
(16, 'Mobell'),
(17, 'Wing'),
(18, 'WIKO'),
(19, 'Motorola'),
(20, 'Huawei'),
(21, 'OPPO');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id`, `name`) VALUES
(1, 'Bạc'),
(2, 'Vàng Hồng'),
(3, 'Vàng đồng'),
(4, 'Xám'),
(5, 'Xám đậm'),
(6, 'Vàng'),
(7, 'Đen'),
(8, 'Bạc Inox'),
(9, 'Trắng'),
(10, 'Hồng'),
(11, 'Xanh lá'),
(12, 'Đỏ'),
(13, 'cam'),
(14, 'Xanh Dương');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type_user` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `type_item` int(11) NOT NULL,
  `comments` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `type_user`, `item_id`, `type_item`, `comments`) VALUES
(3, 1, 1, 3, 1, 'very very nice, I like it..');

-- --------------------------------------------------------

--
-- Table structure for table `image_accessories`
--

CREATE TABLE `image_accessories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `img` varchar(500) COLLATE utf8_bin NOT NULL,
  `type_image` int(11) NOT NULL,
  `accessory_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `image_accessories`
--

INSERT INTO `image_accessories` (`id`, `name`, `img`, `type_image`, `accessory_id`) VALUES
(5, 'OplungGS7EdgeLogo', 'oplungGS7EdgeLogo.jpg', 1, 21),
(6, 'OplungGS7NhuaTrongVienNude', 'oplungGS7EdgeLogoNhuatrongvienNude.jpg', 1, 22),
(7, 'PinsacduphongPolymer', 'PinsacdupongPolymerLogo.jpg', 1, 23),
(8, 'PinsacdupongXmobileLogo', 'PinsacdupongXmobileLogo.jpg', 1, 24),
(9, 'taingheinearapplemeLogo', 'taingheinearapplemeLogo.jpg', 1, 25),
(10, 'OplungGS7Edge_normal1', 'OplungGS7Edge_normal1.jpg', 2, 21),
(11, 'OplungGS7Edge_normal2', 'OplungGS7Edge_normal2.jpg', 2, 21),
(12, 'OplungGS7Edge_normal3', 'OplungGS7Edge_normal3.jpg', 2, 21),
(13, 'OplungGS7Edge_normal4', 'OplungGS7Edge_normal4.jpg', 2, 21),
(14, 'OplungGS7Edge_normal5', 'OplungGS7Edge_normal5.jpg', 2, 21),
(15, 'OplungGS7Edge_normal6', 'OplungGS7Edge_normal6.jpg', 2, 21),
(16, 'Ốp lưng iPhone 6-6S Plus Nhựa Unique Baby Nude', 'phu1.jpg', 1, 26),
(17, 'Ốp lưng iPhone 6-6S Plus Nhựa dẻo Cô gái Rose', 'phu2.jpg', 1, 27),
(18, 'Ốp lưng iPhone 6-6S Plus Nhựa Unique Baby Nude', '001.jpg', 2, 26),
(19, 'Ốp lưng iPhone 6-6S Plus Nhựa Unique Baby Nude', '002.jpg', 2, 26),
(20, 'Ốp lưng iPhone 6-6S Plus Nhựa Unique Baby Nude', '003.jpg', 2, 26),
(21, 'Ốp lưng iPhone 6-6S Plus Nhựa dẻo Cô gái Rose', '01.jpg', 2, 27),
(22, 'Ốp lưng iPhone 6-6S Plus Nhựa dẻo Cô gái Rose', '02.jpg', 2, 27),
(23, 'Ốp lưng iPhone 6-6S Plus Nhựa dẻo Cô gái Rose', '03.jpg', 2, 27),
(24, 'Ốp lưng iPhone 6-6S Plus Nhựa dẻo Cô gái Rose', '04.jpg', 2, 27),
(25, 'Pin sạc dự phòng Polymer 10000 mAh Eco TS-D190', 'phu091.jpg', 1, 28),
(26, 'Pin sạc dự phòng Polymer 10000 mAh Eco TS-D190', 'phu991.jpg', 2, 28),
(27, 'Pin sạc dự phòng Polymer 10000 mAh Eco TS-D190', 'phu993.jpg', 2, 28),
(28, 'Pin sạc dự phòng Polymer 10000 mAh Eco TS-D190', 'phu994.jpg', 2, 28),
(29, 'Pin sạc dự phòng Polymer 10000 mAh Eco TS-D190', 'phu995.jpg', 2, 28),
(30, 'Tai nghe EP Sony MDR-E9LP/BCE chính hãng', 'tai0.jpg', 1, 29),
(31, 'Tai nghe EP Sony MDR-E9LP/BCE chính hãng', 'tai1.jpg', 2, 29),
(32, 'Tai nghe EP Sony MDR-E9LP/BCE chính hãng', 'tai2.jpg', 2, 29),
(33, 'Tai nghe EP Sony MDR-E9LP/BCE chính hãng', 'tai3.jpg', 2, 29),
(34, 'Tai nghe EP Sony MDR-E9LP/BCE chính hãng', 'tai4.jpg', 2, 29),
(35, 'Tai nghe EP Sony MDR-E9LP/BCE chính hãng', 'tai5.jpg', 2, 29),
(36, 'Tai nghe EP Sony MDR-E9LP/BCE chính hãng', 'tai6.jpg', 2, 29),
(37, 'Tai nghe EP Sony MDR-E9LP/BCE chính hãng', 'tai6.jpg', 2, 29),
(47, 'Ốp lưng nhựa Diamond Iphone 6 Icover Hoa Trắng', 'i1.jpg', 1, 31),
(48, 'Ốp lưng nhựa Diamond Iphone 6 Icover Hoa Trắng', 'i2.jpg', 2, 31),
(49, 'Ốp lưng nhựa Diamond Iphone 6 Icover Hoa Trắng', 'i3.jpg', 2, 31),
(50, 'Ốp lưng nhựa Diamond Iphone 6 Icover Hoa Trắng', 'i4.jpg', 2, 31),
(51, 'Ốp lưng nhựa Diamond Iphone 6 Icover Hoa Trắng', 'i4.jpg', 2, 31),
(52, 'Ốp lưng nhựa Diamond Iphone 6 Icover Hoa Trắng', 'i5.jpg', 2, 31),
(53, 'Ốp lưng nhựa Diamond Iphone 6 Icover Hoa Trắng', 'i6.jpg', 2, 31),
(54, 'Ốp lưng nhựa Diamond Iphone 6 Icover Hoa Trắng', 'i7.jpg', 2, 31),
(55, 'Ốp lưng nhựa Diamond Iphone 6 Icover Hoa Trắng', 'i8.jpg', 2, 31),
(56, 'Ốp lưng nhựa Diamond Iphone 6 Icover Hoa Trắng', 'i9.jpg', 2, 31),
(57, 'Ốp lưng nhựa Diamond Iphone 6 Icover Hoa Trắng', 'i10.jpg', 2, 31),
(58, 'Tai nghe chụp tai Kanen IP-950', 'klogo.jpg', 1, 32),
(59, 'Tai nghe chụp tai Kanen IP-950', 'k1.jpg', 2, 32),
(60, 'Tai nghe chụp tai Kanen IP-950', 'k3.jpg', 2, 32),
(61, 'Tai nghe chụp tai Kanen IP-950', 'k4.jpg', 2, 32),
(62, 'Miếng dán Film điện thoại', 'mlogo.jpg', 1, 33),
(63, 'Miếng dán Film điện thoại', 'n1.jpg', 2, 33),
(70, 'Cáp sạc iPhone 5 - iPhone 6 X mobile', 's1.jpg', 1, 35),
(71, 'Cáp sạc iPhone 5 - iPhone 6 X mobile', 's2.jpg', 2, 35),
(72, 'Cáp sạc iPhone 5 - iPhone 6 X mobile', 's3.jpg', 2, 35),
(73, 'Cáp sạc iPhone 5 - iPhone 6 X mobile', 's4.jpg', 2, 35),
(78, 'Miếng dán màn hình 6 inch', 'plogo.jpg', 1, 36),
(79, 'Miếng dán màn hình 6 inch', 'p1.jpg', 2, 36),
(80, 'Miếng dán lưng iPhone 6 Plus', 'logo.jpg', 1, 37),
(81, 'Miếng dán lưng iPhone 6 Plus', 'l1.jpg', 2, 37),
(90, 'Tai nghe EP Sony MDR-E9LP chính hãng', 'tailogo.jpg', 1, 39),
(91, 'Tai nghe EP Sony MDR-E9LP chính hãng', 'j1.jpg', 2, 39),
(92, 'Tai nghe EP Sony MDR-E9LP chính hãng', 'j2.jpg', 2, 39),
(93, 'Tai nghe EP Sony MDR-E9LP chính hãng', 'j3.jpg', 2, 39),
(94, 'Tai nghe EP Maxell', 'v1.jpg', 1, 40),
(95, 'Tai nghe EP Maxell', 'v2.jpg', 2, 40),
(96, 'Tai nghe EP Maxell', 'v3.jpg', 2, 40),
(97, 'Tai nghe EP Maxell', 'v4.jpg', 2, 40),
(98, 'Tai nghe EP Maxell', 'v5.jpg', 2, 40),
(99, 'Cáp Micro USB X mobile MU03-1000', 'z1.jpg', 1, 41),
(100, 'Cáp Micro USB X mobile MU03-1000', 'z2.jpg', 2, 41),
(101, 'Cáp Micro USB X mobile MU03-1000', 'z3.jpg', 2, 41),
(102, 'Cáp Micro USB X mobile MU03-1000', 'z4.jpg', 2, 41),
(103, 'Miếng dán màn hình iPhone 6', 'x1.jpg', 1, 42),
(104, 'Miếng dán màn hình iPhone 6', 'x2.jpg', 2, 42),
(105, 'Hub chuyển Cổng Lightning sang cổng HDMI Apple', 'q1.jpg', 1, 43),
(106, 'Hub chuyển Cổng Lightning sang cổng HDMI Apple', 'q2.jpg', 2, 43),
(107, 'Hub chuyển Cổng Lightning sang cổng HDMI Apple', 'q3.jpg', 2, 43),
(108, 'Hub chuyển Cổng Lightning sang cổng HDMI Apple', 'q4.jpg', 2, 43),
(109, 'Ốp lưng nhựa semi iPhone 6 Icover Xe đạp', 'e1.jpg', 1, 44),
(110, 'Ốp lưng nhựa semi iPhone 6 Icover Xe đạp', 'e2.jpg', 2, 44),
(111, 'Ốp lưng nhựa semi iPhone 6 Icover Xe đạp', 'e3.jpg', 2, 44),
(112, 'Ốp lưng nhựa semi iPhone 6 Icover Xe đạp', 'e4.jpg', 2, 44),
(113, 'Ốp lưng Xperia Z5 Premium Nhựa dẻo Nude', 'a1.jpg', 1, 45),
(114, 'Ốp lưng Xperia Z5 Premium Nhựa dẻo Nude', 'a2.jpg', 2, 45),
(115, 'Ốp lưng Xperia Z5 Premium Nhựa dẻo Nude', 'a3.jpg', 2, 45),
(116, 'Ốp lưng Xperia Z5 Premium Nhựa dẻo Nude', 'a4.jpg', 2, 45),
(117, 'Tai nghe chụp tai Kanen IP-2050Logo', 'taiip0.jpg', 1, 46),
(118, 'Tai nghe chụp tai Kanen IP-20501', 'taiIP1.jpg', 2, 46),
(119, 'Tai nghe chụp tai Kanen IP-20502', 'taiIP2.jpg', 2, 46),
(120, 'Tai nghe chụp tai Kanen IP-20503', 'taiIP3.jpg', 2, 46),
(121, 'Tai nghe chụp tai Kanen IP-852logo', 'khanenlogo.jpg', 1, 47),
(122, 'Tai nghe chụp tai Kanen IP-8521', 'khanen1.jpg', 2, 47),
(123, 'Tai nghe chụp tai Kanen IP-852', 'khanen2.jpg', 2, 47),
(124, 'Tai nghe chụp tai Kanen IP-853', 'khanen3.jpg', 2, 47),
(125, 'Tai nghe chụp tai Kanen IP-854', 'khanen4.jpg', 2, 47),
(126, 'Tai nghe chụp tai Kanen IP-855', 'khanen5.jpg', 2, 47),
(127, 'Đế sạc Lightning iPhone-iPad ML8H2AM-A Applelogo', 'desacLogo.jpg', 1, 48),
(128, 'Đế sạc Lightning iPhone-iPad ML8H2AM-A Apple1', 'appleml8h2am1.jpg', 2, 48),
(129, 'Đế sạc Lightning iPhone-iPad ML8H2AM-A Apple2', 'appleml8h2am2.jpg', 2, 48),
(130, 'Ốp lưng nhựa Iphone 6 Louya A8 Trúc ĐenLogo', 'trucdenLogo.jpg', 1, 49),
(131, 'Ốp lưng nhựa Iphone 6 Louya A8 Trúc Đen1', 'trucden1.jpg', 2, 49),
(132, 'Ốp lưng nhựa Iphone 6 Louya A8 Trúc Đen2', 'trucden2.jpg', 2, 49),
(133, 'Ốp lưng nhựa Iphone 6 Louya A8 Trúc Đen3', 'trucden3.jpg', 2, 49),
(134, 'Ốp lưng nhựa Iphone 6 Louya A8 Trúc Đen4', 'trucden4.jpg', 2, 49),
(135, 'Ốp lưng nhựa Iphone 6 Louya A8 Trúc Đen5', 'trucden5.jpg', 2, 49),
(136, 'Tai nghe iPhone- iPad-iPod MD827FE-A AppleLogo', 'md8Logo.jpg', 1, 50),
(137, 'Tai nghe iPhone- iPad-iPod MD827FE-A Apple1', 'md81.jpg', 2, 50),
(138, 'Tai nghe iPhone- iPad-iPod MD827FE-A Apple2', 'md82.jpg', 2, 50),
(139, 'Tai nghe iPhone- iPad-iPod MD827FE-A Apple3', 'md3.jpg', 2, 50),
(140, 'Tai nghe EP Sony MDR-E9LP/BC E chính hãngLogo', 'epsonyLogo.jpg', 1, 51),
(141, 'Tai nghe EP Sony MDR-E9LP/BC E chính hãng1', 'epsony1.jpg', 2, 51),
(142, 'Tai nghe EP Sony MDR-E9LP/BC E chính hãng2', 'epsony2.jpg', 2, 51),
(143, 'Tai nghe EP Sony MDR-E9LP/BC E chính hãng3', 'epsony3.jpg', 2, 51),
(144, 'Tai nghe EP Sony MDR-E9LP/BC E chính hãng4', 'epsony4.jpg', 2, 51),
(145, 'Ốp lưng Galaxy S6 Edge Nhựa dẻo X MobileLogo', 'GS6Logo.jpg', 1, 52),
(146, 'Ốp lưng Galaxy S6 Edge Nhựa dẻo X Mobile1', 'gs61.jpg', 2, 52),
(147, 'Ốp lưng Galaxy S6 Edge Nhựa dẻo X Mobile2', 'gs62.jpg', 2, 52),
(148, 'Ốp lưng Galaxy S6 Edge Nhựa dẻo X Mobile3', 'gs63.jpg', 2, 52),
(149, 'Miếng dán màn hình Lumia 950XLLogo', 'Lumia950Logo.jpg', 1, 53),
(150, 'Miếng dán màn hình Lumia 950XL1', 'Lumia9501.jpg', 2, 53),
(151, 'Miếng dán màn hình Galaxy S7Logo', 'GS7Logo.jpg', 1, 54),
(152, 'Miếng dán màn hình Galaxy S71', 'GS71.jpg', 2, 54),
(153, 'Ốp lưng iPhone 6-6S Nhựa dẻo dày bóng Batman ĐenLogo', 'BatmanLogo.jpg', 1, 55),
(154, 'Ốp lưng iPhone 6-6S Nhựa dẻo dày bóng Batman Đen1', 'bman1.jpg', 2, 55),
(155, 'Ốp lưng iPhone 6-6S Nhựa dẻo dày bóng Batman Đen2', 'bman2.jpg', 2, 55),
(156, 'Pin sạc dự phòng Polymer 15000 mAh Eco TS-D1951', 'eco1.jpg', 2, 23),
(157, 'Ốp lưng Galaxy S7 Edge Nhựa trong viền Nude1', 'GS7EN1.jpg', 2, 22),
(158, 'Ốp lưng Galaxy S7 Edge Nhựa trong viền Nude2', 'GS7EN2.jpg', 2, 22),
(159, 'Ốp lưng Galaxy S7 Edge Nhựa trong viền Nude3', 'GS7EN3.jpg', 2, 22),
(160, 'Pin sạc dự phòng Polymer 10000mAh Xmobile 1', 'P10000X1.jpg', 2, 24),
(161, 'Pin sạc dự phòng Polymer 10000mAh Xmobile 2', 'P10000X2.jpg', 2, 24),
(162, 'Pin sạc dự phòng Polymer 10000mAh Xmobile 3', 'P10000X3.jpg', 2, 24),
(163, 'Pin sạc dự phòng Polymer 10000mAh Xmobile 4', 'PX10000white1.jpg', 2, 24),
(164, 'Pin sạc dự phòng Polymer 10000mAh Xmobile 5', 'PX10000white2.jpg', 2, 24),
(165, 'Tai nghe in-ear Apple ME186FE/A1', 'AME1.jpg', 2, 25),
(166, 'Tai nghe in-ear Apple ME186FE/A2', 'AME2.jpg', 2, 25),
(167, 'Tai nghe in-ear Apple ME186FE/A3', 'AME3.jpg', 2, 25);

-- --------------------------------------------------------

--
-- Table structure for table `image_product`
--

CREATE TABLE `image_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `type_image` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image_product`
--

INSERT INTO `image_product` (`id`, `name`, `img`, `product_id`, `type_image`) VALUES
(2, 'Iphone616GBMain', 'iphone616GB.png', 17, 1),
(8, 'Iphone616gb_normal6', 'iphone616gb6.jpg', 17, 2),
(9, 'Iphone616gb_normal7', 'iphone616gb7.jpg', 17, 2),
(10, 'Iphone616gb_normal1', 'iphone616gb.jpg', 17, 2),
(11, 'Iphone616gb_normal2', 'iphone616gb2.jpg', 17, 2),
(12, 'Iphone616gb_normal3', 'iphone616gb3.jpg', 17, 2),
(13, 'Iphone616gb_normal4', 'iphone616gb4.jpg', 17, 2),
(14, 'Iphone616gb_normal5', 'iphone616gb5.jpg', 17, 2),
(15, 'Iphone616GBlogo', 'iphone616GBlogo.jpg', 17, 4),
(16, 'Iphone6sPlus64GB', 'iphone6sPlus64GB.png', 1, 1),
(17, 'Iphone6sPlus64GBlogo', 'iphone6sPlus64GB.png', 1, 4),
(18, 'iphone6sPlus64gb_normal1', 'iphone6sPlus64gb1.jpg', 1, 2),
(19, 'iphone6sPlus64gb_normal2', 'iphone6sPlus64gb2.jpg', 1, 2),
(20, 'iphone6sPlus64gb_normal3', 'iphone6sPlus64gb3.jpg', 1, 2),
(21, 'iphone6sPlus64gb_normal4', 'iphone6sPlus64gb4.jpg', 1, 2),
(22, 'iphone6sPlus64gb_normal5', 'iphone6sPlus64gb5.jpg', 1, 2),
(23, 'iphone6sPlus64gb_normal6', 'iphone6sPlus64gb6.jpg', 1, 2),
(24, 'iphone6sPlus16GBLogo', 'iphone6sPlus16GBlogo.jpg', 2, 4),
(25, 'iphone6sPlus16GBMain', 'iphone6sPlus16GBMain.png', 2, 1),
(26, 'iphone6sPlus16GB_normal1', 'iphone6sPlus16GB_normal1.jpg', 2, 2),
(27, 'iphone6sPlus16GB_normal2', 'iphone6sPlus16GBnormal2.jpg', 2, 2),
(28, 'iphone6sPlus16GB_normal3', 'iphone6sPlus16GBnormal3.jpg', 2, 2),
(29, 'iphone6sPlus16GB_normal4', 'iphone6sPlus16GBnormal4.jpg', 2, 2),
(30, 'iphone6sPlus16GB_normal5', 'iphone6sPlus16GBnormal5.jpg', 2, 2),
(31, 'iphone6sPlus16GB_normal6', 'iphone6sPlus16GBnormal6.jpg', 2, 2),
(32, 'iphone6s64GBlogo', 'iphone6s64GBlogo.jpg', 3, 4),
(33, 'iphone6s64GBMain', 'iphone6s64GBMain.png', 3, 1),
(34, 'iphone6s64GBnormal1', 'iphone6s64GBnormal1.jpg', 3, 2),
(35, 'iphone6s64GBnormal2', 'iphone6s64GBnormal2.jpg', 3, 2),
(36, 'iphone6s64GBnormal3', 'iphone6s64GBnormal3.jpg', 3, 2),
(37, 'iphone6s64GBnormal4', 'iphone6s64GBnormal4.jpg', 3, 2),
(39, 'iphone6s64GBnormal5', 'iphone6s64GBnormal5.jpg', 3, 2),
(40, 'iphone6s64GBnormal6', 'iphone6s64GBnormal6.jpg', 3, 2),
(41, 'iphone6Plus64GBLogo', 'iphone6Plus64GBlogo.jpg', 4, 4),
(42, 'iphone6Plus64GBMain', 'iphone6Plus64GBMain.png', 4, 1),
(43, 'iphone6Plus64GBnormal1', 'iphone6Plus64GBnormal1.jpg', 4, 2),
(44, 'iphone6Plus64GBnormal2', 'iphone6Plus64GBnormal2.jpg', 4, 2),
(45, 'iphone6Plus64GBnormal3', 'iphone6Plus64GBnormal3.jpg', 4, 2),
(46, 'iphone6Plus64GBnormal4', 'iphone6Plus64GBnormal4.jpg', 4, 2),
(47, 'iphone6Plus64GBnormal5', 'iphone6Plus64GBnormal5.jpg', 4, 2),
(48, 'iphone6Plus64GBnormal6', 'iphone6Plus64GBnormal6.jpg', 4, 2),
(49, 'samsungGS6EdgePlusLogo', 'samsungGS6EdgePlusLogo.jpg', 5, 4),
(50, 'samsungGS6EdgePlusMain', 'samsungGS6EdgePlusMain.png', 5, 1),
(51, 'samsungGS6EdgePlusnormal1', 'samsungGS6EdgePlusnormal1.jpg', 5, 2),
(52, 'samsungGS6EdgePlusnormal2', 'samsungGS6EdgePlusnormal2.jpg', 5, 2),
(53, 'samsungGS6EdgePlusnormal3', 'samsungGS6EdgePlusnormal3.jpg', 5, 2),
(54, 'samsungGS6EdgePlusnormal4', 'samsungGS6EdgePlusnormal4.jpg', 5, 2),
(55, 'LGG5Logo', 'LGG5logo.jpg', 6, 4),
(56, 'LGG5Main', 'LGG5Main.png', 6, 1),
(57, 'LGG5normal1', 'LGG5normal1.jpg', 6, 2),
(58, 'LGG5normal2', 'LGG5normal2.jpg', 6, 2),
(59, 'LGG5normal3', 'LGG5normal3.jpg', 6, 2),
(60, 'LGG5normal4', 'LGG5normal4.jpg', 6, 2),
(61, 'LGG5normal5', 'LGG5normal5.jpg', 6, 2),
(62, 'LGG5normal6', 'LGG5normal6.jpg', 6, 2),
(63, 'LGG5normal7', 'LGG5normal7.jpg', 6, 2),
(64, 'LGG5normal8', 'LGG5normal8.jpg', 6, 2),
(65, 'LGG5normal9', 'LGG5normal9.jpg', 6, 2),
(66, 'LGG5normal10', 'LGG5normal10.jpg', 6, 2),
(67, 'LGG5normal11', 'LGG5normal11.jpg', 6, 2),
(68, 'LGG5normal12', 'LGG5normal12.jpg', 6, 2),
(69, 'LGG5normal13', 'LGG5normal13.jpg', 6, 2),
(70, 'LGG5normal14', 'LGG5normal14.jpg', 6, 2),
(71, 'iphone664GBLogo', 'iphone664GBlogo.jpg', 7, 4),
(72, 'iphone664GBMain', 'iphone664GBMain.png', 7, 1),
(73, 'iphone664GBnormal1', 'iphone664GBnormal1.jpg', 7, 2),
(74, 'iphone664GBnormal2', 'iphone664GBnormal2.jpg', 7, 2),
(75, 'iphone664GBnormal3', 'iphone664GBnormal3.jpg', 7, 2),
(76, 'iphone664GBnormal4', 'iphone664GBnormal4.jpg', 7, 2),
(77, 'iphone664GBnormal5', 'iphone664GBnormal5.jpg', 7, 2),
(78, 'iphone664GBnormal6', 'iphone664GBnormal6.jpg', 7, 2),
(79, 'iphone664GBnormal7', 'iphone664GBnormal7.jpg', 7, 2),
(80, 'sonyXz5PDLogo', 'sonyXz5PDlogo.jpg', 8, 4),
(81, 'sonyXz5PDMain', 'sonyXz5PDMain.png', 8, 1),
(82, 'sonyXz5PDnormal1', 'sonyXz5PDnormal1.jpg', 8, 2),
(83, 'sonyXz5PDnormal2', 'sonyXz5PDnormal2.jpg', 8, 2),
(84, 'sonyXz5PDnormal3', 'sonyXz5PDnormal3.jpg', 8, 2),
(85, 'sonyXz5PDnormal4', 'sonyXz5PDnormal4.jpg', 8, 2),
(86, 'sonyXz5PDnormal5', 'sonyXz5PDnormal5.jpg', 8, 2),
(87, 'iphone6Plus16gblogo', 'iphone6Plus16gbLogo.jpg', 9, 4),
(88, 'iphone6Plus16gbMain', 'iphone6Plus16gbMain.png', 9, 1),
(89, 'iphone6Plus16gbnormal1', 'iphone6Plus16gbnormal1.jpg', 9, 2),
(90, 'iphone6Plus16gbnormal2', 'iphone6Plus16gbnormal2.jpg', 9, 2),
(91, 'iphone6Plus16gbnormal3', 'iphone6Plus16gbnormal3.jpg', 9, 2),
(92, 'iphone6Plus16gbnormal4', 'iphone6Plus16gbnormal4.jpg', 9, 2),
(93, 'iphone6Plus16gbnormal5', 'iphone6Plus16gbnormal5.jpg', 9, 2),
(94, 'iphone6Plus16gbnormal6', 'iphone6Plus16gbnormal6.jpg', 9, 2),
(95, 'iphone6s16gblogo', 'iphone6s16gbLogo.png', 10, 4),
(96, 'iphone6s16gbMain', 'iphone6s16gbMain.png', 10, 1),
(97, 'iphone6s16gbnormal1', 'iphone6s16gbnormal1.jpg', 10, 2),
(98, 'iphone6s16gbnormal2', 'iphone6s16gbnormal2.jpg', 10, 2),
(99, 'iphone6s16gbnormal3', 'iphone6s16gbnormal3.jpg', 10, 2),
(100, 'iphone6s16gbnormal4', 'iphone6s16gbnormal4.jpg', 10, 2),
(101, 'iphone6s16gbnormal5', 'iphone6s16gbnormal5.jpg', 10, 2),
(102, 'iphone6s16gbnormal6', 'iphone6s16gbnormal6.jpg', 10, 2),
(103, 'samsungGS6Edge32gbLogo', 'samsungGS6Edge32gbLogo.jpg', 11, 4),
(104, 'samsungGS6Edge32gbMain', 'samsungGS6Edge32gbMain.png', 11, 1),
(105, 'samsungGS6Edge32gbnormal1', 'samsungGS6Edge32gbnormal1.jpg', 11, 2),
(106, 'samsungGS6Edge32gbnormal2', 'samsungGS6Edge32gbnormal2.jpg', 11, 2),
(107, 'samsungGS6Edge32gbnormal3', 'samsungGS6Edge32gbnormal3.jpg', 11, 2),
(108, 'samsungGS6Edge32gbnormal4', 'samsungGS6Edge32gbnormal4.jpg', 11, 2),
(109, 'samsungGS6Edge32gbnormal5', 'samsungGS6Edge32gbnormal5.jpg', 11, 2),
(110, 'samsungGS6Edge32gbnormal6', 'samsungGS6Edge32gbnormal6.jpg', 11, 2),
(111, 'samsungGS7EdgeLogo', 'samsungGS7EdgeLogo.png', 12, 4),
(112, 'samsungGS7EdgeMain', 'samsungGS7EdgeMain.png', 12, 1),
(113, 'samsungGS7Edgenormal1', 'samsungGS7Edgenormal1.jpg', 12, 2),
(114, 'samsungGS7Edgenormal2', 'samsungGS7Edgenormal2.jpg', 12, 2),
(115, 'samsungGS7Edgenormal3', 'samsungGS7Edgenormal3.jpg', 12, 2),
(116, 'samsungGS7Edgenormal4', 'samsungGS7Edgenormal4.jpg', 12, 2),
(117, 'samsungGS7Edgenormal5', 'samsungGS7Edgenormal5.jpg', 12, 2),
(118, 'samsungGS7Edgenormal6', 'samsungGS7Edgenormal6.jpg', 12, 2),
(119, 'samsungGNote5Logo', 'samsungGNote5logo.jpg', 13, 4),
(120, 'samsungGNote5Main', 'samsungGNote5Main.png', 13, 1),
(121, 'samsungGNote5normal1', 'samsungGNote5normal1.jpg', 13, 2),
(122, 'samsungGNote5normal2', 'samsungGNote5normal2.jpg', 13, 2),
(123, 'samsungGNote5normal3', 'samsungGNote5normal3.jpg', 13, 2),
(124, 'samsungGNote5normal4', 'samsungGNote5normal4.jpg', 13, 2),
(125, 'samsungGNote5normal5', 'samsungGNote5normal5.jpg', 13, 2),
(126, 'samsungGNote5normal6', 'samsungGNote5normal6.jpg', 13, 2),
(127, 'samsungGalayS7Logo', 'samsungGS7logo.jpg', 16, 4),
(128, 'samsungGalayS7Main', 'samsungGS7Main.png', 16, 1),
(129, 'samsungGalayS7normal1', 'samsungGS7normal1.jpg', 16, 2),
(130, 'samsungGalayS7normal2', 'samsungGS7normal2.jpg', 16, 2),
(131, 'samsungGalayS7normal3', 'samsungGS7normal3.jpg', 16, 2),
(132, 'samsungGalayS7normal4', 'samsungGS7normal4.jpg', 16, 2),
(133, 'samsungGalayS7normal5', 'samsungGS7normal5.jpg', 16, 2),
(134, 'microsoftLumia950XLLogo', 'microsoftLumia950XLLogo.jpg', 14, 4),
(135, 'microsoftLumia950XLMain', 'microsoftLumia950XLMain.png', 14, 1),
(136, 'microsoftLumia950XLnormal1', 'microsoftLumia950XLnormal1.jpg', 14, 2),
(137, 'microsoftLumia950XLnormal2', 'microsoftLumia950XLnormal2.jpg', 14, 2),
(138, 'microsoftLumia950XLnormal3', 'microsoftLumia950XLnormal3.jpg', 14, 2),
(139, 'microsoftLumia950XLnormal4', 'microsoftLumia950XLnormal4.jpg', 14, 2),
(140, 'LGV10Logo', 'LGV10Logo.jpg', 15, 4),
(141, 'LGV10Main', 'LGV10Main.png', 15, 1),
(142, 'LGV10normal1', 'LGV10normal1.jpg', 15, 2),
(143, 'LGV10normal2', 'LGV10normal2.jpg', 15, 2),
(144, 'LGV10normal3', 'LGV10normal3.jpg', 15, 2),
(145, 'LGV10normal4', 'LGV10normal4.jpg', 15, 2),
(146, 'LGV10normal5', 'LGV10normal5.jpg', 15, 2),
(147, 'LGV10normal6', 'LGV10normal6.jpg', 15, 2),
(148, 'iphone6splus64_kythuat', 'iphone6spluskythuat.jpg', 1, 3),
(149, 'iphone6splus16gbkythuat', 'iphone6splus16gbkythuat.jpg', 2, 3),
(150, 'iphone6s64gbkythuat', 'iphone6s64gbkythuat.jpg', 3, 3),
(151, 'iphone6plus64GBkythuat', 'iphone6plus64GBkythuat.jpg', 4, 3),
(152, 'SamsungGalaxyS6EdgePluskythuat', 'SamsungGalaxyS6EdgePluskythuat.jpg', 5, 3),
(153, 'LGG5kythuat', 'LGG5kythuat.jpg', 6, 3),
(154, 'iPhone664GBkythuat', 'iPhone664GBkythuat.jpg', 7, 3),
(155, 'sonyXZ5PremiumDualkythuat', 'sonyXZ5PremiumDualkythuat.jpg', 8, 3),
(156, 'iPhone6Plus16GBKythuat', 'iPhone6Plus16GBkythuat.jpg', 9, 3),
(158, 'iphone6s16GBkythuat', 'iphone6s16GB.jpg', 10, 3),
(159, 'SamsungGalaxyS6Edge32GBkythuat', 'SamsungGalaxyS6Edge32GBkythuat.jpg', 11, 3),
(160, 'SamsungGalaxyS7Edgekythuat', 'SamsungGalaxyS7Edgekythuat.jpg', 12, 3),
(161, 'SamsungGalaxyNote5kythuat', 'SamsungGalaxyNote5kythuat.jpg', 13, 3),
(162, ' MicrosoftLumia950XLkythuat', 'MicrosoftLumia950XLkythuat.jpg', 14, 3),
(163, 'LGv10kythuat', 'LGv10kythuat.jpg', 15, 3),
(164, 'samsungGS7kythuat', 'samsungGS7kythuat.jpg', 16, 3),
(165, 'iphone616gbkythuat', 'iphone616gbkythuat.jpg', 17, 3),
(166, 'SamsungGalaxyCorePrimeG361Logo', 'SGCoreLogo.jpg', 18, 4),
(167, 'SamsungGalaxyCorePrimeG361Kythuat', 'SGCoreKythuat.jpg', 18, 3),
(168, 'SamsungGalaxyCorePrimeG361Main', 'SGCoreMain.png', 18, 1),
(169, 'SamsungGalaxyCorePrimeG361bt1', 'SGCorebt1.jpg', 18, 2),
(170, 'SamsungGalaxyCorePrimeG361bt2', 'SGCorebt2.jpg', 18, 2),
(171, 'SamsungGalaxyCorePrimeG361bt3', 'SGCorebt3.jpg', 18, 2),
(172, 'SamsungGalaxyCorePrimeG361bt3', 'SGCorebt3.jpg', 18, 2),
(173, 'SamsungGalaxyCorePrimeG361bt4', 'SGCorebt4.jpg', 18, 2);

-- --------------------------------------------------------

--
-- Table structure for table `operating_system`
--

CREATE TABLE `operating_system` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `operating_system`
--

INSERT INTO `operating_system` (`id`, `name`) VALUES
(1, 'Android'),
(2, 'iOS'),
(3, 'Window Phone'),
(4, 'Không');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `accessories_color_id` int(11) DEFAULT NULL,
  `person_order_id` int(11) NOT NULL,
  `type_user` int(11) NOT NULL,
  `time_order` date NOT NULL,
  `id_receipt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `accessories_color_id`, `person_order_id`, `type_user`, `time_order`, `id_receipt`) VALUES
(13, 5, NULL, 2, 1, '2016-05-17', 13),
(14, 5, NULL, 2, 1, '2016-05-17', 13),
(15, 5, NULL, 5, 1, '2016-05-19', 15),
(19, 9, 49, 1, 1, '2016-05-25', 19),
(20, 9, 50, 1, 1, '2016-05-25', 19),
(21, 12, NULL, 1, 1, '2016-11-01', 21),
(22, 11, NULL, 1, 1, '2016-11-01', 22),
(25, 11, NULL, 18, 0, '2016-11-08', 23),
(30, 9, NULL, 1, 1, '2016-11-09', 26),
(32, 4, NULL, 1, 1, '2016-11-09', 31),
(33, 9, NULL, 20, 0, '2016-11-14', 33);

-- --------------------------------------------------------

--
-- Table structure for table `price_level`
--

CREATE TABLE `price_level` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `price_level`
--

INSERT INTO `price_level` (`id`, `name`) VALUES
(1, 'Trên 15 triệu'),
(2, 'Từ 10 đến 15 triệu'),
(3, 'Từ 7 đến 10 triệu'),
(4, 'Từ 3 đến 7 triệu'),
(5, 'Từ 1 đến 3 triệu'),
(6, 'Dười 1 triệu');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `brands_id` int(11) NOT NULL,
  `operating_system_id` int(11) NOT NULL,
  `screen_level_id` int(11) NOT NULL,
  `price_level_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `stored` int(11) NOT NULL,
  `short_des` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `long_des` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `promotion_gift` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `promotion_percent` int(11) NOT NULL,
  `touch_screen_tech` varchar(250) NOT NULL,
  `resolution` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `screen_size` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `induction` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `touch_glass` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `resolution_cameraback` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `film_cameraback` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `flash_cameraback` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `capture_cameraback` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `resolution_camerafront` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `film_camerafront` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `videocall_camerafront` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `otherinfor_camerafront` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `version_id` int(11) NOT NULL,
  `chipset` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cpu_speed` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `gpu` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ram` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `rom` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `remaining_memory` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `external_memory` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `max_card_support` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `spectrum_2g` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `spectrum_3g` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `support_4g` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sim_slot` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sim_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wifi` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `gps` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bluetooth` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `nfc` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `connector_charger` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `headphone_jack` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `other_connect` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `design` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `material` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sizeall` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `weight` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `battery_capacity` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `battery_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `playing_movie` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `playing_music` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `recording` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `playing_radio` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `otherinfor_playing` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `brands_id`, `operating_system_id`, `screen_level_id`, `price_level_id`, `name`, `price`, `stored`, `short_des`, `long_des`, `promotion_gift`, `promotion_percent`, `touch_screen_tech`, `resolution`, `screen_size`, `induction`, `touch_glass`, `resolution_cameraback`, `film_cameraback`, `flash_cameraback`, `capture_cameraback`, `resolution_camerafront`, `film_camerafront`, `videocall_camerafront`, `otherinfor_camerafront`, `version_id`, `chipset`, `cpu_speed`, `gpu`, `ram`, `rom`, `remaining_memory`, `external_memory`, `max_card_support`, `spectrum_2g`, `spectrum_3g`, `support_4g`, `sim_slot`, `sim_type`, `wifi`, `gps`, `bluetooth`, `nfc`, `connector_charger`, `headphone_jack`, `other_connect`, `design`, `material`, `sizeall`, `weight`, `battery_capacity`, `battery_type`, `playing_movie`, `playing_music`, `recording`, `playing_radio`, `otherinfor_playing`) VALUES
(1, 2, 2, 3, 1, 'iPhone 6s Plus 64GBs', 24690000, 15, 'Giảm ngay 100.000đ sạc dự phòng khi mua kèm', '<ul>\r\n	<li>Bộ sản phẩm gồm:&nbsp;<a href="javascript:void(0)">Hộp, Sạc, Tai nghe, S&aacute;ch hướng dẫn, C&aacute;p, C&acirc;y lấy sim&nbsp;</a></li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: th&acirc;n m&aacute;y 12 th&aacute;ng, pin 12 th&aacute;ng, sạc 12 th&aacute;ng&nbsp;</li>\r\n	<li><strong>1 đổi 1 trong 1 th&aacute;ng&nbsp;</strong>với sản phẩm lỗi.&nbsp;</li>\r\n</ul>\r\n', '<p>-Tặng voucher 600.000 - 12 triệu hoặc Giảm ngay 2 triệu&nbsp;(đến 31/05).</p>\r\n\r\n<p>-&nbsp;Giảm ngay 5% khi Mua Laptop/ Tablet&nbsp;(đến 31/05).</p>\r\n\r\n<p>-&nbsp;Mua sim Vina B&ugrave;m 50 gi&aacute; chỉ từ 75.000đ: Miễn ph&iacute; 10 ph&uacute;t đầu cho tất cả cuộc gọi nội mạng Vinaphone &amp; điện thoại cố định VNPT + 30 ph&uacute;t ngoại mạng, 1,5GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n) .</p>\r\n\r\n<p>-&nbsp;Mua sim Vina B&ugrave;m gi&aacute; chỉ 120.000đ: Miễn ph&iacute; internet v&agrave; nghe trong 1 năm(1.2GB/th&aacute;ng), miễn ph&iacute; 360 tin nhắn + 360 ph&uacute;t gọi nội mạng.</p>\r\n\r\n<p>-&nbsp;Mua sim Mobi Big gi&aacute; chỉ từ 75.000đ: Mỗi th&aacute;ng tặng 1000 ph&uacute;t gọi nội mạng + 30 ph&uacute;t gọi ngoại mạng, 1GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n)&nbsp;</p>\r\n', 0, 'LED-backlit IPS LCD', '1080 x 1920 pixels', '5.5', 'Cảm ứng điện dung đa điểm', 'Kính oleophobic (ion cường lực)', '12 MP', 'Quay phim 4K 2160p@30fps', 'Có', 'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, Nhận diện nụ cười, HDR, Panorama, Chống rung quang học', '5 MP', 'Có', 'Có', 'Retina Flash, Tự động cân bằng sáng, Nhận diện khuôn mặt, Làm mịn da', 1, 'Apple A9 2 nhân 64-bit', '1.8 GHz', 'PowerVR GT7600', '2 GB', '64 GB', '54.5 GB', 'Không', 'Không', 'GSM 850/900/1800/1900', 'HSDPA 850/900/1900/2100', '4G LTE Cat 6', '1 Sim', 'Nano SIM', 'Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot', 'A-GPS, GLONASS', 'V4.0, A2DP', 'Có', 'Lightning', '3.5 mm', 'Không', 'Nguyên khối', 'Hợp kim nhôm', 'Dài 158.2 mm - Ngang 77.9 mm - Dày 7.3 mm', '192 g', '2750 mAh', 'Pin chuẩn Li-Po', 'MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, Xvid', 'AMR, MP3, WAV, WMA, eAAC+', 'Có', 'Không', 'Mở khóa bằng vân tay'),
(2, 2, 2, 3, 1, 'iPhone 6s Plus 16GB', 21790000, 10, '', '<p>-&nbsp;&nbsp;Tặng voucher 600.000 - 12 triệu hoặc Giảm ngay 2 triệu .</p>\r\n\r\n<p>-&nbsp;Giảm ngay 5% khi Mua Laptop/ Tablet&nbsp;(đến 31/05).</p>\r\n\r\n<p>-&nbsp;Mua sim Vina B&ugrave;m 50 gi&aacute; chỉ từ 75.000đ: Miễn ph&iacute; 10 ph&uacute;t đầu cho tất cả cuộc gọi nội mạng Vinaphone &amp; điện thoại cố định VNPT + 30 ph&uacute;t ngoại mạng, 1,5GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n).</p>\r\n\r\n<p>-&nbsp;Mua sim Vina B&ugrave;m gi&aacute; chỉ 120.000đ: Miễn ph&iacute; internet v&agrave; nghe trong 1 năm(1.2GB/th&aacute;ng), miễn ph&iacute; 360 tin nhắn + 360 ph&uacute;t gọi nội mạng.</p>\r\n\r\n<p>-&nbsp;Mua sim Mobi Big gi&aacute; chỉ từ 75.000đ: Mỗi th&aacute;ng tặng 1000 ph&uacute;t gọi nội mạng + 30 ph&uacute;t gọi ngoại mạng, 1GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n).</p>\r\n', '<ul>\r\n	<li>Bộ sản phẩm gồm:&nbsp;<a href="javascript:void(0)">Hộp, Sạc, Tai nghe, S&aacute;ch hướng dẫn, C&aacute;p, C&acirc;y lấy sim&nbsp;</a></li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: th&acirc;n m&aacute;y 12 th&aacute;ng, pin 12 th&aacute;ng, sạc 12 th&aacute;ng&nbsp;</li>\r\n	<li><strong>1 đổi 1 trong 1 th&aacute;ng&nbsp;</strong>với sản phẩm lỗi.&nbsp;</li>\r\n</ul>\r\n', 10, 'LED-backlit IPS LCD', '1080 x 1920 pixels', '5.5"', 'Cảm ứng điện dung đa điểm', 'Kính oleophobic (ion cường lực)', '12 MP', 'Quay phim 4K 2160p@30fps', 'Có', 'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, Nhận diện nụ cười, HDR, Panorama, Chống rung quang học', '5 MP', 'Có', 'Có', 'Selfie ngược sáng HDR, Tự động lấy nét, Nhận diện khuôn mặt, Tự động cân bằng sáng, Panorama, Retina Flash', 1, 'Apple A9 2 nhân 64-bit', '1.8 GHz', 'PowerVR GT7600', '2 GB', '16 GB', '9.9 GB', 'Không', 'Không', 'GSM 850/900/1800/1900', 'HSDPA 850/900/1900/2100', '4G LTE Cat 6', '1 Sim', 'Nano SIM', 'Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot', 'A-GPS, GLONASS', 'A2DP, LE, V4.2', 'Có', 'Lightning', '3.5 mm', 'Không', 'Nguyên khối', 'Hợp kim nhôm', 'Dài 158.2 mm - Ngang 77.9 mm - Dày 7.3 mm', '192 g', '2750 mAh', 'Pin chuẩn Li-Ion', 'MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, Xvid', 'AMR, MP3, WAV, WMA, eAAC+', 'Có', 'Không', 'Mở khóa bằng vân tay'),
(3, 2, 2, 3, 1, 'iPhone 6s 64GB', 21790000, 10, '', '<ul>\r\n	<li>Bộ sản phẩm gồm:&nbsp;<a href="javascript:void(0)">Hộp, Sạc, Tai nghe, S&aacute;ch hướng dẫn, C&aacute;p, C&acirc;y lấy sim&nbsp;</a></li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: th&acirc;n m&aacute;y 12 th&aacute;ng, pin 12 th&aacute;ng, sạc 12 th&aacute;ng&nbsp;</li>\r\n	<li><strong>1 đổi 1 trong 1 th&aacute;ng&nbsp;</strong>với sản phẩm lỗi.&nbsp;</li>\r\n</ul>\r\n', '<p>-&nbsp;Tặng voucher 600.000 - 12 triệu hoặc Giảm ngay 2 triệu&nbsp;(đến 31/05)</p>\r\n\r\n<p>-&nbsp;Giảm ngay 5% khi Mua Laptop/ Tablet&nbsp;(đến 31/05).</p>\r\n\r\n<p>-&nbsp;Mua sim Vina B&ugrave;m 50 gi&aacute; chỉ từ 75.000đ: Miễn ph&iacute; 10 ph&uacute;t đầu cho tất cả cuộc gọi nội mạng Vinaphone &amp; điện thoại cố định VNPT + 30 ph&uacute;t ngoại mạng, 1,5GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n) .</p>\r\n\r\n<p>-&nbsp;Mua sim Vina B&ugrave;m gi&aacute; chỉ 120.000đ: Miễn ph&iacute; internet v&agrave; nghe trong 1 năm(1.2GB/th&aacute;ng), miễn ph&iacute; 360 tin nhắn + 360 ph&uacute;t gọi nội mạng.</p>\r\n\r\n<p>-&nbsp;Mua sim Mobi Big gi&aacute; chỉ từ 75.000đ: Mỗi th&aacute;ng tặng 1000 ph&uacute;t gọi nội mạng + 30 ph&uacute;t gọi ngoại mạng, 1GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n).</p>\r\n', 0, 'LED-backlit IPS LCD', '1334 x 750 Pixels', '4.7" ', 'Cảm ứng điện dung đa điểm', 'Kính oleophobic (ion cường lực)', '12 MP', 'Quay phim 4K 2160p@30fps', 'Có', 'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, Nhận diện nụ cười, HDR, Panorama', '5 MP', 'Có', 'Có', 'Tự động cân bằng sáng, Nhận diện khuôn mặt, Retina Flash, Làm mịn da', 1, 'Apple A9 2 nhân 64-bit', '1.8 GHz', 'PowerVR GT7600', '2 GB', '64 GB', '54.5 GB', 'Không', 'Không', 'GSM 850/900/1800/1900', 'HSDPA 850/900/1900/2100', '4G LTE Cat 6', '1 Sim', 'Nano SIM', 'Dual-band', 'A-GPS, GLONASS', 'A2DP, V4.1', 'Có ', 'Lightning', '3.5 mm', 'Không', 'Nguyên khối', 'Hợp kim nhôm', 'Dài 138.3 mm - Ngang 67.1 mm - Dày 7.1 mm ', '143 g', '1715 mAh', 'Pin chuẩn Li-Po ', 'MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, Xvid', 'AMR, MP3, WAV, WMA, eAAC+', 'Có', 'Không', 'Mở khóa bằng vân tay'),
(4, 2, 2, 3, 1, 'iPhone 6 Plus 64GB', 21590000, 10, '', '<ul>\r\n	<li>Bộ sản phẩm gồm:&nbsp;<a href="javascript:void(0)">Hộp, Sạc, Tai nghe, S&aacute;ch hướng dẫn, C&acirc;y lấy sim&nbsp;</a></li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: th&acirc;n m&aacute;y 12 th&aacute;ng, pin 12 th&aacute;ng, sạc 12 th&aacute;ng&nbsp;</li>\r\n	<li><strong>1 đổi 1 trong 1 th&aacute;ng&nbsp;</strong>với sản phẩm lỗi.</li>\r\n</ul>\r\n', '<p>-&nbsp;Tặng PMH 2,000,000đ&nbsp;(đến 31/05).</p>\r\n\r\n<p>-&nbsp;Mua sim Vina B&ugrave;m 50 gi&aacute; chỉ từ 75.000đ: Miễn ph&iacute; 10 ph&uacute;t đầu cho tất cả cuộc gọi nội mạng Vinaphone &amp; điện thoại cố định VNPT + 30 ph&uacute;t ngoại mạng, 1,5GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n).</p>\r\n\r\n<p>-&nbsp;Mua sim Vina B&ugrave;m gi&aacute; chỉ 120.000đ: Miễn ph&iacute; internet v&agrave; nghe trong 1 năm(1.2GB/th&aacute;ng), miễn ph&iacute; 360 tin nhắn + 360 ph&uacute;t gọi nội mạng.</p>\r\n\r\n<p>-&nbsp;Mua sim Mobi Big gi&aacute; chỉ từ 75.000đ: Mỗi th&aacute;ng tặng 1000 ph&uacute;t gọi nội mạng + 30 ph&uacute;t gọi ngoại mạng, 1GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n) .</p>\r\n', 0, 'LED-backlit IPS LCD', '1080 x 1920 pixels', '5.5"', 'Cảm ứng điện dung đa điểm', 'Kính oleophobic (ion cường lực)', '8 MP', 'Quay phim FullHD 1080p@60fps', 'Có', '	Gắn thẻ địa lý, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, Nhận diện nụ cười, HDR, Panorama, Chống rung quang học', '1.2 MP', 'Có', 'Có', 'Chống rung, Tự động cân bằng sáng, Nhận diện khuôn mặt', 2, 'Apple A8 2 nhân 64-bit', '1.4 GHz', 'PowerVR GX6450', '1 GB', '64 GB', '56 GB', 'Không', 'Không', 'GSM 850/900/1800/1900', 'HSDPA 850/900/1900/2100', '4G LTE Cat 4', '1 Sim', 'Nano SIM', 'Wi-Fi 802.11 a/b/g/n/ac, Wi-Fi Direct, Wi-Fi hotspot', 'A-GPS, GLONASS', 'V4.0, A2DP', 'Có', 'Lightning', '3.5 mm', 'Không', 'Nguyên khối', 'Hợp kim nhôm', 'Dài 158.1 mm - Ngang 77.8 mm - Dày 7.1 mm', '172 g', '2915 mAh', 'Pin chuẩn Li-Ion', 'MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, Xvid', 'AMR, MP3, WAV, WMA, eAAC+', 'Có', 'Không', 'Mở khóa bằng vân tay'),
(5, 1, 1, 4, 1, 'Samsung Galaxy S6 Edge Plus', 19990000, 0, '', '<ul>\r\n	<li>Bộ sản phẩm gồm:&nbsp;<a href="javascript:void(0)">Hộp, Sạc, Tai nghe, S&aacute;ch hướng dẫn, C&aacute;p, C&acirc;y lấy sim&nbsp;</a></li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: th&acirc;n m&aacute;y 12 th&aacute;ng, pin 12 th&aacute;ng, sạc 6 th&aacute;ng&nbsp;</li>\r\n	<li><strong>1 đổi 1 trong 1 th&aacute;ng&nbsp;</strong>với sản phẩm lỗi.</li>\r\n</ul>\r\n', '<p>-&nbsp;&nbsp;Mua sim Vina B&ugrave;m 50 gi&aacute; chỉ từ 75.000đ: Miễn ph&iacute; 10 ph&uacute;t đầu cho tất cả cuộc gọi nội mạng Vinaphone &amp; điện thoại cố định VNPT + 30 ph&uacute;t ngoại mạng, 1,5GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n).</p>\r\n\r\n<p>-&nbsp;Mua sim Vina B&ugrave;m gi&aacute; chỉ 120.000đ: Miễn ph&iacute; internet v&agrave; nghe trong 1 năm(1.2GB/th&aacute;ng), miễn ph&iacute; 360 tin nhắn + 360 ph&uacute;t gọi nội mạng .</p>\r\n\r\n<p>-&nbsp;Mua sim Mobi Big gi&aacute; chỉ từ 75.000đ: Mỗi th&aacute;ng tặng 1000 ph&uacute;t gọi nội mạng + 30 ph&uacute;t gọi ngoại mạng, 1GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n)</p>\r\n', 0, 'Super AMOLED', '1440 x 2560 pixels', '5.7"', 'Cảm ứng điện dung đa điểm', 'Kính cường lực Gorilla Glass 4', '16 MP', 'Quay phim 4K 2160p@30fps', 'Có', 'Chạm lấy nét, Nhận diện khuôn mặt, HDR', '5 MP', 'Có', 'Có', '	Camera góc rộng, Tự động lấy nét, Làm mịn da, Nhận diện khuôn mặt, Chống rung, Chụp bằng giọng nói, Selfie bằng cử chỉ', 5, 'Exynos 7420 8 nhân 64-bit', '4 nhân 1.5 GHz Cortex-A53 & 4 nhân 2.1 GHz Cortex-A57', 'Mali-T760', '4 GB', '32 GB', '25 GB', 'Không', 'Không', 'GSM 850/900/1800/1900', 'HSDPA 850/900/1900/2100', '4G LTE Cat 6', '1 Sim', 'Nano SIM', 'Wi-Fi 802.11 a/b/g/n/ac, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 'A-GPS, GLONASS', 'A2DP, V4.1', 'Có', 'Micro USB', '3.5 mm', 'NFC, OTG', 'Pin liền', 'Khung kim loại + mặt kính cường lực', 'Dài 154.4 mm - Ngang 75.8 mm - Dày 6.9 mm', '153 g', '3000 mAh', 'Pin chuẩn Li-Ion', 'MP4, WMV, H.264(MPEG4-AVC), DivX, Xvid', 'MP3, WAV, WMA, eAAC+, FLAC', 'Có', 'Không', 'Mở khóa bằng vân tay, Tương thích kính thực tế ảo Gear VR, Sạc pin không dây, Sạc pin nhanh'),
(6, 9, 1, 3, 3, 'LG G5', 9500000, 5, '', '<p>Bộ sản phẩm gồm:&nbsp;<a href="javascript:void(0)">Hộp, Sạc, Tai nghe</a></p>\r\n', '<p>Chưa c&oacute; qu&agrave; khuyến m&atilde;i cho thiết bị n&agrave;y. Xin quy kh&aacute;ch vui l&ograve;ng đợi trong một thời gian ngắn.</p>\r\n', 0, 'IPS LCD', '1440 x 2560 pixels', '5.3"', 'Cảm ứng điện dung đa điểm', 'Kính cường lực Gorilla Glass 4', '16 MP và 8 MP (Hai camera)', 'Quay phim 4K 2160p@30fps', 'Có', 'Lấy nét bằng laser, Gắn thẻ địa lý, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, Nhận diện nụ cười, HDR, Panorama, Chống rung quang học, Chụp ảnh bằng giọng nói, Chụp bằng cử chỉ, Manual Mode', '8 MP', 'Có', 'Có', 'Camera góc rộng, Tự động lấy nét, Làm mịn da, Nhận diện khuôn mặt, Chụp bằng giọng nói', 8, 'Snapdragon 820 4 nhân 64-bit', '2.2 GHz', 'Adreno 530', '4 GB', '32 GB', 'Đang cập nhật', 'MicroSD', '2 TB', 'GSM 850/900/1800/1900', 'HSDPA 850/900/1900/2100', '4G LTE Cat 9', '1 Sim', 'Nano SIM', 'Wi-Fi 802.11 a/b/g/n/ac, Dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 'A-GPS, GLONASS', 'apt-X, A2DP, LE, V4.2', 'Có', 'USB Type-C', '3.5 mm', 'NFC, OTG, USB Type C, Miracast', 'Pin rời', 'Hợp kim Nhôm + Magie', 'Dài 149.4 mm - Ngang 73.9 mm - Dày 7.7 mm', '159 g', '2800 mAh', 'Lithium - Ion', 'H.265, 3GP, MP4, H.264(MPEG4-AVC), DivX, WMV9, Xvid', 'MP3, WAV, WMA, eAAC+, OGG, AC3, FLAC', 'Không', 'Không', 'Mở khóa bằng vân tay, Sạc pin không dây, Chạm 2 lần sáng màn hình, Sạc pin nhanh'),
(7, 2, 2, 3, 1, 'iPhone 6 64GB', 18490000, 0, '', '<ul>\r\n	<li>Bộ sản phẩm gồm:&nbsp;<a href="javascript:void(0)">Hộp, Sạc, Tai nghe, S&aacute;ch hướng dẫn&nbsp;</a></li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: th&acirc;n m&aacute;y 12 th&aacute;ng, pin 12 th&aacute;ng, sạc 12 th&aacute;ng</li>\r\n	<li><strong>1 đổi 1 trong 1 th&aacute;ng&nbsp;</strong>với sản phẩm lỗi.&nbsp;</li>\r\n</ul>\r\n', '<p>-&nbsp;Tặng PMH 2,000,000đ&nbsp;(đến 31/05).</p>\r\n\r\n<p>-&nbsp;&nbsp;Mua sim Vina B&ugrave;m 50 gi&aacute; chỉ từ 75.000đ: Miễn ph&iacute; 10 ph&uacute;t đầu cho tất cả cuộc gọi nội mạng Vinaphone &amp; điện thoại cố định VNPT + 30 ph&uacute;t ngoại mạng, 1,5GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n) .</p>\r\n\r\n<p>-&nbsp;Mua sim Vina B&ugrave;m gi&aacute; chỉ 120.000đ: Miễn ph&iacute; internet v&agrave; nghe trong 1 năm(1.2GB/th&aacute;ng), miễn ph&iacute; 360 tin nhắn + 360 ph&uacute;t gọi nội mạng.</p>\r\n\r\n<p>-&nbsp;Mua sim Mobi Big gi&aacute; chỉ từ 75.000đ: Mỗi th&aacute;ng tặng 1000 ph&uacute;t gọi nội mạng + 30 ph&uacute;t gọi ngoại mạng, 1GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n)&nbsp;</p>\r\n', 0, 'LED-backlit IPS LCD', '1334 x 750 Pixels', '4.7"', 'Cảm ứng điện dung đa điểm', 'Kính oleophobic (ion cường lực)', '8 MP', 'Quay phim FullHD 1080p@60fps', 'Có', '	Gắn thẻ địa lý, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, Nhận diện nụ cười, HDR, Panorama', '1.2 MP', 'Có', 'Có', 'Nhận diện khuôn mặt, Tự động cân bằng sáng', 1, 'Apple A8 2 nhân 64-bit', '1.4 GHz', 'PowerVR GX6450', '1 GB', '64 GB', '54.5 GB', 'Không', 'Không', 'GSM 850/900/1800/1900', 'HSDPA 850/900/1900/2100', '4G LTE Cat 4', '1 Sim', 'Nano SIM', 'Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot', 'A-GPS, GLONASS', 'V4.0, A2DP', 'Có', 'Lightning', '3.5 mm', 'Không', 'Nguyên khối', 'Hợp kim nhôm', 'Dài 138.1 mm - Ngang 67 mm - Dày 6.9 mm', '129 g', '1810 mAh', 'Pin chuẩn Li-Po', 'MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, Xvid', 'AMR, MP3, WAV, WMA, eAAC+', 'Có', 'Không', 'Mở khóa bằng vân tay'),
(8, 4, 1, 3, 1, 'Sony Xperia Z5 Premium Dual', 17990000, 10, '', '<ul>\r\n	<li>Bộ sản phẩm gồm:&nbsp;<a href="javascript:void(0)">Hộp, Sạc, Tai nghe, S&aacute;ch hướng dẫn, C&aacute;p&nbsp;</a></li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: th&acirc;n m&aacute;y 12 th&aacute;ng, pin 6 th&aacute;ng, sạc 6 th&aacute;ng&nbsp;</li>\r\n	<li><strong>1 đổi 1 trong 1 th&aacute;ng&nbsp;</strong>với sản phẩm lỗi.&nbsp;</li>\r\n</ul>\r\n', '<p>-&nbsp;&nbsp;Mua sim Vina B&ugrave;m 50 gi&aacute; chỉ từ 75.000đ: Miễn ph&iacute; 10 ph&uacute;t đầu cho tất cả cuộc gọi nội mạng Vinaphone &amp; điện thoại cố định VNPT + 30 ph&uacute;t ngoại mạng, 1,5GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n)&nbsp;</p>\r\n\r\n<p>-&nbsp;Mua sim Vina B&ugrave;m gi&aacute; chỉ 120.000đ: Miễn ph&iacute; internet v&agrave; nghe trong 1 năm(1.2GB/th&aacute;ng), miễn ph&iacute; 360 tin nhắn + 360 ph&uacute;t gọi nội mạng</p>\r\n\r\n<p>-&nbsp;Mua sim Mobi Big gi&aacute; chỉ từ 75.000đ: Mỗi th&aacute;ng tặng 1000 ph&uacute;t gọi nội mạng + 30 ph&uacute;t gọi ngoại mạng, 1GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n)&nbsp;</p>\r\n', 0, 'IPS LCD', '2160 x 3840 Pixels', '5.5"', 'Cảm ứng điện dung đa điểm', 'Kính cường lực Gorilla Glass 4', '23 MP', 'Quay phim 4K 2160p@30fps', 'Có', '	Gắn thẻ địa lý, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, Nhận diện nụ cười, HDR, Panorama, Chụp ảnh bằng giọng nói, Manual Mode', '5 MP', 'Có', 'Hỗ trợ VideoCall thông qua ứng dụng OTT', 'Làm mịn da', 5, 'Snapdragon 810 8 nhân 64-bit', '4 nhân 1.5 GHz Cortex-A53 & 4 nhân 2 GHz Cortex-A57', 'Adreno 430', '3 GB', '32 GB', '21.1 GB', 'MicroSD', '200 GB', 'GSM 850/900/1800/1900', 'HSDPA 850/900/1900/2100', '4G LTE Cat 6', '2 SIM 2 sóng', 'Nano SIM', 'Wi-Fi 802.11 a/b/g/n/ac, Dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 'A-GPS, GLONASS', 'A2DP, V4.1', 'Có', 'Micro USB', '3.5 mm', 'NFC, OTG, MHL', 'Nguyên khối', 'Khung kim loại + mặt kính cường lực', 'Dài 154.4 mm - Rộng 76.0 mm - Dày 7.8 mm', '180 g', '3430 mAh', 'Pin chuẩn Li-Ion', 'H.265, MP4, DivX', 'MP3, WAV, eAAC+, FLAC', 'Có, microphone chuyên dụng chống ồn', 'FM radio với RDS', 'Mở khóa bằng vân tay, Sạc pin nhanh'),
(9, 2, 2, 3, 1, 'iPhone 6 Plus 16GB', 17490000, 10, '', '<ul>\r\n	<li>Bộ sản phẩm gồm:&nbsp;<a href="javascript:void(0)">Hộp, Sạc, Tai nghe, S&aacute;ch hướng dẫn, C&acirc;y lấy sim&nbsp;</a></li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: th&acirc;n m&aacute;y 12 th&aacute;ng, pin 12 th&aacute;ng, sạc 12 th&aacute;ng&nbsp;</li>\r\n	<li><strong>1 đổi 1 trong 1 th&aacute;ng&nbsp;</strong>với sản phẩm lỗi.</li>\r\n</ul>\r\n', '<p>&nbsp;-&nbsp;Mua sim Vina B&ugrave;m 50 gi&aacute; chỉ từ 75.000đ: Miễn ph&iacute; 10 ph&uacute;t đầu cho tất cả cuộc gọi nội mạng Vinaphone &amp; điện thoại cố định VNPT + 30 ph&uacute;t ngoại mạng, 1,5GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n).</p>\r\n\r\n<p>-&nbsp;Mua sim Vina B&ugrave;m gi&aacute; chỉ 120.000đ: Miễn ph&iacute; internet v&agrave; nghe trong 1 năm(1.2GB/th&aacute;ng), miễn ph&iacute; 360 tin nhắn + 360 ph&uacute;t gọi nội mạng.</p>\r\n\r\n<p>-&nbsp;Mua sim Mobi Big gi&aacute; chỉ từ 75.000đ: Mỗi th&aacute;ng tặng 1000 ph&uacute;t gọi nội mạng + 30 ph&uacute;t gọi ngoại mạng, 1GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n)</p>\r\n', 0, 'LED-backlit IPS LCD', '1080 x 1920 pixels', '5.5"', 'Cảm ứng điện dung đa điểm', 'Kính oleophobic (ion cường lực)', '8 MP', 'Quay phim FullHD 1080p@60fps', 'Có', 'Gắn thẻ địa lý, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, Nhận diện nụ cười, HDR, Panorama, Chống rung quang học', '1.2 MPp', 'Có', 'Có', 'Tự động lấy nét, Nhận diện khuôn mặt, Tự động cân bằng sáng', 1, 'Apple A8 2 nhân 64-bit', '1.4 GHz', 'PowerVR GX6450', '1 GB', '16 GB', '13.5 GB', 'Không', 'Không', 'GSM 850/900/1800/1900', 'HSDPA 850/900/1900/2100', '4G LTE Cat 4', '1 Sim', 'Nano SIM', 'Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot', 'A-GPS, GLONASS', 'V4.0, A2DP', 'Có', 'Lightning', '3.5 mm', 'Không', 'Nguyên khối', 'Hợp kim nhôm', 'Dài 158.1 mm - Ngang 77.8 mm - Dày 7.1 mm', '172 g', '2915 mAh', 'Pin chuẩn Li-Ion', 'MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, Xvid', 'AMR, MP3, WAV, WMA, eAAC+', 'Có', 'Không', 'Mở khóa bằng vân tay'),
(10, 2, 2, 3, 1, 'iPhone 6s 16GB', 18490000, 10, '', '<ul>\r\n	<li>Bộ sản phẩm gồm:&nbsp;<a href="javascript:void(0)">Hộp, Sạc, Tai nghe, S&aacute;ch hướng dẫn, C&aacute;p, C&acirc;y lấy sim&nbsp;</a></li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: th&acirc;n m&aacute;y 12 th&aacute;ng, pin 12 th&aacute;ng, sạc 12 th&aacute;ng&nbsp;</li>\r\n	<li><strong>1 đổi 1 trong 1 th&aacute;ng&nbsp;</strong>với sản phẩm lỗi.</li>\r\n</ul>\r\n', '<p>-&nbsp;Mua sim Vina B&ugrave;m 50 gi&aacute; chỉ từ 75.000đ: Miễn ph&iacute; 10 ph&uacute;t đầu cho tất cả cuộc gọi nội mạng Vinaphone &amp; điện thoại cố định VNPT + 30 ph&uacute;t ngoại mạng, 1,5GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n)&nbsp;</p>\r\n\r\n<p>-&nbsp;Mua sim Vina B&ugrave;m gi&aacute; chỉ 120.000đ: Miễn ph&iacute; internet v&agrave; nghe trong 1 năm(1.2GB/th&aacute;ng), miễn ph&iacute; 360 tin nhắn + 360 ph&uacute;t gọi nội mạng&nbsp;</p>\r\n\r\n<p>-&nbsp;Mua sim Mobi Big gi&aacute; chỉ từ 75.000đ: Mỗi th&aacute;ng tặng 1000 ph&uacute;t gọi nội mạng + 30 ph&uacute;t gọi ngoại mạng, 1GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n)</p>\r\n', 0, 'LED-backlit IPS LCD', '1334 x 750 Pixels', '4.7"', 'Cảm ứng điện dung đa điểm', 'Kính oleophobic (ion cường lực)', '12 MP', 'Quay phim 4K 2160p@30fps', 'Có', 'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, Nhận diện nụ cười, HDR, Panorama', '5 MP', 'Có', 'Có', 'Selfie ngược sáng HDR, Nhận diện khuôn mặt, Tự động cân bằng sáng, Chống rung, Panorama', 1, 'Apple A9 2 nhân 64-bit', '1.8 GHz', 'PowerVR GT7600', '2 GB', '16 GB', '13,5 GB', 'Không', 'Không', 'GSM 850/900/1800/1900', 'HSDPA 850/900/1900/2100', '4G LTE Cat 6', '1 Sim', 'Nano SIM', 'Wi-Fi 802.11 a/b/g/n/ac, Dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 'A-GPS, GLONASS', 'A2DP, V4.1', 'Có', 'Lightning', '3.5 mm', 'Không', 'Nguyên khối', 'Hợp kim nhôm', 'Dài 138.3 mm - Ngang 67.1 mm - Dày 7.1 mm', '143 g', '1715 mAh', 'Pin chuẩn Li-Po', 'MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, Xvid', 'AMR, MP3, WAV, WMA, eAAC+', 'Có', 'Không', 'Mở khóa bằng vân tay'),
(11, 1, 1, 3, 1, 'Samsung Galaxy S6 Edge 32GB', 14990000, 10, '', '<ul>\r\n	<li>Bộ sản phẩm gồm:&nbsp;<a href="javascript:void(0)">Hộp, Sạc, Tai nghe, S&aacute;ch hướng dẫn, C&acirc;y lấy sim, C&aacute;p&nbsp;</a></li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: th&acirc;n m&aacute;y 12 th&aacute;ng, pin 12 th&aacute;ng, sạc 6 th&aacute;ng&nbsp;</li>\r\n	<li><strong>1 đổi 1 trong 1 th&aacute;ng&nbsp;</strong>với sản phẩm lỗi.</li>\r\n</ul>\r\n', '<p>-&nbsp;Mua sim Vina B&ugrave;m 50 gi&aacute; chỉ từ 75.000đ: Miễn ph&iacute; 10 ph&uacute;t đầu cho tất cả cuộc gọi nội mạng Vinaphone &amp; điện thoại cố định VNPT + 30 ph&uacute;t ngoại mạng, 1,5GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n)&nbsp;</p>\r\n\r\n<p>-&nbsp;Mua sim Vina B&ugrave;m gi&aacute; chỉ 120.000đ: Miễn ph&iacute; internet v&agrave; nghe trong 1 năm(1.2GB/th&aacute;ng), miễn ph&iacute; 360 tin nhắn + 360 ph&uacute;t gọi nội mạng</p>\r\n\r\n<p>-&nbsp;Mua sim Mobi Big gi&aacute; chỉ từ 75.000đ: Mỗi th&aacute;ng tặng 1000 ph&uacute;t gọi nội mạng + 30 ph&uacute;t gọi ngoại mạng, 1GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n)</p>\r\n', 0, 'Super AMOLED', '1440 x 2560 pixels', '5.1"', 'Cảm ứng điện dung đa điểm', 'Kính cường lực Gorilla Glass 4', '16 MP', 'Quay phim 4K 2160p@30fps', 'Có', 'Tự động lấy nét, Chạm lấy nét, HDR, Panorama', '5 MP', 'Có', 'Có', 'Chống rung, Nhận diện khuôn mặt, Làm mịn da, Tự động lấy nét, Selfie ngược sáng HDR', 6, 'Exynos 7420 8 nhân 64-bit', '4 nhân 1.5 GHz Cortex-A53 & 4 nhân 2.1 GHz Cortex-A57', 'Mali-T760', '3 GB', '32 GB', '24.9 GB', 'Không', 'Không', 'GSM 850/900/1800/1900', 'HSDPA 850/900/1900/2100', '4G LTE Cat 6', '1 Sim', 'Nano SIM', 'Wi-Fi 802.11 a/b/g/n/ac, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 'A-GPS, GLONASS', 'A2DP, V4.1', 'Có', 'Micro USB', '3.5 mm', 'NFC, OTG, Hồng Ngoại, Screen Mirroring', 'Pin liền', 'Khung kim loại + mặt kính cường lực', 'Dài 142.1 mm - Ngang 70.1 mm - Dày 7 mm', '132 g', '2600 mAh', 'Pin chuẩn Li-Ion', 'MP4, WMV, H.264(MPEG4-AVC), DivX, Xvid', 'MP3, WAV, WMA, eAAC+, FLAC', 'Có', 'Không', 'Sạc pin nhanh, Sạc pin không dây, Tương thích kính thực tế ảo Gear VR, Mở khóa bằng vân tay'),
(12, 1, 1, 3, 1, 'Samsung Galaxy S7 Edge', 18490000, 10, '', '<ul>\r\n	<li>Bộ sản phẩm gồm:&nbsp;<a href="javascript:void(0)">Hộp, Sạc, Tai nghe, S&aacute;ch hướng dẫn, C&aacute;p, C&acirc;y lấy sim, C&aacute;p OTG&nbsp;</a></li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: th&acirc;n m&aacute;y 12 th&aacute;ng, pin 12 th&aacute;ng, sạc 6 th&aacute;ng&nbsp;</li>\r\n	<li><strong>1 đổi 1 trong 1 th&aacute;ng&nbsp;</strong>với sản phẩm lỗi.&nbsp;</li>\r\n</ul>\r\n', '<p>-&nbsp;Tặng PMH 700,000đ + Tặng Miếng d&aacute;n m&agrave;n h&igrave;nh&nbsp;(đến 31/05)</p>\r\n\r\n<p>-&nbsp;D&agrave;nh ri&ecirc;ng cho S7, S7 Edge:<a href="https://www.thegioididong.com/tin-tuc/chi-tiet-ve-goi-bao-hiem-vip-cua-samsung-khi-mua-galaxy-s7-s7-edge-tai-thegioididong-com-798935" target="_blank">&nbsp;Bảo hiểm VIP</a>&nbsp;v&agrave;&nbsp;<a href="https://www.thegioididong.com/tin-tuc/dac-quyen-danh-cho-chu-so-huu-samsung-galaxy-s7--s7-edge-803359" target="_blank">Luxury Elite</a>&nbsp;(đến 31/05)</p>\r\n\r\n<p>-&nbsp;Mua sim Vina B&ugrave;m 50 gi&aacute; chỉ từ 75.000đ: Miễn ph&iacute; 10 ph&uacute;t đầu cho tất cả cuộc gọi nội mạng Vinaphone &amp; điện thoại cố định VNPT + 30 ph&uacute;t ngoại mạng, 1,5GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n)</p>\r\n\r\n<p>-&nbsp;Mua sim Vina B&ugrave;m gi&aacute; chỉ 120.000đ: Miễn ph&iacute; internet v&agrave; nghe trong 1 năm(1.2GB/th&aacute;ng), miễn ph&iacute; 360 tin nhắn + 360 ph&uacute;t gọi nội mạng</p>\r\n\r\n<p>-&nbsp;Mua sim Mobi Big gi&aacute; chỉ từ 75.000đ: Mỗi th&aacute;ng tặng 1000 ph&uacute;t gọi nội mạng + 30 ph&uacute;t gọi ngoại mạng, 1GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n)&nbsp;</p>\r\n', 0, 'Super AMOLED', '1440 x 2560 pixels', '5.5"', 'Cảm ứng điện dung đa điểm', 'Kính cường lực Gorilla Glass 4', '12 MP', 'Quay phim 4K 2160p@60fps', 'Dual-tone LED', 'Gắn thẻ địa lý, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, Nhận diện nụ cười, HDR, Panorama, Chống rung quang học, Chụp ảnh bằng giọng nói, Chụp bằng cử chỉ', '5 MP', 'Có', 'Hỗ trợ VideoCall thông qua ứng dụng OTT', 'Selfie bằng cử chỉ, Nhận diện khuôn mặt, Làm mịn da', 8, 'Exynos 8890 8 nhân 64-bit', '4 nhân 2.3 GHz và 4 nhân 1.6 GHz', 'Mali-T880 MP12', '4 GB', '32 GB', '24.3 GB', 'MicroSD', '200 GB', 'GSM 850/900/1800/1900', 'HSDPA 850/900/1900/2100', '4G LTE Cat 9', '2 SIM, SIM 2 chung khe thẻ nhớ', 'Nano SIM', 'Wi-Fi 802.11 a/b/g/n/ac, Dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 'BDS, A-GPS, GLONASS', 'v4.2, apt-X, A2DP, LE', 'Có', 'Micro USB', '3.5 mm', 'NFC, OTG', 'Nguyên khối', 'Khung kim loại + mặt kính cường lực', 'Dài 150.9 mm - Ngang 72.6 mm - Dày 7.7 mm', '157 g', '3600 mAh', 'Pin chuẩn Li-Ion', 'Có', 'Có', 'Có, microphone chuyên dụng chống ồn', 'Không', 'Sạc pin nhanh, Sạc pin không dây, Chống nước, chống bụi, Mở khóa bằng vân tay'),
(13, 1, 1, 4, 1, 'Samsung Galaxy Note 5', 15990000, 10, '', '<ul>\r\n	<li>Bộ sản phẩm gồm:&nbsp;<a href="javascript:void(0)">Hộp, Sạc, Tai nghe, S&aacute;ch hướng dẫn, C&aacute;p, C&acirc;y lấy sim, B&uacute;t cảm ứng&nbsp;</a></li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: th&acirc;n m&aacute;y 12 th&aacute;ng, pin 12 th&aacute;ng, sạc 6 th&aacute;ng</li>\r\n	<li><strong>1 đổi 1 trong 1 th&aacute;ng&nbsp;</strong>với sản phẩm lỗi.&nbsp;</li>\r\n</ul>\r\n', '<p>-&nbsp;Tặng PMH 700.000đ hoặc V&ograve;ng quay 600.000 - 6 triệu&nbsp;</p>\r\n\r\n<p>-&nbsp;Mua sim Vina B&ugrave;m 50 gi&aacute; chỉ từ 75.000đ: Miễn ph&iacute; 10 ph&uacute;t đầu cho tất cả cuộc gọi nội mạng Vinaphone &amp; điện thoại cố định VNPT + 30 ph&uacute;t ngoại mạng, 1,5GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n)</p>\r\n\r\n<p>-&nbsp;Mua sim Vina B&ugrave;m gi&aacute; chỉ 120.000đ: Miễn ph&iacute; internet v&agrave; nghe trong 1 năm(1.2GB/th&aacute;ng), miễn ph&iacute; 360 tin nhắn + 360 ph&uacute;t gọi nội mạng&nbsp;</p>\r\n\r\n<p>-&nbsp;Mua sim Mobi Big gi&aacute; chỉ từ 75.000đ: Mỗi th&aacute;ng tặng 1000 ph&uacute;t gọi nội mạng + 30 ph&uacute;t gọi ngoại mạng, 1GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n)</p>\r\n', 0, 'Super AMOLED', '1440 x 2560 pixels', '5.7"', 'Cảm ứng điện dung đa điểm', 'Kính cường lực Gorilla Glass 4', '16 MP', 'Quay phim 4K 2160p@30fps', 'Có', 'Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, Nhận diện nụ cười, HDR, Panorama, Chống rung quang học, Chụp ảnh bằng giọng nói, Chụp bằng cử chỉ', '5 MP', 'Có', 'Có', 'Camera góc rộng, Làm mịn da, Nhận diện khuôn mặt, Chống rung, Chụp bằng giọng nói, Selfie bằng cử chỉ', 5, 'Exynos 7420 8 nhân 64-bit', '4 nhân 1.5 GHz Cortex-A53 & 4 nhân 2.1 GHz Cortex-A57', 'Mali-T760', '4 GB', '32 GB', '24.6 GB', 'Không', 'Không', 'GSM 850/900/1800/1900', 'HSDPA 850/900/2100, LTE 800/900/1800/2100/2600', '4G LTE Cat 9', '1 Sim', 'Nano SIM', 'Wi-Fi 802.11 a/b/g/n/ac, Dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 'A-GPS, GLONASS', 'Có, A2DP, LE, EDR', 'Có', 'Micro USB', '3.5 mm', 'NFC, OTG', 'Nguyên khối', 'Khung kim loại + mặt kính cường lực', 'Dài 153.2 mm - Ngang 76.1 mm - Dày 7.6 mm', '171 g', '3000 mAh', 'Pin chuẩn Li-Po', 'H.265, 3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, Xvid', 'MP3, WAV, eAAC+, FLAC', 'Có', 'Không', 'Mở khóa bằng vân tay, Tương thích kính thực tế ảo Gear VR, Sạc pin không dây, Sạc pin nhanh'),
(14, 3, 3, 4, 1, 'Microsoft Lumia 950 XL', 9990000, 10, '', '<ul>\r\n	<li>Bộ sản phẩm gồm:&nbsp;<a href="javascript:void(0)">Hộp, Pin, Sạc, Tai nghe, S&aacute;ch hướng dẫn, C&aacute;p&nbsp;</a></li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: th&acirc;n m&aacute;y 12 th&aacute;ng, pin 6 th&aacute;ng, sạc 6 th&aacute;ng&nbsp;</li>\r\n	<li><strong>1 đổi 1 trong 1 th&aacute;ng&nbsp;</strong>với sản phẩm lỗi.&nbsp;</li>\r\n</ul>\r\n', '<p>-&nbsp;Tặng Dock chuyển đổi&nbsp;</p>\r\n\r\n<p>-&nbsp;Tặng 1 năm sử dụng Office 365 bản quyền<a href="https://www.thegioididong.com/tin-tuc/nhan-1-nam-su-dung-office-365-ban-quyen-khi-mua-microsoft-lumia-950-950-xl-803538" target="_blank">&nbsp;Xem chi tiết</a>(đến 31/05)</p>\r\n\r\n<p>-&nbsp;&nbsp;Mua sim Vina B&ugrave;m 50 gi&aacute; chỉ từ 75.000đ: Miễn ph&iacute; 10 ph&uacute;t đầu cho tất cả cuộc gọi nội mạng Vinaphone &amp; điện thoại cố định VNPT + 30 ph&uacute;t ngoại mạng, 1,5GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n)&nbsp;</p>\r\n\r\n<p>-&nbsp;Mua sim Vina B&ugrave;m gi&aacute; chỉ 120.000đ: Miễn ph&iacute; internet v&agrave; nghe trong 1 năm(1.2GB/th&aacute;ng), miễn ph&iacute; 360 tin nhắn + 360 ph&uacute;t gọi nội mạng&nbsp;</p>\r\n\r\n<p>-&nbsp;Mua sim Mobi Big gi&aacute; chỉ từ 75.000đ: Mỗi th&aacute;ng tặng 1000 ph&uacute;t gọi nội mạng + 30 ph&uacute;t gọi ngoại mạng, 1GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n)</p>\r\n', 0, 'AMOLED', '1440 x 2560 pixels', '5.7"', 'Cảm ứng điện dung đa điểm', 'Kính cường lực Gorilla Glass 4', '20 MP', 'Quay phim 4K 2160p@30fps', 'Triple-LED', 'Gắn thẻ địa lý, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, Nhận diện nụ cười, HDR, Panorama, Chống rung quang học', '5 MP', 'Có', 'Có', 'Quay video Full HD, Nhận diện khuôn mặt', 14, 'Snapdragon 810 8 nhân 64-bit', '4 nhân 1.5 GHz Cortex-A53 & 4 nhân 2 GHz Cortex-A57', 'Adreno 430', '3 GB', '32 GB', 'Khoảng 24.66 GB', 'MicroSD', '200 GB', 'GSM 850/900/1800/1900', 'HSDPA 850/900/1900/2100', '4G LTE Cat 6', '1 Sim', 'Nano SIM', 'Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot', 'A-GPS, GLONASS', 'A2DP, V4.1', 'Có', 'USB Type-C', '3.5 mm', 'NFC, OTG, USB Type C', 'Pin rời', 'Nhựa', 'Dài 151.9 mm - Ngang 78.4 mm - Dày 8.1 mm', '165 g', '3340 mAh', 'Pin chuẩn Li-Ion', 'MP4, H.264(MPEG4-AVC), WMV9', 'MP3, WAV, WMA, eAAC+', 'Có, microphone chuyên dụng chống ồn', 'Có', 'Microsoft Continuum, Quét mống mắt, Sạc pin không dây, Sạc pin nhanh'),
(15, 9, 1, 4, 1, 'LG V10', 15990000, 10, '', '<ul>\r\n	<li>Bộ sản phẩm gồm:&nbsp;<a href="javascript:void(0)">Hộp, Pin, Sạc, Tai nghe, S&aacute;ch hướng dẫn&nbsp;</a></li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: th&acirc;n m&aacute;y 12 th&aacute;ng, pin 6 th&aacute;ng, sạc 6 th&aacute;ng&nbsp;</li>\r\n	<li><strong>1 đổi 1 trong 1 th&aacute;ng&nbsp;</strong>với sản phẩm lỗi.&nbsp;</li>\r\n</ul>\r\n', '<p>-&nbsp;Giảm ngay 2 triệu&nbsp;(đến 31/05)</p>\r\n\r\n<p>-&nbsp;&nbsp;Mua sim Vina B&ugrave;m 50 gi&aacute; chỉ từ 75.000đ: Miễn ph&iacute; 10 ph&uacute;t đầu cho tất cả cuộc gọi nội mạng Vinaphone &amp; điện thoại cố định VNPT + 30 ph&uacute;t ngoại mạng, 1,5GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n)&nbsp;</p>\r\n\r\n<p>-&nbsp;Mua sim Vina B&ugrave;m gi&aacute; chỉ 120.000đ: Miễn ph&iacute; internet v&agrave; nghe trong 1 năm(1.2GB/th&aacute;ng), miễn ph&iacute; 360 tin nhắn + 360 ph&uacute;t gọi nội mạng&nbsp;</p>\r\n\r\n<p>-&nbsp;Mua sim Mobi Big gi&aacute; chỉ từ 75.000đ: Mỗi th&aacute;ng tặng 1000 ph&uacute;t gọi nội mạng + 30 ph&uacute;t gọi ngoại mạng, 1GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n)</p>\r\n', 0, 'Quantum IPS', '1440 x 2560 pixels & 160 x 1040 pixels', 'Chính: 5.7", phụ: 2.1"', 'Cảm ứng điện dung đa điểm', 'Kính cường lực Gorilla Glass 4', '16 MP', 'Quay phim 4K 2160p@30fps', 'Có', 'Lấy nét bằng laser, Gắn thẻ địa lý, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, Nhận diện nụ cười, HDR, Panorama, Chống rung quang học, Chụp ảnh bằng giọng nói, Chụp bằng cử chỉ, Manual Mode', '5 MP', 'Có', 'Có', 'Selfie ngược sáng HDR, Camera góc rộng, Làm mịn da, Nhận diện khuôn mặt, Chụp bằng giọng nói, Camera kép', 5, 'Qualcomm Snapdragon 808 6 nhân 64-bit', '2 nhân 1.8 GHz Cortex-A57 & 4 nhân 1.44 GHz Cortex-A53', 'Adreno 418', '4 GB', '64 GB', 'Khoảng 51 GB', 'MicroSD', '2 TB', 'GSM 850/900/1800/1900', 'HSDPA 850/900/1900/2100', '4G LTE Cat 6', '1 Sim', 'Nano SIM', 'Wi-Fi 802.11 a/b/g/n/ac, Dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 'A-GPS, GLONASS', 'apt-X, A2DP, LE, V4.1', 'Có', 'Micro USB', '3.5 mm', 'NFC, OTG, Hồng Ngoại, Miracast', 'Pin rời', 'Nhựa, nhôm', 'Dài 159.6 mm - Ngang 79.3 mm - Dày 8.6 mm', '192 g', '3000 mAh', 'Pin chuẩn Li-Ion', '3GP, MP4, WMV, H.264(MPEG4-AVC), DivX, Xvid', 'MP3, WAV, eAAC+, FLAC', 'Có, microphone chuyên dụng chống ồn', 'Có', 'Mở khóa bằng vân tay, Chạm 2 lần sáng màn hình, Sạc pin nhanh'),
(16, 1, 1, 3, 1, 'Samsung Galaxy S7', 15990000, 10, '', '<ul>\r\n	<li>Bộ sản phẩm gồm:&nbsp;<a href="javascript:void(0)">Hộp, Sạc, Tai nghe, S&aacute;ch hướng dẫn, C&aacute;p, C&acirc;y lấy sim&nbsp;</a></li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: th&acirc;n m&aacute;y 12 th&aacute;ng, pin 12 th&aacute;ng, sạc 6 th&aacute;ng&nbsp;</li>\r\n	<li><strong>1 đổi 1 trong 1 th&aacute;ng&nbsp;</strong>với sản phẩm lỗi</li>\r\n</ul>\r\n', '<p>-&nbsp;Tặng PMH 700,000đ + Tặng Miếng d&aacute;n m&agrave;n h&igrave;nh&nbsp;(đến 31/05)</p>\r\n\r\n<p>-&nbsp;D&agrave;nh ri&ecirc;ng cho S7, S7 Edge:<a href="https://www.thegioididong.com/tin-tuc/chi-tiet-ve-goi-bao-hiem-vip-cua-samsung-khi-mua-galaxy-s7-s7-edge-tai-thegioididong-com-798935" target="_blank">&nbsp;Bảo hiểm VIP</a>&nbsp;v&agrave;&nbsp;<a href="https://www.thegioididong.com/tin-tuc/dac-quyen-danh-cho-chu-so-huu-samsung-galaxy-s7--s7-edge-803359" target="_blank">Luxury Elite</a>&nbsp;(đến 31/05)</p>\r\n\r\n<p>-&nbsp;&nbsp;Mua sim Vina B&ugrave;m 50 gi&aacute; chỉ từ 75.000đ: Miễn ph&iacute; 10 ph&uacute;t đầu cho tất cả cuộc gọi nội mạng Vinaphone &amp; điện thoại cố định VNPT + 30 ph&uacute;t ngoại mạng, 1,5GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n)</p>\r\n\r\n<p>-&nbsp;Mua sim Vina B&ugrave;m gi&aacute; chỉ 120.000đ: Miễn ph&iacute; internet v&agrave; nghe trong 1 năm(1.2GB/th&aacute;ng), miễn ph&iacute; 360 tin nhắn + 360 ph&uacute;t gọi nội mạng</p>\r\n\r\n<p>-&nbsp;Mua sim Mobi Big gi&aacute; chỉ từ 75.000đ: Mỗi th&aacute;ng tặng 1000 ph&uacute;t gọi nội mạng + 30 ph&uacute;t gọi ngoại mạng, 1GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n)</p>\r\n', 0, 'Super AMOLED', '1440 x 2560 pixels', '5.1"', 'Cảm ứng điện dung đa điểm', 'Kính cường lực Gorilla Glass 4', '12 MP', 'Quay phim 4K 2160p@30fps', 'Có', 'Gắn thẻ địa lý, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, Nhận diện nụ cười, HDR, Panorama, Chống rung quang học', '5 MP', 'Có', 'Có', 'Selfie ngược sáng HDR, Camera góc rộng, Tự động lấy nét, Làm mịn da, Nhận diện khuôn mặt, Chụp bằng giọng nói', 8, 'Exynos 8890 8 nhân 64-bit', '4 nhân 2.3 GHz và 4 nhân 1.6 GHz', 'Mali-T880 MP12', '4 GB', '32 GB', '24.3 GB', 'MicroSD', '200 GB', 'GSM 850/900/1800/1900', 'HSDPA 850/900/1900/2100', '4G LTE Cat 9', '2 SIM, SIM 2 chung khe thẻ nhớ', 'Nano SIM', 'Wi-Fi 802.11 a/b/g/n/ac, Dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 'A-GPS, GLONASS', 'v4.2, A2DP, LE, EDR', 'Có:', 'Micro USB', '3.5 mm', 'NFC, OTG', 'Nguyên khối', 'Khung kim loại + mặt kính cường lực', 'Dài 142.4 mm - Ngang 69.6 mm - Dày 7.9 mm', '152 g', '3000 mAh', 'Pin chuẩn Li-Ion', 'Có', 'MP3, WAV, eAAC+, FLAC', 'Có, microphone chuyên dụng chống ồn', 'Không', 'Mở khóa bằng vân tay, Chống nước, chống bụi, Sạc pin không dây, Sạc pin nhanh'),
(17, 2, 2, 3, 2, 'IPHONE 6 16GB', 14990000, 10, '', '<ul>\r\n	<li>Bộ sản phẩm gồm:&nbsp;<a href="javascript:void(0)">Hộp, Sạc, Tai nghe, S&aacute;ch hướng dẫn, C&acirc;y lấy sim&nbsp;</a></li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: th&acirc;n m&aacute;y 12 th&aacute;ng, pin 12 th&aacute;ng, sạc 12 th&aacute;ng&nbsp;</li>\r\n	<li><strong>1 đổi 1 trong 1 th&aacute;ng&nbsp;</strong>với sản phẩm lỗi.&nbsp;</li>\r\n</ul>\r\n', '<p>-&nbsp;Mua sim Vina B&ugrave;m 50 gi&aacute; chỉ từ 75.000đ: Miễn ph&iacute; 10 ph&uacute;t đầu cho tất cả cuộc gọi nội mạng Vinaphone &amp; điện thoại cố định VNPT + 30 ph&uacute;t ngoại mạng, 1,5GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n)&nbsp;</p>\r\n\r\n<p>-&nbsp;Mua sim Vina B&ugrave;m gi&aacute; chỉ 120.000đ: Miễn ph&iacute; internet v&agrave; nghe trong 1 năm(1.2GB/th&aacute;ng), miễn ph&iacute; 360 tin nhắn + 360 ph&uacute;t gọi nội mạng</p>\r\n\r\n<p>-&nbsp;Mua sim Mobi Big gi&aacute; chỉ từ 75.000đ: Mỗi th&aacute;ng tặng 1000 ph&uacute;t gọi nội mạng + 30 ph&uacute;t gọi ngoại mạng, 1GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n)&nbsp;</p>\r\n', 0, 'LED-backlit IPS LCD', '1334 x 750 Pixels', '4.7"', 'Cảm ứng điện dung đa điểm', 'Kính oleophobic (ion cường lực)', '8 MP', 'Quay phim FullHD 1080p@60fps', 'Có', 'Gắn thẻ địa lý, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, Nhận diện nụ cười, HDR, Panorama, Chống rung quang học', '1.2 MP', 'Có', 'Có', 'Chống rung, Tự động cân bằng sáng', 1, 'Apple A8 2 nhân 64-bit', '1.4 GHz', 'PowerVR GX6450', '1 GB', '16 GB', '9.9 GB', 'Không', 'Không', 'GSM 850/900/1800/1900', 'HSDPA 850/900/1900/2100', '4G LTE Cat 4', '1 Sim', 'Nano SIM', 'Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi Direct, Wi-Fi hotspot', 'A-GPS, GLONASS', 'V4.0, A2DP', 'Có', 'Lightning', '3.5 mm', 'Không', 'Nguyên khối', 'Hợp kim nhôm', 'Dài 138.1 mm - Ngang 67 mm - Dày 6.9 mm', '124 g', '1810 mAh', 'Pin chuẩn Li-Po', 'MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, Xvid', 'Lossless, MP3, WAV, WMA, eAAC+', 'Có', 'Không', 'Mở khóa bằng vân tay'),
(18, 1, 1, 2, 5, 'Samsung Galaxy Core Prime G361', 2090000, 5, '', '<ul>\r\n	<li>Bộ sản phẩm gồm:&nbsp;<a href="javascript:void(0)">Hộp, Pin, Sạc, Tai nghe, S&aacute;ch hướng dẫn, C&aacute;p&nbsp;</a></li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: th&acirc;n m&aacute;y 12 th&aacute;ng, pin 12 th&aacute;ng, sạc 6 th&aacute;ng&nbsp;</li>\r\n	<li><strong>1 đổi 1 trong 1 th&aacute;ng&nbsp;</strong>với sản phẩm lỗi</li>\r\n</ul>\r\n', '<p>- Mua sim Vina B&ugrave;m 50 gi&aacute; chỉ từ 75.000đ: Miễn ph&iacute; 10 ph&uacute;t đầu cho tất cả cuộc gọi nội mạng Vinaphone &amp; điện thoại cố định VNPT + 30 ph&uacute;t ngoại mạng, 1,5GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n) .</p>\r\n\r\n<p>-&nbsp;Mua sim Vina B&ugrave;m gi&aacute; chỉ 120.000đ: Miễn ph&iacute; internet v&agrave; nghe trong 1 năm(1.2GB/th&aacute;ng), miễn ph&iacute; 360 tin nhắn + 360 ph&uacute;t gọi nội mạng</p>\r\n\r\n<p>-&nbsp;Mua sim Mobi Big gi&aacute; chỉ từ 75.000đ: Mỗi th&aacute;ng tặng 1000 ph&uacute;t gọi nội mạng + 30 ph&uacute;t gọi ngoại mạng, 1GB data tốc độ cao (Ph&iacute; duy tr&igrave;: 50.000đ/th&aacute;ng, miễn ph&iacute; th&aacute;ng đầu ti&ecirc;n)</p>\r\n', 0, 'TFT', '480 x 800 pixels', '4.5"', 'Cảm ứng điện dung đa điểm', 'Kính thường', '5 MP', 'Quay phim HD 720p@30fps', 'Có', 'Tự động lấy nét, Nhận diện khuôn mặt', '2 MP', 'Có', 'Có', 'Không', 5, 'Spreadtrum 4 nhân', '1.2 GHz', 'Mali-400MP', '1 GB', '8 GB', '4.8 GB', 'MicroSD', '64 GB', 'GSM 850/900/1800/1900', 'HSDPA 850/900/1900/2100', 'Không hỗ trợ 4G', '2 SIM 2 sóng', 'Micro SIM', 'Wi-Fi 802.11 b/g/n, Wi-Fi Direct, Wi-Fi hotspot', 'A-GPS, GLONASS', 'V4.0, A2DP', 'Không', 'Micro USB', '3.5 mm', 'Không', 'Pin rời', 'Nhựa', 'Dài 130.8 mm - Rộng 67.9 mm - Dày 8.8 mm', '130 g', '2000 mAh', 'Pin chuẩn Li-Ion', 'MP4, H.264(MPEG4-AVC)', 'eAAC+, FLAC', 'Có', 'Có', 'Không');

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_color`
--

INSERT INTO `product_color` (`id`, `product_id`, `color_id`) VALUES
(4, 3, 2),
(5, 3, 7),
(6, 3, 1),
(7, 5, 9),
(8, 5, 8),
(9, 1, 1),
(10, 1, 7),
(11, 4, 1),
(12, 4, 7),
(13, 5, 4),
(14, 5, 8),
(15, 6, 10),
(16, 7, 7),
(17, 7, 9),
(18, 8, 7),
(19, 9, 6),
(20, 10, 10),
(21, 11, 8),
(22, 11, 1),
(23, 12, 9),
(24, 12, 1),
(25, 13, 8),
(26, 14, 1),
(27, 14, 7),
(28, 15, 10),
(29, 16, 9),
(30, 16, 7),
(31, 17, 7),
(32, 17, 5),
(33, 18, 1),
(34, 18, 7),
(35, 18, 9);

-- --------------------------------------------------------

--
-- Table structure for table `screen_level`
--

CREATE TABLE `screen_level` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `screen_level`
--

INSERT INTO `screen_level` (`id`, `name`) VALUES
(1, 'Dười 3"'),
(2, 'Khoảng 4"'),
(3, 'Khoảng 5"'),
(4, 'Khoảng 6"');

-- --------------------------------------------------------

--
-- Table structure for table `technology_infor`
--

CREATE TABLE `technology_infor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `image` text COLLATE utf8_bin NOT NULL,
  `description` varchar(1000) COLLATE utf8_bin NOT NULL,
  `main_description` text COLLATE utf8_bin NOT NULL,
  `tech_infor_category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `technology_infor`
--

INSERT INTO `technology_infor` (`id`, `name`, `image`, `description`, `main_description`, `tech_infor_category_id`, `product_id`) VALUES
(1, 'Nhiều tùy chỉnh tiện ích hơn ở cạnh viền cùng vi xử lý mạnh mẽ, tính năng độc đáo, màn hình to mang lại không gian giải trí và làm việc tối ưu nhất.', 'S7techImage.jpg', 'Nhờ đạt chuẩn IP68 nên hoàn toàn có thể bảo vệ được tốt cho Galaxy S7 Edge khi vô tình dính nước mưa hay làm đổ nước, cho bạn thêm an tâm trong quá trình sử dụng.', '<p><strong>Khả năng chống nước, chống bụi an to&agrave;n cho m&aacute;y</strong></p>\r\n\r\n<p>Nhờ đạt chuẩn IP68 n&ecirc;n&nbsp;ho&agrave;n to&agrave;n c&oacute; thể bảo vệ được tốt cho&nbsp;Galaxy S7 Edge khi v&ocirc; t&igrave;nh d&iacute;nh nước mưa hay l&agrave;m đổ nước, cho bạn th&ecirc;m an t&acirc;m trong qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p><em>M&aacute;y thật sự an to&agrave;n khi v&ocirc; t&igrave;nh rớt v&agrave;o nước hay đi dưới mưa</em></p>\r\n\r\n<p><img alt="" src="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge-24.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Một t&iacute;nh năng thật sự l&agrave; điểm s&aacute;ng mới tr&ecirc;n c&aacute;c d&ograve;ng cao cấp của Samsung so với đối thủ</em></p>\r\n\r\n<p><strong>Rất nhiều cải tiến cho cạnh viền</strong></p>\r\n\r\n<p><img alt="" src="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge-15.jpg" /></p>\r\n\r\n<p><em>C&aacute;c t&aacute;c vụ nhanh hiển thị nhiều hơn trong 1 lần vuốt v&agrave; bạn c&oacute; thể gắn tới 20 t&aacute;c vụ nhanh tr&ecirc;n n&agrave;y</em></p>\r\n\r\n<p><img alt="" src="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge-5.jpg" /></p>\r\n\r\n<p><em>T&ugrave;y chỉnh th&ecirc;m nhiều cột trong cạnh viền m&agrave;n h&igrave;nh</em></p>\r\n\r\n<p><strong>Thiết kế cong ho&agrave;n hảo</strong></p>\r\n\r\n<p><img alt="" src="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge1-1.jpg" /></p>\r\n\r\n<p><em>C&aacute;c chi tiết tr&ecirc;n m&aacute;y đều được ho&agrave;n thiện một c&aacute;ch tỉ mỉ v&agrave; tinh tế nhất</em></p>\r\n\r\n<p><img alt="" src="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge-17.jpg" /></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh lớn hơn mang lại kh&ocirc;ng gian giải tr&iacute; v&agrave; l&agrave;m việc thoải m&aacute;i hơn, tuy nhi&ecirc;n mặt lưng bằng k&iacute;nh lại kh&aacute; dễ b&aacute;m v&acirc;n tay</em></p>\r\n\r\n<p><strong>Camera tuyệt vời</strong></p>\r\n\r\n<p>Giảm từ độ ph&acirc;n giải 16 MP tr&ecirc;n&nbsp;<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s6-edge" target="_blank" title="Điện thoại Samsung Galaxy S6 Edge">S6 Edge</a>&nbsp;xuống 12 MP nhưng Galaxy S7 Edge được trang bị c&ocirc;ng nghệ Dual Pixel gi&uacute;p b&ugrave; s&aacute;ng rất tốt trong những điều kiện chụp ảnh thiếu s&aacute;ng.</p>\r\n\r\n<p><img alt="" src="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge11.jpg" /></p>\r\n\r\n<p style="text-align:center"><em>Nhiều chế độ chụp ảnh cho bạn lựa chọn</em></p>\r\n\r\n<p><img alt="" src="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge-8.jpg" /></p>\r\n\r\n<p style="text-align:center"><em>Ảnh chụp của Galaxy S7 Edge (Ảnh:&nbsp;<a href="https://www.thegioididong.com/tin-tuc/ca-nhan/1004065202/trang-1" target="_blank" title="Thông tin người dùng">Nghĩa Trần</a>)</em></p>\r\n\r\n<p><img alt="" src="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge-21.jpg" /></p>\r\n\r\n<p style="text-align:center"><em>M&agrave;u sắc được t&aacute;i tạo lại rất tốt</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 2, 16),
(2, 'iPhone 6s Plus là phiên bản nâng cấp hoàn hảo từ iPhone 6 Plus với nhiều tính năng mới hấp dẫn.', '111.jpg', 'Phone 6s Plus được nâng cấp độ phân giải camera sau lên 12 MP (thay vì 8 MP như trên iPhone 6 Plus), camera cho tốc độ lấy nét và chụp nhanh, thao tác chạm để chụp nhẹ nhàng. Chất lượng ảnh trong các điều kiện chụp khác nhau tốt.', '<p><strong>Camera được cải tiến</strong></p>\r\n\r\n<p>iPhone 6s Plus được n&acirc;ng cấp độ ph&acirc;n giải camera sau l&ecirc;n 12 MP (thay v&igrave; 8 MP như tr&ecirc;n<a href="https://www.thegioididong.com/dtdd/iphone-6-plus-64gb" target="_blank" title="Thông tin điện thoại iPhone 6 Plus 64GB">iPhone 6 Plus</a>), camera cho tốc độ lấy n&eacute;t v&agrave; chụp nhanh, thao t&aacute;c chạm để chụp nhẹ nh&agrave;ng. Chất lượng ảnh trong c&aacute;c điều kiện chụp kh&aacute;c nhau tốt.</p>\r\n\r\n<p><strong>Th&iacute;ch th&uacute; hơn với m&agrave;n h&igrave;nh rộng</strong></p>\r\n\r\n<p>M&agrave;n h&igrave;nh lớn c&ugrave;ng&nbsp;m&agrave;u sắc tươi tắn, độ n&eacute;t cao&nbsp;sẽ mang đến nhiều&nbsp;th&iacute;ch th&uacute; khi lướt web, xem phim hay l&agrave;m việc.</p>\r\n\r\n<p><img alt="" src="https://www.thegioididong.com/images/42/73704/iphone-6s-plus-64gb7.jpg" /></p>\r\n\r\n<p style="text-align:center"><em>M&agrave;n h&igrave;nh lớn 5.5 inch thoải m&aacute;i để l&agrave;m việc v&agrave; giải tr&iacute;</em></p>\r\n\r\n<p><strong>Sức mạnh của bộ vi xử l&yacute; A9 mới nhất</strong></p>\r\n\r\n<p>Vi&ecirc;n pin chỉ c&oacute; dung lượng 2715 mAh kh&aacute; thấp so với c&aacute;c sản phẩm c&ugrave;ng ph&acirc;n kh&uacute;c kh&aacute;c, tuy nhi&ecirc;n bạn vẫn c&oacute; thể an t&acirc;m sử dụng m&aacute;y trong một ng&agrave;y.</p>\r\n\r\n<p><img alt="" src="https://www.thegioididong.com/images/42/73704/iphone-6s-plus-64gb6-1.jpg" /></p>\r\n\r\n<p style="text-align:center"><em>Camera iPhone 6s Plus vẫn lồi nhưng kh&ocirc;ng phải l&agrave; điều đ&aacute;ng lo ngại</em></p>\r\n\r\n<p>Ngo&agrave;i ra iPhone 6s Plus c&ograve;n được trang bị c&aacute;c c&ocirc;ng nghệ ti&ecirc;n tiến nhất hiện nay như: Wifi chuẩn dual-band v&agrave; t&iacute;nh năng kết nối 4G thời thượng, cho tốc độ kết nối v&agrave; tải dữ liệu rất nhanh,&nbsp;cảm biến v&acirc;n tay cải tiến để nhận diện v&agrave; mở kh&oacute;a nhanh hơn.</p>\r\n\r\n<p>Một chiếc điện thoại vừa thể hiện đẳng cấp của bạn vừa mang lại những n&acirc;ng cấp tốt hơn như camera, hiệu năng hoạt động mạnh mẽ hơn, t&iacute;nh năng 3D Touch độc đ&aacute;o, tất cả sẽ l&agrave; trải nghiệm mới mẻ cho bạn khi chọn mua iPhone 6s Plus.</p>\r\n', 2, 1),
(4, 'Đánh giá Galaxy S7 Edge: Kiệt tác hoàn hảo nhất của Samsung!', 's7tech.jpg', 'Năm ngoái, Samsung thực sự tạo ra một bước đột phá lớn khi ra mắt Galaxy S6 Edge với màn hình cong hai bên vô cùng độc đáo, khiến bao người muốn sở hữu. Tuy nhiên, S6 Edge lại khiến không ít người dùng tiếc nuối khi còn tồn tại một vài điểm yếu như thiếu khe cắm thẻ nhớ hay khả năng chống nước,... Giờ đây, Samsung đã trình làng Galaxy S7 Edge để kế thừa những ưu điểm và hoàn thiện gần như tất cả các khuyết điểm trên S6 Edge để trở thành sản phẩm hoàn hảo nhất của hãng từ trước tới nay.', '<p>Đ&aacute;nh gi&aacute; chung:</p>\r\n\r\n<ul>\r\n	<li>Thiết kế: S7 Edge c&oacute; thiết kế sang trọng v&agrave; quyến rũ, cho cảm gi&aacute;c cầm nắm tốt hơn so với người tiền nhiệm</li>\r\n	<li>Cấu h&igrave;nh: S7 Edge sở hữu con chip Exynos 8890 c&ugrave;ng với 4 GB RAM n&ecirc;n m&aacute;y cho hiệu năng rất tốt, từ c&aacute;c t&aacute;c vụ cơ bản của người d&ugrave;ng đến c&aacute;c game nặng m&aacute;y đều xử l&yacute; một c&aacute;ch mượt m&agrave;</li>\r\n	<li>Phần mềm: S7 Edge được c&agrave;i sẵn hệ điều h&agrave;nh Android 6.0&nbsp;với giao diện t&ugrave;y biến TouchWiz đặc trưng của Samsung. B&ecirc;n cạnh đ&oacute;, m&aacute;y c&ograve;n được trang bị một v&agrave;i t&iacute;nh năng đặc biệt như Game Laucher, Game Tool, hay m&agrave;n h&igrave;nh cong tr&ecirc;n S7 Edge giờ đ&acirc;y đ&atilde; c&oacute; thể sử dụng Apps do c&aacute;c lập tr&igrave;nh b&ecirc;n thứ 3 viết.</li>\r\n	<li>Camera: Ảnh chụp từ S7 Edge c&oacute; chất lượng rất tốt, m&agrave;u sắc trung thực</li>\r\n	<li>Pin: Sở hữu vi&ecirc;n pin 3.600 mAh gi&uacute;p Galaxy S7 Edge cho thời lượng sử dụng ấn tượng.</li>\r\n</ul>\r\n\r\n<p><strong>Thiết kế: Sang trọng, tinh tế v&agrave; đem lại cảm gi&aacute;c cầm nắm tốt hơn</strong></p>\r\n\r\n<p><strong><img alt="" src="https://cdn.tgdd.vn/Files/2016/03/22/805963/galaxys7edge17.jpg" style="height:506px; width:900px" /></strong>Thiết kế &quot;vũ như cẩn&quot; so với Galaxy S6 Edge l&agrave; c&acirc;u trả lời m&igrave;nh nhận được kh&aacute; nhiều khi hỏi về thiết kế của S7 Edge. Tuy nhi&ecirc;n, khi bạn cầm tr&ecirc;n tay cả hai m&aacute;y mới thấy Samsung đ&atilde; c&oacute; những cải tiến kh&ocirc;ng hề nhỏ về thiết kế tr&ecirc;n sản phẩm mới nhất của m&igrave;nh. Một trong những cải tiến đ&aacute;ng gi&aacute; tr&ecirc;n S7 Edge ch&iacute;nh l&agrave; khả năng cầm nắm, khi S6 Edge bị kh&aacute; nhiều người d&ugrave;ng ph&agrave;n n&agrave;n về t&igrave;nh trạng cấn tay th&igrave; nay S7 Edge đ&atilde; cải thiện được vấn đề n&agrave;y.</p>\r\n\r\n<p><img alt="" src="https://cdn2.tgdd.vn/Files/2016/03/22/805963/s7edge17.jpg" style="height:506px; width:900px" /></p>\r\n\r\n<p>Samsung đ&atilde; thiết kế&nbsp;phần mặt lưng của m&aacute;y v&aacute;t cong về hai ph&iacute;a so với mặt lưng S6 Edge l&agrave;m phẳng ho&agrave;n to&agrave;n, mặt kh&aacute;c S7 Edge c&oacute; m&agrave;n h&igrave;nh cong s&aacute;t tới m&eacute;p khung viền chứ kh&ocirc;ng nh&ocirc; l&ecirc;n như thế hệ cũ. Ngo&agrave;i ra, d&ugrave; c&oacute; k&iacute;ch thước 5,5 inch nhưng nhờ được h&atilde;ng tối ưu tốt về thiết kế n&ecirc;n trong S7 Edge thon gọn hơn kh&aacute; nhiều so với một số m&aacute;y kh&aacute;c m&igrave;nh từng sử dụng qua như chiếc Xperia Z5 Premium.</p>\r\n\r\n<p>Để c&oacute; c&aacute;i nh&igrave;n r&otilde; hơn, mời c&aacute;c bạn theo d&otilde;i b&agrave;i đ&aacute;nh gi&aacute; thiết kế của m&igrave;nh về Galaxy S7 Edge :</p>\r\n\r\n<ul>\r\n	<li><a href="https://www.thegioididong.com/tin-tuc/danh-gia-thiet-ke-galaxy-s7-edge-cai-tien-de-hoan-hao-hon--798973" target="_blank" title="Đánh giá thiết kế Galaxy S7 Edge: Cải tiến để hoàn hảo hơn!" type="Đánh giá thiết kế Galaxy S7 Edge: Cải tiến để hoàn hảo hơn!">Đ&aacute;nh gi&aacute; thiết kế Galaxy S7 Edge: Cải tiến để ho&agrave;n hảo hơn</a></li>\r\n</ul>\r\n\r\n<p>Năm nay, Samsung đ&atilde; mang t&iacute;nh năng chống nước chống bụi ti&ecirc;u chuẩn IP68 trở lại tr&ecirc;n S7 Edge, m&igrave;nh c&oacute; test thử t&iacute;nh năng n&agrave;y v&agrave; thấy hoạt động kh&aacute; tốt (m&igrave;nh kh&ocirc;ng khuyến nghị c&aacute;c bạn l&agrave;m theo v&igrave; c&oacute; thể l&agrave;m m&aacute;y chết v&agrave; kh&ocirc;ng được bảo h&agrave;nh trong một số trường hợp).</p>\r\n\r\n<p style="text-align:center"><img alt="" src="https://cdn1.tgdd.vn/Files/2016/03/22/805963/s7edge10.jpg" style="height:506px; width:900px" /><img alt="" src="https://cdn2.tgdd.vn/Files/2016/03/22/805963/s7edge12.jpg" style="height:506px; width:900px" /><img alt="" src="https://cdn3.tgdd.vn/Files/2016/03/22/805963/s7edge15.jpg" style="height:506px; width:900px" /><img alt="" src="https://cdn4.tgdd.vn/Files/2016/03/22/805963/s7edge16.jpg" style="height:506px; width:900px" /><img alt="" src="https://cdn.tgdd.vn/Files/2016/03/22/805963/galaxys7edge1.jpg" style="height:506px; width:900px" /><img alt="" src="https://cdn1.tgdd.vn/Files/2016/03/22/805963/galaxys7edge2.jpg" style="height:506px; width:900px" /><img alt="" src="https://cdn2.tgdd.vn/Files/2016/03/22/805963/s7edge18.jpg" style="height:506px; width:900px" /><strong>Pin v&agrave; sạc: S7 Edge cho thời lượng sử dụng pin ấn tượng</strong></p>\r\n\r\n<p><strong><img alt="" src="https://cdn3.tgdd.vn/Files/2016/03/22/805963/s7edge2.jpg" style="height:506px; width:900px" /></strong></p>\r\n\r\n<p>Galaxy S7 Edge được trang bị vi&ecirc;n pin 3.600 mAh, tăng đến 1.000 mAh so với S6 Edge. M&igrave;nh c&oacute; l&agrave;m một b&agrave;i test về mức độ ti&ecirc;u thụ năng lượng tr&ecirc;n S7 Edge, dưới đ&acirc;y l&agrave; b&agrave;i test của m&igrave;nh:</p>\r\n\r\n<p>Quy tr&igrave;nh thử nghiệm:</p>\r\n\r\n<ul>\r\n	<li>C&aacute;c t&aacute;c vụ thực hiện: Lướt web, xem phim bằng chrome, Facebook, Youtube, Chơi game Alphast 8</li>\r\n	<li>Qu&aacute; tr&igrave;nh standby vẫn bật 3G để nhận th&ocirc;ng b&aacute;o Facebook, Messenger, Mail</li>\r\n	<li>Xem phim online định dạng Full HD&nbsp;</li>\r\n	<li>Video Youtube với định dạng 2K&nbsp;</li>\r\n	<li>Độ s&aacute;ng m&agrave;n h&igrave;nh lu&ocirc;n để 50%</li>\r\n</ul>\r\n', 2, 1),
(5, 'Đọ tốc độ, loa, điểm sức mạnh của tất cả các đời iPhone', 'tinnhanh1.jpg', 'Có tất cả 13 chiếc iPhone sẽ được thử nghiệm trong video này, từ iPhone 2G, iPhone 3G cho đến iPhone 6s Plus và cả iPhone SE. Để xem tốc độ mở máy, tốc độ wifi, điểm chuẩn sức mạnh… ai sẽ là người chiến thắng nhé?  Xem thêm: 12 mẹo giúp iPhone của bạn chạy nhanh như mới  Ngày 9/1 năm sau sẽ là kỷ niệm 10 năm ngày iPhone đầu tiên ra đời và cho đến nay, Apple đã “hái ra tiền” nhờ vào chiếc di động mang tính đột phá này. Các thế hệ sau càng ngày càng được nâng cấp về phần cứng, mạnh mẽ hơn, pin lâu hơn, đồ họa tốt hơn, màn hình lớn, sắc nét hơn…', '<p>Trong thử nghiệm điểm chuẩn Geekbench, iPhone SE đạt điểm cao nhất với 2.550 điểm đơn l&otilde;i v&agrave; 4.445 điểm đa l&otilde;i. Trong thử nhiệm &acirc;m thanh, iPhone SE cũng c&oacute; loa to nhất, trong khi iPhone 4s nghe nhỏ nhất.</p>\r\n\r\n<p>Về độ n&oacute;ng,&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-6" target="_blank" title="iPhone 6 ">iPhone 6</a>&nbsp;v&agrave; 6 Plus chạy n&oacute;ng nhất với 107 độ F (khoảng gần 42 độ C). C&oacute; vẻ như trong c&aacute;c thử nghiệm n&agrave;y, iPhone SE đều tốt nhất. Nếu bạn đang nhăm nhe chiếc iPhone n&agrave;y th&igrave; đặt mua đi nh&eacute;, chi tiết đặt mua&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-se-16gb" target="_blank" title="iPhone SE">tại đ&acirc;y</a>.</p>\r\n', 1, 1),
(6, '6 ứng dụng phát huy hiệu quả 3D Touch trên bộ đôi iPhone 6s', 'meohay1.jpg', 'Live Photo và 3D Touch là 2 điểm mới nổi bật trên bộ đôi iPhone 6s, 6s Plus Apple trình làng năm ngoái. Nếu bạn đang sỡ hữu hai chiếc máy này thì 6 ứng dụng dưới đây sẽ giúp phát huy tối đa 2 tính năng trên.', '<h3><strong>1.&nbsp;<a href="http://itunes.apple.com/us/app/live-gif/id1044506498?mt=8" rel="nofollow" target="_blank" title="Live Gif" type="Live Gif">Live Gif</a></strong></h3>\r\n\r\n<p><strong><img alt="" src="https://cdn2.tgdd.vn/Files/2016/05/07/825754/livephoto.jpg" style="height:566px; width:600px" /></strong></p>\r\n\r\n<p>Live Photo l&agrave; t&iacute;nh năng rất tuyệt vời tr&ecirc;n iPhone 6s v&agrave; 6s Plus, nhưng bạn kh&ocirc;ng thể chia sẻ bức ảnh Live Photo với bạn b&egrave; trừ khi họ cũng sử dụng cặp đ&ocirc;i iPhone n&agrave;y. Với ứng dụng Live Gif, bạn c&oacute; thể nhanh ch&oacute;ng share bất cứ h&igrave;nh ảnh dạng Live Photo n&agrave;o th&agrave;nh ảnh Gif hoặc một video để c&oacute; thể xem được tr&ecirc;n c&aacute;c thiết bị iPhone kh&aacute;c. Ngo&agrave;i ra th&igrave; ứng dụng n&agrave;y c&ograve;n hỗ trợ c&aacute;c bạn chia sẽ ảnh Gif qua Facebook hoặc Twitter.</p>\r\n\r\n<h3><strong>2.&nbsp;<a href="http://itunes.apple.com/us/app/lean-clean-up-your-live-photos/id1051075379?mt=8" rel="nofollow" target="_blank" title="Lean" type="Lean">Lean</a></strong></h3>\r\n\r\n<p><strong><img alt="" src="https://cdn4.tgdd.vn/Files/2016/05/07/825754/lean.jpg" style="height:544px; width:600px" /></strong></p>\r\n\r\n<p>Với t&iacute;nh năng Live Photo, bức ảnh chụp ra sẽ c&oacute; dung lượng cao cấp đ&ocirc;i th&ocirc;ng thường, cộng với việc kh&ocirc;ng thể mở rộng bộ nhớ của iPhone th&igrave; đ&uacute;ng l&agrave; một vấn đề đ&aacute;ng lo ngại. Đừng lo, ứng dụng Lean sẽ gi&uacute;p ch&uacute;ng ta giải quyết điều đ&oacute;. Lean cho ph&eacute;p bạn xo&aacute; phần &quot;live&quot; trong Live Photo, nhưng vẫn giữ lại to&agrave;n bộ th&ocirc;ng tin của bức ảnh gốc, phần video bị xo&aacute; sẽ kh&ocirc;ng c&ograve;n l&agrave;m tốn kh&ocirc;ng gian lưu trữ của bạn nữa.</p>\r\n\r\n<h3><strong>3.&nbsp;<a href="http://itunes.apple.com/us/app/replay-video-editor-make-movie/id694164275?mt=8&amp;ign-mpt=uo%3D8" rel="nofollow" target="_blank" title="Replay" type="Replay">Replay</a></strong></h3>\r\n\r\n<p><strong><img alt="" src="https://cdn1.tgdd.vn/Files/2016/05/07/825754/replay.jpg" style="height:539px; width:600px" /></strong></p>\r\n\r\n<p>Replay l&agrave; ứng dụng kh&ocirc;ng thể thiếu đối với c&aacute;c bạn c&oacute; sở th&iacute;ch gh&eacute;p c&aacute;c h&igrave;nh ảnh th&agrave;nh một video với hiệu ứng đẹp mắt v&agrave; nhạc nền sống động. Phần mềm n&agrave;y c&oacute; sẵn 28 kiểu giao diện, h&igrave;nh ảnh, nhạc nền... để bạn chọn lựa. B&ecirc;n cạnh việc hỗ trợ 3D Touch khiến việc thao t&aacute;c hay tr&igrave;nh chiếu c&aacute;c video tạo th&agrave;nh từ ứng dụng n&agrave;y th&ecirc;m dễ d&agrave;ng v&agrave; th&uacute; vị.</p>\r\n\r\n<h3><strong>4.&nbsp;<a href="http://itunes.apple.com/us/app/hipster-camera-for-hipstamatic/id730860927?mt=8" rel="nofollow" target="_blank" title="Hipster Camera" type="Hipster Camera">Hipster Camera</a></strong></h3>\r\n\r\n<p><strong><img alt="" src="https://cdn3.tgdd.vn/Files/2016/05/07/825754/hip.jpg" style="height:639px; width:600px" /></strong></p>\r\n\r\n<p>Hipster camera l&agrave; một ứng dụng chụp ảnh rất nổi tiếng. Đ&acirc;y l&agrave; ứng dụng gi&uacute;p tạo n&ecirc;n những bức ảnh vu&ocirc;ng với nhiều bộ lọc rất đẹp. B&ecirc;n cạnh đ&oacute;, Hipster c&ograve;n hỗ trợ 3D Touch, ch&uacute;ng ta c&oacute; thể chạm nhẹ v&agrave;o ảnh nhỏ để xem lớn hơn hoặc nhấn mạnh v&agrave;o một ch&uacute;t để bắt đầu chỉnh sửa. Ngo&agrave;i ra, bạn cũng c&oacute; thể truy cập nhanh nhiều lối tắt bằng biểu tượng ngo&agrave;i m&agrave;n h&igrave;nh.</p>\r\n\r\n<h3><strong>5.&nbsp;<a href="http://itunes.apple.com/us/app/news360-your-personalized/id420397564?mt=8" rel="nofollow" target="_blank" title="News360" type="News360">News 360</a></strong></h3>\r\n\r\n<p><strong><img alt="" src="https://cdn.tgdd.vn/Files/2016/05/07/825754/news.jpg" style="height:535px; width:600px" /></strong></p>\r\n\r\n<p>News 360 l&agrave; ứng dụng cung cấp tin tức nổi tiếng từ nhiều nguồn v&agrave; giờ cũng hỗ trợ t&iacute;nh năng 3D Touch. Tr&ecirc;n ti&ecirc;u đề một b&agrave;i b&aacute;o, bạn chỉ cần trượt ng&oacute;n tay để chia sẻ hoặc lưu trữ hoặc đơn giản nhấn mạnh để mở ra.</p>\r\n\r\n<h3><strong>6.&nbsp;<a href="http://itunes.apple.com/us/app/evernote-capture-notes-sync/id281796108?mt=8&amp;ign-mpt=uo%3D2" rel="nofollow" target="_blank" title="Evernote" type="Evernote">Evernote</a></strong></h3>\r\n\r\n<p><strong><img alt="" src="https://cdn2.tgdd.vn/Files/2016/05/07/825754/evernote.jpg" style="height:533px; width:600px" /></strong></p>\r\n\r\n<p>Đ&acirc;y l&agrave; ứng dụng ghi ch&uacute; quen thuộc v&agrave; nổi tiếng tr&ecirc;n to&agrave;n thế giới. Hiện nay, Evernote đ&atilde; hổ trợ t&iacute;nh năng 3D Touch cho ph&eacute;p c&aacute;c bạn c&oacute; thể thực hiện c&aacute;c thao t&aacute;c như: Tạo ghi ch&uacute; mới, chụp ảnh, xem trước c&aacute;c đoạn ghi ch&uacute; ngay tại m&agrave;n h&igrave;nh home rất nhanh ch&oacute;ng.</p>\r\n', 4, 1),
(7, 'Apple iPhone 6s Plus và Sony Xperia Z5 Premium Dual: Siêu phẩm nào sang hơn?', 'tech1.jpg', 'Sony Xperia Z5 Premium Dual là phiên bản có màn hình 4K của dòng sản phẩm Z5. Apple iPhone 6s Plus là bản nâng cấp rất được mong đợi của dòng máy iPhone 6 Plus. Cả hai đều là những chiếc điện thoại cao cấp nhất của hai hãng điện thoại danh tiếng, vậy hãy cùng chúng tôi điểm qua những điểm thú vị của 2 siêu phẩm này. ', '<p><strong>Thiết kế ấn tượng</strong></p>\r\n\r\n<p><strong><img alt="" src="https://cdn1.tgdd.vn/Files/2016/02/15/787124/iphone-6s-plus-va-sony-xperia-z5-premium3.jpg" style="height:506px; width:900px" /><img alt="" src="https://cdn2.tgdd.vn/Files/2016/02/15/787124/iphone-6s-plus-va-sony-xperia-z5-premium4.jpg" style="height:506px; width:900px" /><img alt="" src="https://cdn3.tgdd.vn/Files/2016/02/15/787124/iphone-6s-plus-z5-premium6.jpg" style="height:506px; width:900px" /><img alt="" src="https://cdn4.tgdd.vn/Files/2016/02/15/787124/iphone-6s-plus-z5-premium7.jpg" style="height:506px; width:900px" /><img alt="" src="https://cdn.tgdd.vn/Files/2016/02/15/787124/iphone-6s-plus-va-sony-xperia-z5-premium5.jpg" style="height:506px; width:900px" /><img alt="" src="https://cdn1.tgdd.vn/Files/2016/02/15/787124/iphone-6s-plus-z5-premium10.jpg" style="height:506px; width:900px" /><img alt="" src="https://cdn2.tgdd.vn/Files/2016/02/15/787124/iphone-6s-plus-va-sony-xperia-z5-premium6.jpg" style="height:506px; width:900px" /><img alt="" src="https://cdn3.tgdd.vn/Files/2016/02/15/787124/iphone-6s-plus-va-sony-xperia-z5-premium7.jpg" style="height:506px; width:900px" /><img alt="" src="https://cdn4.tgdd.vn/Files/2016/02/15/787124/iphone-6s-plus-va-sony-xperia-z5-premium8.jpg" style="height:506px; width:900px" /><img alt="" src="https://cdn.tgdd.vn/Files/2016/02/15/787124/iphone-6s-plus-va-sony-xperia-z5-premium11.jpg" style="height:506px; width:900px" />Tổng kết</strong></p>\r\n\r\n<p>Đều l&agrave; những si&ecirc;u phẩm của năm 2015, Z5 Premium v&agrave; 6s Plus mang lại cho người d&ugrave;ng những trải nghiệm th&uacute; vị v&agrave; tuyệt vời. D&ugrave; mang tiếng c&oacute; m&agrave;n h&igrave;nh 4K nhưng Z5 Premium chưa thật sự vượt trội hơn so với đối thủ về mặt hiển thị v&igrave; độ ph&acirc;n giải thực tế của m&aacute;y cũng chỉ dừng lại ở mức Full HD. 6s Plus về mặt thiết kế th&igrave; cũng chưa nổi bật, đặc biệt khi được đặt b&ecirc;n cạnh một si&ecirc;u phẩm thiết kế như Z5 Premium th&igrave; vẻ b&oacute;ng bẩy v&agrave; lịch l&atilde;m của Z5 c&oacute; vẻ lấn lướt 6s Plus. C&ograve;n bạn, bạn y&ecirc;u th&iacute;ch chiếc điện thoại n&agrave;o hơn?</p>\r\n\r\n<p>&nbsp;</p>\r\n', 2, 1),
(8, '6 nguyên nhân vì sao iPhone 6s Plus là chiếc iPhone tốt nhất từ trước tới nay', 'tintuc2.jpg', 'Bộ đôi iPhone 6s/6s Plus đã chính thức lên kệ tại thị trường Việt Nam và chỉ trong ngày đầu tiên, hàng ngàn chiếc đã được giao cho khách hàng. Và dưới đây là 6 nguyên nhân vì sao coi iPhone 6s Plus là chiếc iPhone tốt nhất từ trước tới nay.', '<p style="text-align: justify;"><img alt="" src="https://cdn2.tgdd.vn/Files/2015/11/08/735704/apple-iphone-6s-f2.jpg" style="height:600px; width:900px" />iPhone 6s Plus l&agrave; chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone" target="_blank" title="iPhone" type="iPhone">iPhone</a>&nbsp;rất được nhiều người mong đợi, t&igrave;m kiếm v&agrave; muốn sở hữu. Kh&ocirc;ng phải v&igrave; n&oacute; lớn hơn, v&igrave; n&oacute; mới nhất m&agrave; c&ograve;n v&igrave; rất nhiều nguy&ecirc;n nh&acirc;n kh&aacute;c. Tất nhi&ecirc;n, sản phẩm n&agrave;o cũng vậy, c&oacute; ưu v&agrave; c&oacute; nhược điểm, nhưng b&acirc;y giờ ch&uacute;ng ta h&atilde;y xem x&eacute;t 6 l&yacute; do khiến nhiều người đ&aacute;nh gi&aacute; rằng đ&acirc;y l&agrave; chiếc iPhone tốt nhất m&agrave; Apple từng sản xuất.</p>\r\n\r\n<p style="text-align: justify;"><strong>1. Thời lượng pin</strong></p>\r\n\r\n<p style="text-align: justify;">Thời lượng sử dụng ch&iacute;nh l&agrave; điều m&agrave; người d&ugrave;ng thường lo lắng nhất khi trải nghiệm c&aacute;c sản phẩm bởi nếu hết pin, chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="smartphone " type="smartphone ">smartphone</a>&nbsp;coi như th&agrave;nh &#39;cục gạch&#39;. C&aacute;c thế hệ iPhone trước bị coi l&agrave; k&eacute;m về thời lượng pin tuy nhi&ecirc;n với iPhone 6s Plus, n&oacute; đ&atilde; kh&aacute;c.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn1.tgdd.vn/Files/2015/11/08/735704/apple-iphone-6s-1.jpg" style="height:506px; width:900px" />iPhone 6s Plus c&oacute; thể d&ugrave;ng li&ecirc;n tục trong 9 giờ 11 ph&uacute;t, một mức gần ngang ngửa với&nbsp;<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-note-5" target="_blank" title="Galaxy Note 5 " type="Galaxy Note 5 ">Galaxy Note 5</a>&nbsp;của Samsung. iPhone 6s cũng l&agrave;m rất tốt điều n&agrave;y với thời lượng pin 8 giờ 15 ph&uacute;t. Để so s&aacute;nh,&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-6" target="_blank" title="iPhone 6" type="iPhone 6">iPhone 6</a>&nbsp;tiền nhiệm chỉ đạt 5 giờ 22 ph&uacute;t, iPhone 6 Plus chỉ đạt 6 giờ 32 ph&uacute;t.</p>\r\n\r\n<p style="text-align: justify;"><strong>2. Chip Apple A9</strong></p>\r\n\r\n<p style="text-align: justify;"><strong><img alt="" src="https://cdn4.tgdd.vn/Files/2015/11/08/735704/apple-iphone-6s-2.jpg" style="height:545px; width:900px" /></strong>Mặc d&ugrave; phải cạnh tranh rất nhiều với c&aacute;c smartphone cao cấp chạy Android tuy nhi&ecirc;n Apple A9 vẫn đứng trong top đầu những d&ograve;ng chip di động mạnh nhất. Đặc biệt l&agrave; trong hiệu suất đơn l&otilde;i, hiện n&oacute; vẫn chưa bị ai qua mặt. Tất nhi&ecirc;n, n&oacute; cũng l&agrave; d&ograve;ng chip mạnh nhất trong c&aacute;c thế hệ iPhone.</p>\r\n\r\n<p style="text-align: justify;"><strong>3. Nh&ocirc;m series 7000</strong></p>\r\n\r\n<p style="text-align: justify;"><strong><img alt="" src="https://cdn2.tgdd.vn/Files/2015/11/08/735704/apple-iphone-6s-3.jpg" style="height:506px; width:900px" /></strong>Năm ngo&aacute;i, iPhone 6 Plus đ&atilde; c&oacute; một scandal về bẻ cong, thiết bị kh&aacute; dễ d&agrave;ng bị uốn cong tuy nhi&ecirc;n với iPhone 6s Plus, bộ khung vỏ đ&atilde; được d&ugrave;ng loại nh&ocirc;m mới series 7000 cứng c&aacute;p hơn nhiều, việc bẻ cong iPhone 6s Plus kh&ocirc;ng c&ograve;n l&agrave; điều dễ d&agrave;ng.</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n', 5, 3),
(9, '24 giờ trải nghiệm iPhone 6s của một người dùng Android', 'tintuc3.jpg', 'Mùa thu lại đến và đây cũng là thời điểm mà làng công nghệ xôn xao vì các sản phẩm hàng đầu của "nhà táo" trình làng. Tâm điểm năm nay không ai khác chính là bộ đôi iPhone 6s, 6s Plus của Apple mà mới được bán chính hãng vào ngày hôm qua (6/11).', '<p style="text-align: justify;">Khi biết rằng chỉ một ch&uacute;t nữa th&ocirc;i m&igrave;nh sẽ được cầm tr&ecirc;n tay chiếc smartphone mới nhất của Apple, cảm gi&aacute;c l&uacute;c đ&oacute; m&igrave;nh nghĩ cũng giống như bao người kh&aacute;c, rất h&aacute;o hức v&agrave; t&ograve; m&ograve;. Nhưng chắc hẳn cảm x&uacute;c n&agrave;y hơi kh&aacute;c với c&aacute;c bạn iFan v&igrave; như đ&atilde; n&oacute;i m&igrave;nh từ trước đến nay chỉ sử dụng c&aacute;c thiết bị Android l&agrave; chủ yếu. Kh&ocirc;ng biết<a href="https://www.thegioididong.com/tin-tuc/iphone-6s-va-galaxy-s6-duoc-danh-gia-smartphone-tot-nhat-2015-731183" target="_blank" title="iPhone 6s được đánh giá tốt nhất 2015" type="iPhone 6s được đánh giá tốt nhất 2015">chiếc smartphone được đ&aacute;nh gi&aacute; tốt nhất 2015</a>&nbsp;c&oacute; mang đến cho m&igrave;nh trải nghiệm kh&aacute;c biệt g&igrave; kh&ocirc;ng?<img alt="" src="https://cdn4.tgdd.vn/Files/2015/11/07/735324/24giotrainghiemiphone6s1.jpg" style="height:506px; width:900px" />Khi cầm tr&ecirc;n tay iPhone 6s, điều đầu ti&ecirc;n m&igrave;nh l&agrave;m l&agrave; săm soi về ngoại h&igrave;nh m&aacute;y, đ&acirc;y l&agrave; sản phẩm c&oacute; m&agrave;u&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-kiem?key=Rose+Gold" target="_blank" title="tin tứ về iphone 6s rose gold" type="tin tứ về iphone 6s rose gold">Rose Gold</a>&nbsp;kh&aacute; nổi tiếng m&agrave; Apple mới bắt đầu ra mắt v&agrave;o năm nay dưới sự l&atilde;nh đạo của thuyền trưởng Tim Cook.&nbsp;Như ch&uacute;ng ta đ&atilde; biết th&igrave; c&aacute;c phi&ecirc;n bản c&oacute; chữ S sau c&ugrave;ng của Apple kh&ocirc;ng kh&aacute;c biệt nhiều về thiết kế m&agrave; chỉ n&acirc;ng cấp cấu h&igrave;nh v&agrave; c&aacute;c c&ocirc;ng nghệ so với bản tiền nhiệm. M&igrave;nh lật ra ph&iacute;a sau để nh&igrave;n r&otilde; chữ S, điểm ph&acirc;n biệt duy nhất giữa iPhone 6 v&agrave; 6s nếu chỉ nh&igrave;n b&ecirc;n ngo&agrave;i.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn1.tgdd.vn/Files/2015/11/07/735324/24giotrainghiemiphone6s16.jpg" style="height:506px; width:900px" />Tuy nhi&ecirc;n, khi cầm l&ecirc;n th&igrave; cảm nhận m&aacute;y rất cứng c&aacute;p, chắc chắn v&agrave; vẫn thừa hưởng ng&ocirc;n ngữ bo cong mềm mại.&nbsp;Trong đ&oacute; bộ khung, ph&iacute;m bấm vật l&yacute; hay c&aacute;c chi tiết c&oacute; mức độ ho&agrave;n thiện tuyệt vời l&agrave; điều kh&ocirc;ng thể b&agrave;n c&atilde;i. Kh&ocirc;ng mang lại vẻ mạnh mẽ như c&aacute;c sản phẩm Android nhưng đẹp v&agrave; sang trọng, mang lại khả năng thao t&aacute;c hay sử dụng thoải m&aacute;i l&agrave; những nhận x&eacute;t ban đầu của m&igrave;nh về iPhone 6s.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn3.tgdd.vn/Files/2015/11/07/735324/24giotrainghiemiphone6s23.jpg" style="height:506px; width:900px" /><img alt="" src="https://cdn4.tgdd.vn/Files/2015/11/07/735324/24giotrainghiemiphone6s3.jpg" style="height:506px; width:900px" /><img alt="" src="https://cdn.tgdd.vn/Files/2015/11/07/735324/24giotrainghiemiphone6s4.jpg" style="height:506px; width:900px" /><img alt="" src="https://cdn1.tgdd.vn/Files/2015/11/07/735324/24giotrainghiemiphone6s13.jpg" style="height:506px; width:900px" />M&igrave;nh từng d&ugrave;ng c&aacute;c thiết bị Android sử dụng tấm nền IPS,&nbsp;<a href="https://www.thegioididong.com/tin-tuc/loai-man-hinh-tft-lcd-amoled-la-gi--592346#amoled" target="_blank" title="tìm hiểu màn hình AMOLED" type="tìm hiểu màn hình AMOLED">AMOLED</a>&nbsp;hay Super LCD n&ecirc;n cảm nhận r&otilde; về m&agrave;n h&igrave;nh Retina tr&ecirc;n iPhone 6s. D&ugrave; độ ph&acirc;n giải chỉ dừng lại chuẩn HD (ch&iacute;nh x&aacute;c hơn l&agrave; 750 x 1334 Pixels) phổ biến tr&ecirc;n c&aacute;c d&ograve;ng m&aacute;y Android gi&aacute; từ 3 - 7 triệu đồng. Nhưng c&aacute;c bạn đừng để th&ocirc;ng số đ&aacute;nh lừa v&igrave; chất lượng hiển thị của iPhone 6s vẫn qu&aacute; xuất sắc. Nh&igrave;n v&agrave;o ban đ&ecirc;m kh&ocirc;ng hề mỏi mắt trong khi ban ng&agrave;y th&igrave; m&agrave;u sắc h&agrave;i h&ograve;a, ch&acirc;n thực. Kể cả ngo&agrave;i trời v&agrave;o buổi s&aacute;ng hay buổi trưa c&oacute; nắng vẫn đủ để người d&ugrave;ng thấy c&aacute;c nội dung hiển thị.</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n', 2, 3),
(10, 'Được đổi mới mạnh mẽ về thiết kế, cấu hình cùng một màn hình kích thước lớn đi cùng mang đến nhiều thích thú hơn trong sử dụng.', 'tin4.jpg', 'Các phiên bản của iPhone 6 Plus được bo tròn các cạnh nên khi cầm lâu máy sẽ không bị đau do cấn vào tay, nhất là với chiếc điện thoại có kích thước lớn thì điều này sẽ làm bạn yêu thích hơn.', '<p style="text-align: justify;">C&aacute;c phi&ecirc;n bản của iPhone 6 Plus được bo tr&ograve;n c&aacute;c cạnh n&ecirc;n khi cầm l&acirc;u m&aacute;y sẽ kh&ocirc;ng bị đau do cấn v&agrave;o tay, nhất l&agrave; với chiếc điện thoại c&oacute; k&iacute;ch thước lớn th&igrave; điều n&agrave;y sẽ l&agrave;m bạn y&ecirc;u th&iacute;ch hơn.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="https://www.thegioididong.com/images/42/70259/iphone-6-plus-64gb4-1.jpg" style="height:359px; width:640px" /><em>Kh&ocirc;ng thể thất vọng khi mọi chi tiết được l&agrave;m rất tốt v&agrave; tỉ mỉ</em></p>\r\n\r\n<p><strong>Camera cải thiện tốt</strong></p>\r\n\r\n<p style="text-align: justify;">Mặc d&ugrave; độ ph&acirc;n giải chỉ 8 MP, khẩu độ F2.2 nhưng những g&igrave; camera iPhone 6 Plus l&agrave;m được lại rất tốt, m&aacute;y cho tốc độ lấy n&eacute;t v&agrave; chạm chụp rất nhanh, m&agrave;u sắc được thu lại rất tốt.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="https://www.thegioididong.com/images/42/70259/iphone-6-plus-64gb9.jpg" style="height:450px; width:640px" /><em>Ảnh vẫn đẹp d&ugrave; chụp dưới trời nắng (Ảnh:&nbsp;<a href="https://www.thegioididong.com/anh-dep/thong-tin-nguoi-choi-1724910" target="_blank" title="Thông tin người gửi ảnh">Truc Richie</a>)</em></p>\r\n\r\n<p style="text-align: center;"><em><img alt="" src="https://www.thegioididong.com/images/42/70259/iphone-6-plus-64gb7.jpg" style="height:138px; width:640px" />S&aacute;ng tạo dễ d&agrave;ng với chế độ chụp to&agrave;n cảnh - pano (Ảnh:&nbsp;<a href="https://www.thegioididong.com/anh-dep/thong-tin-nguoi-choi-1683265" target="_blank" title="Thông tin người gửi ảnh)">Ma Đ&oacute;i</a>)</em></p>\r\n', 2, 4),
(12, 'Apple không thể sửa chữa iPhone của cậu bé mất tích trên biển', 'tin6.jpg', 'Chiếc iPhone của một trong 2 cậu bé bị mất tích bí ẩn trên biển đã được gửi đến Apple để lấy lại dữ liệu, tìm hiểu xem nguyên nhân mất tích là gì tuy nhiên dường như gia đình 2 nạn nhân tiếp tục phải nhận thêm tin buồn.', '<h2 style="text-align: justify;">Chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone" target="_blank" title="iPhone ">iPhone</a>&nbsp;của một trong 2 cậu b&eacute; bị mất t&iacute;ch b&iacute; ẩn tr&ecirc;n biển đ&atilde; được gửi đến Apple để lấy lại dữ liệu, t&igrave;m hiểu xem nguy&ecirc;n nh&acirc;n mất t&iacute;ch l&agrave; g&igrave; tuy nhi&ecirc;n dường như gia đ&igrave;nh 2 nạn nh&acirc;n tiếp tục phải nhận th&ecirc;m tin buồn.</h2>\r\n\r\n<p style="text-align: justify;">Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/tin-tuc/iphone-cua-2-cau-be-mat-tich-tren-bien-duoc-gui-den-apple-822293" target="_blank" title=" iPhone của 2 cậu bé mất tích trên biển được gửi đến Apple để phân tích">iPhone của 2 cậu b&eacute; mất t&iacute;ch tr&ecirc;n biển được gửi đến Apple để ph&acirc;n t&iacute;ch</a></p>\r\n\r\n<p style="text-align: justify;">Theo đ&oacute;, chiếc iPhone của Austin Stephanos đ&atilde; ng&acirc;m trong nước biển 8 th&aacute;ng, ch&iacute;nh v&igrave; vậy m&agrave; điều kỳ diệu đ&atilde; kh&oacute; l&ograve;ng xảy ra. C&aacute;c kỹ sư của Apple đ&atilde; th&aacute;o rời thiết bị, l&agrave;m sạch c&aacute;c linh kiện v&agrave; sau đ&oacute; tiến h&agrave;nh sửa chữa, kh&ocirc;i phục dữ liệu nhưng cuối c&ugrave;ng n&oacute; đ&atilde; kh&ocirc;ng th&agrave;nh c&ocirc;ng, dữ liệu cũng kh&ocirc;ng thể lấy lại được.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn4.tgdd.vn/Files/2016/05/12/827441/iphone-2.jpg" style="height:404px; width:600px" /></p>\r\n\r\n<p>&ldquo;Mặc d&ugrave; họ đ&atilde; kh&ocirc;ng thể kh&ocirc;i phục dữ liệu nhưng t&ocirc;i muốn cảm ơn Apple, họ đ&atilde; hỗ trợ rất nhiều&rdquo;, phụ huynh của Austin Stephanos đ&atilde; chia sẻ với b&aacute;o ch&iacute;.</p>\r\n\r\n<p style="text-align: justify;">Như th&ocirc;ng tin đ&atilde; đưa, 2 cậu b&eacute; 14 tuổi gồm Austin Stephanos v&agrave; Perry Cohen đ&atilde; mất t&iacute;ch v&agrave;o hồi th&aacute;ng 7/2015 khi đi c&acirc;u c&aacute; ngo&agrave;i khơi bờ biển Jupiter, Florida. M&atilde;i tới th&aacute;ng 3/2016 th&igrave; chiếc thuyền của 2 cậu b&eacute; mới được t&igrave;m thấy v&agrave; tr&ecirc;n đ&oacute; vẫn c&ograve;n chiếc iPhone của Austin Stephanos. Mặc d&ugrave; n&oacute; đ&atilde; bị rỉ s&eacute;t rất nhiều nhưng gia đ&igrave;nh của Austin Stephanos vẫn muốn gửi đến Apple để kh&ocirc;i phục nhằm t&igrave;m ra nguy&ecirc;n nh&acirc;n của sự mất t&iacute;ch, tuy nhi&ecirc;n cuối c&ugrave;ng th&igrave; Apple đ&atilde; kh&ocirc;ng thể l&agrave;m g&igrave; hơn.</p>\r\n', 5, 4),
(14, 'Samsung đang từng bước cải thiện giao diện của riêng mình', 'tin8.jpg', 'Theo như chúng ta được biết, TouchWiz là một giao diện cảm ứng thuộc công ty Samsung Electronics và các đối tác, một giao diện đầy đủ giúp khách hang sử dụng dễ dàng thiết bị của họ. Samsung hiện nay đang tiếp tục đẩy mạnh giao diện TouchWiz này.', '<h2>Theo như ch&uacute;ng ta được biết,<a href="https://www.thegioididong.com/tin-tuc/giao-dien-touchwiz-moi-tren-galaxy-s7-s7-edge-790745" target="_blank" title="touchwiz" type="touchwiz">&nbsp;TouchWiz&nbsp;</a>l&agrave; một giao diện cảm ứng thuộc c&ocirc;ng ty Samsung Electronics v&agrave; c&aacute;c đối t&aacute;c, một giao diện đầy đủ gi&uacute;p kh&aacute;ch hang sử dụng dễ d&agrave;ng thiết bị của họ. Samsung hiện nay đang tiếp tục đẩy mạnh giao diện TouchWiz n&agrave;y.</h2>\r\n\r\n<p style="text-align: justify;">Theo nguồn tin từ<a href="http://www.sammobile.com/2016/04/28/samsung-is-testing-a-power-efficient-touchwiz-launcher/" rel="nofollow" target="_blank" title="sammobile" type="sammobile">&nbsp;Sammobile&nbsp;</a>cho biết, trước đ&acirc;y Samsung đ&atilde; cố gắng đẩy mạnh giao diện TouchWiz l&ecirc;n c&aacute;c d&ograve;ng điện thoại<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s6" target="_blank" title="galaxy s6" type="galaxy s6">&nbsp;Galaxy S6&nbsp;</a>v&agrave;<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s6-edge" target="_blank" title="galaxy s6 edge" type="galaxy s6 edge">&nbsp;Galaxy S6 Edge</a>&nbsp;nhưng c&oacute; vẻ như họ vẫn chưa vừa &yacute;. Cho đến nay, họ đ&atilde; quyết định sẽ sử dụng chức năng Vulkan APIS kết hợp với TouchWiz, thử nghiệm tr&ecirc;n c&aacute;c d&ograve;ng<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s7" target="_blank" title="galaxy s7" type="galaxy s7">&nbsp;Galaxy S7&nbsp;</a>v&agrave;<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s7-edge?gclid=Cj0KEQjw6Ya5BRDdyOewyo_Z_64BEiQA-fVKewmfLAZa8a2kIOaF6NE5ZVze7HmhECPR5dP39btno8AaAthi8P8HAQ" target="_blank" title="galaxy s7 edge" type="galaxy s7 edge">&nbsp;S7 Edge</a>, điều n&agrave;y sẽ cho ch&uacute;ng ta một c&aacute;i nh&igrave;n mới về sản phẩm của họ.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="https://cdn.tgdd.vn/Files/2016/04/28/821750/samsung.jpg" style="height:277px; width:800px" />Sự ph&aacute;t triển của TouchWiz tr&ecirc;n Samsung qua nhiều thế hệ</p>\r\n\r\n<p>Dựa tr&ecirc;n sự kiện Samsung Developers Conference 2016 vừa qua, c&aacute;c kỹ sư của Samsung đ&atilde; cho ch&uacute;ng ta biết được, kh&ocirc;ng những c&aacute;c khả năng của 2 d&ograve;ng điện thoại Galaxy S7 v&agrave; S7 Edge được n&acirc;ng cao, tăng hiệu suất l&agrave;m việc l&ecirc;n đến 64% v&agrave; đồng thời pin điện thoại sẽ sử dụng được l&acirc;u hơn so với b&igrave;nh thường.</p>\r\n\r\n<p style="text-align: justify;">Qua những th&ocirc;ng tin n&agrave;y, ch&uacute;ng ta c&oacute; thể thấy được, Samsung đang từng bước ph&aacute;t triển hơn nữa trong việc l&agrave;m ra c&aacute;c sản phẩm chất lượng để l&agrave;m cho c&aacute;c kh&aacute;ch h&agrave;ng của m&igrave;nh th&ecirc;m phần h&agrave;i l&ograve;ng về họ. V&agrave; hi vọng rằng, sản phẩm giao diện TouchWiz ho&agrave;n to&agrave;n mới n&agrave;y sẽ đến với ch&uacute;ng ta nhanh nhất c&oacute; thể</p>\r\n', 5, 5),
(15, 'Được đổi mới mạnh mẽ về thiết kế, cấu hình và màn hình kích thước lớn hơn sẽ mang đến cho bạn nhiều thích thú hơn.', 'tin9.jpg', 'Các phiên bản của iPhone 6 được bo tròn các cạnh nên khi cầm lâu máy sẽ không bị đau do cấn vào tay, nhất là với chiếc điện thoại có kích thước lớn thì điều này sẽ làm bạn yêu thích hơn.', '<p><img alt="" src="https://www.thegioididong.com/images/42/70258/iphone-6-64gb7.jpg" style="height:449px; width:800px" /></p>\r\n\r\n<p style="text-align: center;"><em>Kh&ocirc;ng thể thất vọng khi mọi chi tiết được l&agrave;m rất tốt v&agrave; tỉ mỉ</em></p>\r\n\r\n<p><strong>Camera cải thiện tốt</strong></p>\r\n\r\n<p style="text-align: justify;">Mặc d&ugrave; độ ph&acirc;n giải chỉ 8 MP, khẩu độ F2.2 nhưng những g&igrave; camera iPhone 6 l&agrave;m được lại rất tốt, m&aacute;y cho tốc độ lấy n&eacute;t v&agrave; chạm chụp rất nhanh, m&agrave;u sắc được thu lại rất tốt.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="https://www.thegioididong.com/images/42/70258/iphone-6-64gb1-2.jpg" style="height:600px; width:800px" /><em>Ảnh chụp buổi đ&ecirc;m quang cảnh th&agrave;nh phố (Ảnh:&nbsp;<a href="https://www.thegioididong.com/anh-dep/thong-tin-nguoi-choi-1628450" target="_blank" title="Thông tin người gửi ảnh">Phan Trai &Uacute;c</a>)</em></p>\r\n\r\n<p style="text-align: center;"><em><img alt="" src="https://www.thegioididong.com/images/42/70258/iphone-6-64gb4-1.jpg" style="height:600px; width:800px" />Ống k&iacute;nh rộng thu được h&igrave;nh ảnh nhiều hơn (Ảnh:&nbsp;<a href="https://www.thegioididong.com/anh-dep/thong-tin-nguoi-choi-1637550" target="_blank" title="Thông tin người gửi ảnh">Huan Nguyen Van</a>)</em></p>\r\n\r\n<p><strong>Vi xử l&yacute; mạnh mẽ hơn</strong></p>\r\n\r\n<p>iPhone 6 sử dụng&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-hieu-ve-chip-xu-ly-danh-cho-di-dong-cua-apple-592848#applea8" target="_blank" title="Tìm hiểu chip xử lý A8">chip xử l&yacute; A8</a>&nbsp;tốc độ 1.4 GHz&nbsp;cho việc xử l&yacute; t&aacute;c vụ nhanh hơn 30%, tiết kiệm năng lượng hơn 25% so với&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-hieu-ve-chip-xu-ly-danh-cho-di-dong-cua-apple-592848#applea7" target="_blank" title="Tìm hiểu chip xử lý A7">chip A7</a>&nbsp;tr&ecirc;n&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-5s-16gb" target="_blank" title="Thông tin điện thoại iPhone 5S">iPhone 5S</a>&nbsp;(1.3 GHz), đối với việc chơi game c&oacute; cấu h&igrave;nh nặng cũng sẽ rất dễ d&agrave;ng.&nbsp;</p>\r\n\r\n<p>iPhone 6 d&ugrave;ng hệ điều h&agrave;nh iOS 9 với nhiều t&iacute;nh năng th&uacute; vị, bạn c&oacute; thể tham khảo th&ecirc;m&nbsp;<strong><a href="https://www.thegioididong.com/tin-tuc/ngay-mai-ios-9-ra-mat-co-gi-moi-dang-de-ban-cho-doi-702229" target="_blank" title="Tìm hiểu thêm về iOS 9">tại đ&acirc;y</a></strong>.</p>\r\n\r\n<p style="text-align: justify;">M&aacute;y sử dụng&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-hieu-chip-xu-li-do-hoa-tren-smartphone-gpu-pow-594021#powervrsgx6450" target="_blank" title="Tìm hiểu chip đồ họa">chip đồ họa&nbsp;PowerVR GX6450</a>, c&oacute; thể xử l&yacute; h&igrave;nh ảnh độ ph&acirc;n giải cao như video 4K hay gamec 3D tốt v&agrave; mượt hơn, m&agrave;n h&igrave;nh Retina HD c&ugrave;ng k&iacute;ch thước 5.5 inch cho mọi thao t&aacute;c lướt web, giải tr&iacute; hay xử l&yacute; c&ocirc;ng việc đều rất tốt.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="https://www.thegioididong.com/images/42/70258/iphone-6-64gb6.jpg" style="height:449px; width:800px" /><em>Camera l&agrave;m lồi tuy nhi&ecirc;n bạn c&oacute; thể thoải m&aacute;i sử dụng m&agrave; kh&ocirc;ng qu&aacute; lo về trầy xước do ống k&iacute;nh được gia c&ocirc;ng kỹ</em></p>\r\n\r\n<p style="text-align: justify;">Ngo&agrave;i một số nhược điểm như hệ điều h&agrave;nh kh&oacute; sử dụng hay kh&ocirc;ng c&oacute; ph&iacute;m trở lại, tuy nhi&ecirc;n khi bạn đ&atilde; quen sử dụng&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone" target="_blank" title="Các mẫu điện thoại iPhone">iPhone</a>&nbsp;bạn sẽ lu&ocirc;n muốn sử dụng tiếp theo c&aacute;c d&ograve;ng mới của h&atilde;ng, v&igrave; thiết kế sang trọng, tinh tế, m&aacute;y thao t&aacute;c nhanh, chụp ảnh đẹp.</p>\r\n', 2, 7),
(16, '6 game tính phí đang được miễn phí cho iPhone, iPad (23/5/2016)', 'tin10.jpg', 'Hôm nay mình sẽ liệt kê 6 tựa game iOS tính phí được miễn phí có thời hạn, dĩ nhiên mốc thời gian này không được các nhà phát triển tiết lộ. Cho nên, các bạn dùng iPhone và iPad hãy nhanh tay lựa chọn ứng dụng nào phù hợp và tải về ngay, còn không thì tải về hết luôn cũng được.', '<h2>H&ocirc;m nay m&igrave;nh sẽ liệt k&ecirc; 6 tựa game&nbsp;<a href="https://www.thegioididong.com/game-ung-dung/cho-game-ung-dung?os=ios" target="_blank" title="Kho ứng dụng và game cho iOS tại Thegioididong.com" type="Kho ứng dụng và game cho iOS tại Thegioididong.com">iOS</a>&nbsp;t&iacute;nh ph&iacute; được miễn ph&iacute; c&oacute; thời hạn, dĩ nhi&ecirc;n mốc thời gian n&agrave;y kh&ocirc;ng được c&aacute;c nh&agrave; ph&aacute;t triển tiết lộ. Cho n&ecirc;n, c&aacute;c bạn d&ugrave;ng&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone" target="_blank" title="Mua điện thoại Apple iPhone" type="Mua điện thoại Apple iPhone">iPhone</a>&nbsp;v&agrave; iPad h&atilde;y nhanh tay lựa chọn ứng dụng n&agrave;o ph&ugrave; hợp v&agrave; tải về ngay, c&ograve;n kh&ocirc;ng th&igrave; tải về hết lu&ocirc;n cũng được.</h2>\r\n\r\n<h3><strong>1.&nbsp;Link Mania</strong></h3>\r\n\r\n<p style="text-align: justify;">Một tr&ograve; chơi giải đố tuy đơn giản nhưng sẽ khiến bạn bị nghiện h&agrave;ng giờ liền. Thử th&aacute;ch trong game với h&agrave;ng ngh&igrave;n c&acirc;u đố, đồ họa v&agrave; hiệu ứng &acirc;m thanh tuyệt vời. Bạn cần kết nối c&aacute;c m&agrave;u sắc ph&ugrave; hợp lại với nhau v&agrave; phải l&agrave;m đủ mọi c&aacute;ch để c&oacute; được 3 sao nữa nh&eacute;!</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="https://cdn4.tgdd.vn/Files/2016/05/23/832183/link-mania.jpg" style="height:474px; width:800px" />Trước khi được miễn ph&iacute;, Link Mania c&oacute; gi&aacute; 7,99 USD</p>\r\n\r\n<p>Tải&nbsp;Link Mania&nbsp;<a href="https://itunes.apple.com/vn/app/link-mania-solve-puzzle-challenge/id901805348" rel="nofollow" target="_blank" title="Tải Link Mania" type="Tải Link Mania">tại đ&acirc;y</a>&nbsp;| Hỗ trợ iOS 8.0 trở l&ecirc;n | Dung lượng 19.5 MB.</p>\r\n\r\n<h3><strong>2.&nbsp;Cat Coloring Pages</strong></h3>\r\n\r\n<p style="text-align: justify;">Với ứng dụng n&agrave;y sẽ gi&uacute;p bạn quay về tuổi thơ của những buổi ngồi t&ocirc; tranh c&aacute;t.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="https://cdn3.tgdd.vn/Files/2016/05/23/832183/cat-coloring-pages.jpg" style="height:474px; width:800px" />Trước khi được miễn ph&iacute;, Cat Coloring Pages c&oacute; gi&aacute; 4,99 USD</p>\r\n\r\n<p>Tải&nbsp;Cat Coloring Pages&nbsp;<a href="https://itunes.apple.com/vn/app/cat-coloring-pages/id1094649769" rel="nofollow" target="_blank" title="Tải Cat Coloring Pages" type="Tải Cat Coloring Pages">tại đ&acirc;y</a>&nbsp;| Hỗ trợ iOS 7.0 trở l&ecirc;n | Dung lượng 66.3 MB.</p>\r\n\r\n<h3><strong>3.&nbsp;3D Quad Bikes Unlimited HD Full Version</strong></h3>\r\n\r\n<p>Vượt mặt c&aacute;c tay đua đ&aacute;ng gờm kh&aacute;c bằng chiếc xe 4 b&aacute;nh &quot;thần th&aacute;nh&quot; của m&igrave;nh n&agrave;o c&aacute;c bạn!</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="https://cdn2.tgdd.vn/Files/2016/05/23/832183/3d-quad-bikes-unlimited-hd-full-version.jpg" style="height:450px; width:800px" />Trước khi được miễn ph&iacute;, 3D Quad Bikes Unlimited HD Full Version c&oacute; gi&aacute; 2,99 USD</p>\r\n\r\n<p style="text-align: justify;">Tải&nbsp;3D Quad Bikes Unlimited HD Full Version&nbsp;<a href="https://itunes.apple.com/vn/app/3d-quad-bikes-unlimited-hd/id902304792" rel="nofollow" target="_blank" title="Tải 3D Quad Bikes Unlimited HD Full Version" type="Tải 3D Quad Bikes Unlimited HD Full Version">tại đ&acirc;y</a>&nbsp;| Hỗ trợ iOS 7.0 trở l&ecirc;n | Dung lượng 99 MB</p>\r\n', 6, 7),
(18, 'Xperia Z5 Premium màu hồng có giá bán và chuẩn bị lên kệ TGDĐ', 'tin12.jpg', 'Sau một thời gian ra mắt thì mới đây, chiếc Xperia Z5 Premium phiên bản màu hồng quyến rũ đã có giá bán và sẵn sàng lên kệ Thế giới di động. Model này cũng sở hữu màn hình độ phân giải 4K vô cùng sắc nét.', '<h2>Sau một thời gian ra mắt th&igrave; mới đ&acirc;y, chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/sony-xperia-z5-premium-pink-edition" target="_blank" title="Xperia Z5 Premium">Xperia Z5 Premium</a>&nbsp;phi&ecirc;n bản m&agrave;u hồng quyến rũ đ&atilde; c&oacute; gi&aacute; b&aacute;n v&agrave; sẵn s&agrave;ng l&ecirc;n kệ Thế giới di động. Model n&agrave;y cũng sở hữu m&agrave;n h&igrave;nh độ ph&acirc;n giải 4K v&ocirc; c&ugrave;ng sắc n&eacute;t.</h2>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/tin-tuc/xperia-z5-premium-ban-mau-hong-co-gia-ban-tai-viet-nam-818588" target="_blank" title="Xperia Z5 Premium bản màu hồng có giá bán tại Việt Nam">Xperia Z5 Premium bản m&agrave;u hồng c&oacute; gi&aacute; b&aacute;n tại Việt Nam</a></p>\r\n\r\n<p>Đ&uacute;ng như những th&ocirc;ng tin trước đ&acirc;y, phi&ecirc;n bản Xperia Z5 Premium m&agrave;u hồng phai cũng c&oacute; gi&aacute; b&aacute;n l&agrave; 17.99 triệu đồng, mức gi&aacute; n&agrave;y tương đồng với gi&aacute; b&aacute;n của Xperia Z5 Premium m&agrave;u kh&aacute;c. Dự kiến h&agrave;ng sẽ về cuối th&aacute;ng 5 n&agrave;y.</p>\r\n\r\n<p style="text-align: justify;">Thiết kế th&igrave; &ldquo;miễn b&agrave;n&rdquo; bởi Xperia Z5 Premium cũng l&agrave; một trong những&nbsp;<a href="https://www.thegioididong.com/dtdd/" target="_blank" title="smartphone">smartphone</a>c&oacute; thiết kế rất hấp dẫn, đẹp mắt. Phi&ecirc;n bản m&agrave;u hồng chắc chắn sẽ l&agrave;m nhiều người th&iacute;ch th&uacute; hơn nữa.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn4.tgdd.vn/Files/2016/05/10/826755/xperiaz5premium-2.jpg" style="height:486px; width:800px" />Về cấu h&igrave;nh, cũng như c&aacute;c phi&ecirc;n bản kh&aacute;c, Z5 Premium m&agrave;u hồng c&oacute; m&agrave;n h&igrave;nh 5.5 inch độ ph&acirc;n giải 4K, m&aacute;y sở hữu chip Snapdragon 810, bộ nhớ RAM 3 GB, bộ nhớ trong 32 GB với khe cắm thẻ nhớ microSD. Thiết bị cũng t&iacute;ch hợp camera 23 MP mặt sau, hỗ trợ 2 SIM v&agrave; pin dung lượng 3.430 mAh.</p>\r\n', 1, 8);
INSERT INTO `technology_infor` (`id`, `name`, `image`, `description`, `main_description`, `tech_infor_category_id`, `product_id`) VALUES
(19, 'Test khả năng hiển thị của Xperia Z5 Premium: Màn hình 4K có cần thiết?', 'tin1.jpg', 'Xperia Z5 Premium là chiếc smartphone màn hình 4K đầu tiên trên thế giới nhưng nó có thực sự mang đến sự khác biệt so với những thiết bị có độ phân giải Full-HD hay 2K? Để trả lời câu hỏi này thì mới đây trang GSMarena đã thực hiện một số bài test về khả năng hiển thị của chiếc flagship cao cấp nhất trong năm nay của Sony.', '<p><img alt="" src="https://cdn2.tgdd.vn/Files/2015/11/23/745615/gsmarena_001.jpg" style="height:345px; width:800px" /></p>\r\n\r\n<p style="text-align: justify;">Điểm đặc biệt tr&ecirc;n m&agrave;n h&igrave;nh của Xperia Z5 Premium l&agrave; Sony đ&atilde; sắp xếp c&aacute;c điểm ảnh một c&aacute;ch bất thường, kh&ocirc;ng hề tu&acirc;n theo quy luật song song như những m&agrave;n h&igrave;nh&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-kiem?key=LCD" title="Màn hình LCD">LCD</a>&nbsp;ti&ecirc;u chuẩn.</p>\r\n\r\n<p style="text-align: justify;"><strong>Kiểm tra bằng h&igrave;nh ảnh 4K</strong></p>\r\n\r\n<p style="text-align: justify;">Để đ&aacute;nh gi&aacute; sự kh&aacute;c biệt về khả năng hiển thị ở những độ ph&acirc;n giải kh&aacute;c nhau, ch&uacute;ng t&ocirc;i (GSMarena) đ&atilde; sử dụng 3 chiếc điện thoại với c&ugrave;ng k&iacute;ch thước m&agrave;n h&igrave;nh 5.5-inch nhưng c&oacute; độ ph&acirc;n giải kh&aacute;c nhau gồm ZenFone 2 (1080p), LG G4 (1440p), Xperia Z5 Premium (2160p), v&agrave; đưa l&ecirc;n mỗi m&aacute;y một tấm ảnh c&oacute; độ ph&acirc;n giải 4K được crop tỉ lệ 1:1 để dễ d&agrave;ng hơn trong qu&aacute; tr&igrave;nh so s&aacute;nh. &Yacute; tưởng đằng sau b&agrave;i kiểm tra n&agrave;y l&agrave; với m&agrave;n h&igrave;nh 4K th&ocirc;ng thường sẽ hiểu thị r&otilde; 12 vạch m&agrave;u (mỗi vạch c&oacute; k&iacute;ch thước bằng 1 pixel).</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn1.tgdd.vn/Files/2015/11/23/745615/anhso4.jpg" style="height:231px; width:800px" /></p>\r\n\r\n<p style="text-align: justify;">Kết quả cho thấy Xperia Z5 Premium hiển thị được&nbsp;nhiều vạch m&agrave;u hơn so với LG G4 v&agrave; đ&acirc;y cũng l&agrave; b&agrave;i kiểm tra duy nhất cho ch&uacute;ng ta thấy sự kh&aacute;c biệt giữa thiết bị của Sony so với 2 smartphone c&ograve;n lại c&oacute; độ ph&acirc;n giải thấp hơn.</p>\r\n\r\n<p style="text-align: justify;"><strong>Kiểm tra bằng ảnh c&oacute; độ ph&acirc;n giải 23MP</strong></p>\r\n\r\n<p style="text-align: justify;">Trong b&agrave;i kiểm tra thứ hai, ch&uacute;ng t&ocirc;i đ&atilde; sử dụng h&igrave;nh ảnh c&oacute; độ ph&acirc;n giải 23MP được chụp từ camera của&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-kiem?key=z5+premium" title="Xperia Z5 Premium">Z5 Premium</a>.&nbsp;V&agrave; điều mong đợi của ch&uacute;ng t&ocirc;i đ&atilde; đến khi m&agrave;n h&igrave;nh 4K tr&ecirc;n Z5 Premium mang lại chất lượng hiển thị mịn m&agrave;ng hơn so với 2 thiết bị &nbsp;c&ograve;n lại. Tuy nhi&ecirc;n sự kh&aacute;c biệt n&agrave;y kh&ocirc;ng dễ d&agrave;ng c&oacute; thể thấy được bằng mắt thường.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn.tgdd.vn/Files/2015/11/23/745615/anhso2.jpg" style="height:230px; width:800px" /><img alt="" src="https://cdn2.tgdd.vn/Files/2015/11/23/745615/anhso3.jpg" style="height:235px; width:800px" /></p>\r\n\r\n<p style="text-align: justify;"><strong>Kết luận</strong></p>\r\n\r\n<p style="text-align: justify;">Th&ocirc;ng qua c&aacute;c b&agrave;i test, ch&uacute;ng ta c&oacute; thể nhận thấy rằng m&agrave;n h&igrave;nh 4K m&agrave; Sony trang bị cho Z5 Premium kh&ocirc;ng c&oacute; nhiều đột ph&aacute; về c&ocirc;ng nghệ cũng như kh&ocirc;ng tạo được sự kh&aacute;c biệt lớn so với c&aacute;c đối thủ. Ngược lại đ&acirc;y sẽ l&agrave; g&aacute;nh nặng rất lớn l&ecirc;n to&agrave;n hệ thống khi phải mang trong m&igrave;nh phần hiển thị c&oacute; độ ph&acirc;n giải rất cao so với mặt bằng chung của c&aacute;c smartphone hiện nay.</p>\r\n', 2, 8),
(21, 'iPhone SE chính thức lên kệ tại Việt Nam', 'tin3.jpg', 'Sau nhiều ngày đồn đoán, chờ đợi thì hôm nay (12/5), chiếc iPhone có sức mạnh “khủng khiếp” nhất hiện nay đã chính thức lên kệ Thế giới di động. Nếu bạn là fan hâm mộ nhà Táo, thích sản phẩm “nhỏ nhưng có võ” thì xúc ngay nhé.', '<h2>Sau nhiều ng&agrave;y đồn đo&aacute;n, chờ đợi th&igrave; h&ocirc;m nay (12/5), chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-se-16gb" target="_blank" title="iPhone SE">iPhone</a>&nbsp;c&oacute; sức mạnh &ldquo;khủng khiếp&rdquo; nhất hiện nay đ&atilde; ch&iacute;nh thức l&ecirc;n kệ Thế giới di động. Nếu bạn l&agrave; fan h&acirc;m mộ nh&agrave; T&aacute;o, th&iacute;ch sản phẩm &ldquo;nhỏ nhưng c&oacute; v&otilde;&rdquo; th&igrave; x&uacute;c ngay nh&eacute;.</h2>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/tin-tuc/iphone-se-bat-dau-cho-phep-dat-hang-tai-tgdd-voi-nhieu-qua-823530" target="_blank" title=" iPhone SE bắt đầu cho phép đặt hàng tại TGDĐ với nhiều quà tặng">iPhone SE bắt đầu cho ph&eacute;p đặt h&agrave;ng tại TGDĐ với nhiều qu&agrave; tặng</a></p>\r\n\r\n<p style="text-align:justify"><a href="https://www.thegioididong.com/dtdd/iphone-se-16gb" target="_blank" title="iPhone SE">iPhone SE</a>&nbsp;được c&aacute;c chuy&ecirc;n trang c&ocirc;ng nghệ đ&aacute;nh gi&aacute; l&agrave; chiếc iPhone mạnh nhất hiện nay, thậm ch&iacute; n&oacute; cũng l&agrave; mẫu&nbsp;<a href="https://www.thegioididong.com/dtdd/" target="_blank" title="smartphone">smartphone</a>&nbsp;m&agrave;n h&igrave;nh 4 inch mạnh nhất thế giới. V&igrave; sao vậy? Bởi mặc d&ugrave; nhỏ gọn nhưng n&oacute; mang trong m&igrave;nh sức mạnh của chiếc<a href="https://www.thegioididong.com/dtdd/iphone-6s" target="_blank" title=" iPhone 6s">iPhone 6s</a>, đ&oacute; l&agrave; vi xử l&yacute; Apple A9 với RAM 2 GB c&ugrave;ng camera 12 MP sắc n&eacute;t.</p>\r\n\r\n<p style="text-align:justify">Nếu bạn l&agrave; người th&iacute;ch một sản phẩm thanh lịch, nhỏ gọn, dễ d&agrave;ng sử dụng bằng một tay hay thoải m&aacute;i bỏ t&uacute;i th&igrave; iPhone SE ch&iacute;nh l&agrave; lựa chọn s&aacute;ng gi&aacute;. &ldquo;B&eacute; hạt ti&ecirc;u&rdquo; n&agrave;y h&ocirc;m nay (12/5) đ&atilde; ch&iacute;nh thức c&oacute; mặt tr&ecirc;n c&aacute;c kệ h&agrave;ng của Thế giới di động để bạn c&oacute; thể đến &ldquo;sờ m&oacute;&rdquo; v&agrave; sở hữu.</p>\r\n\r\n<p style="text-align:justify">Như đ&atilde; th&ocirc;ng tin từ trước, phi&ecirc;n bản iPhone SE 16 GB c&oacute; gi&aacute; b&aacute;n 11.49 triệu đồng trong khi bản 64 GB c&oacute; gi&aacute; 14.49 triệu đồng.</p>\r\n', 1, 10),
(22, '24 giờ trải nghiệm iPhone 6s của một người dùng Android', 'tin4.jpg', 'Mùa thu lại đến và đây cũng là thời điểm mà làng công nghệ xôn xao vì các sản phẩm hàng đầu của "nhà táo" trình làng. Tâm điểm năm nay không ai khác chính là bộ đôi iPhone 6s, 6s Plus của Apple mà mới được bán chính hãng vào ngày hôm qua (6/11).', '<h2>M&ugrave;a thu lại đến v&agrave; đ&acirc;y cũng l&agrave; thời điểm m&agrave; l&agrave;ng c&ocirc;ng nghệ x&ocirc;n xao v&igrave; c&aacute;c sản phẩm h&agrave;ng đầu của &quot;nh&agrave; t&aacute;o&quot; tr&igrave;nh l&agrave;ng. T&acirc;m điểm năm nay kh&ocirc;ng ai kh&aacute;c ch&iacute;nh l&agrave; bộ đ&ocirc;i&nbsp;<a href="https://www.thegioididong.com/iphone-6s" target="_blank" title="xem giá bán iphone 6s" type="xem giá bán iphone 6s">iPhone 6s</a>, 6s Plus của Apple m&agrave; mới được b&aacute;n ch&iacute;nh h&atilde;ng v&agrave;o ng&agrave;y h&ocirc;m qua (6/11).</h2>\r\n\r\n<p style="text-align: justify;">Khi biết rằng chỉ một ch&uacute;t nữa th&ocirc;i m&igrave;nh sẽ được cầm tr&ecirc;n tay chiếc smartphone mới nhất của Apple, cảm gi&aacute;c l&uacute;c đ&oacute; m&igrave;nh nghĩ cũng giống như bao người kh&aacute;c, rất h&aacute;o hức v&agrave; t&ograve; m&ograve;. Nhưng chắc hẳn cảm x&uacute;c n&agrave;y hơi kh&aacute;c với c&aacute;c bạn iFan v&igrave; như đ&atilde; n&oacute;i m&igrave;nh từ trước đến nay chỉ sử dụng c&aacute;c thiết bị Android l&agrave; chủ yếu. Kh&ocirc;ng biết<a href="https://www.thegioididong.com/tin-tuc/iphone-6s-va-galaxy-s6-duoc-danh-gia-smartphone-tot-nhat-2015-731183" target="_blank" title="iPhone 6s được đánh giá tốt nhất 2015" type="iPhone 6s được đánh giá tốt nhất 2015">chiếc smartphone được đ&aacute;nh gi&aacute; tốt nhất 2015</a>&nbsp;c&oacute; mang đến cho m&igrave;nh trải nghiệm kh&aacute;c biệt g&igrave; kh&ocirc;ng?</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn.tgdd.vn/Files/2015/11/07/735324/24giotrainghiemiphone6s1.jpg" style="height:450px; width:800px" />Khi cầm tr&ecirc;n tay iPhone 6s, điều đầu ti&ecirc;n m&igrave;nh l&agrave;m l&agrave; săm soi về ngoại h&igrave;nh m&aacute;y, đ&acirc;y l&agrave; sản phẩm c&oacute; m&agrave;u&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-kiem?key=Rose+Gold" target="_blank" title="tin tứ về iphone 6s rose gold" type="tin tứ về iphone 6s rose gold">Rose Gold</a>&nbsp;kh&aacute; nổi tiếng m&agrave; Apple mới bắt đầu ra mắt v&agrave;o năm nay dưới sự l&atilde;nh đạo của thuyền trưởng Tim Cook.&nbsp;Như ch&uacute;ng ta đ&atilde; biết th&igrave; c&aacute;c phi&ecirc;n bản c&oacute; chữ S sau c&ugrave;ng của Apple kh&ocirc;ng kh&aacute;c biệt nhiều về thiết kế m&agrave; chỉ n&acirc;ng cấp cấu h&igrave;nh v&agrave; c&aacute;c c&ocirc;ng nghệ so với bản tiền nhiệm. M&igrave;nh lật ra ph&iacute;a sau để nh&igrave;n r&otilde; chữ S, điểm ph&acirc;n biệt duy nhất giữa iPhone 6 v&agrave; 6s nếu chỉ nh&igrave;n b&ecirc;n ngo&agrave;i.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn2.tgdd.vn/Files/2015/11/07/735324/24giotrainghiemiphone6s16.jpg" style="height:450px; width:800px" />Tuy nhi&ecirc;n, khi cầm l&ecirc;n th&igrave; cảm nhận m&aacute;y rất cứng c&aacute;p, chắc chắn v&agrave; vẫn thừa hưởng ng&ocirc;n ngữ bo cong mềm mại.&nbsp;Trong đ&oacute; bộ khung, ph&iacute;m bấm vật l&yacute; hay c&aacute;c chi tiết c&oacute; mức độ ho&agrave;n thiện tuyệt vời l&agrave; điều kh&ocirc;ng thể b&agrave;n c&atilde;i. Kh&ocirc;ng mang lại vẻ mạnh mẽ như c&aacute;c sản phẩm Android nhưng đẹp v&agrave; sang trọng, mang lại khả năng thao t&aacute;c hay sử dụng thoải m&aacute;i l&agrave; những nhận x&eacute;t ban đầu của m&igrave;nh về iPhone 6s.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn4.tgdd.vn/Files/2015/11/07/735324/24giotrainghiemiphone6s23.jpg" style="height:450px; width:800px" /><img alt="" src="https://cdn.tgdd.vn/Files/2015/11/07/735324/24giotrainghiemiphone6s3.jpg" style="height:450px; width:800px" /><img alt="" src="https://cdn1.tgdd.vn/Files/2015/11/07/735324/24giotrainghiemiphone6s24.jpg" style="height:450px; width:800px" /></p>\r\n\r\n<p style="text-align: justify;">Đ&acirc;y kh&ocirc;ng phải l&agrave; một điểm qu&aacute; nổi bật nhưng m&igrave;nh cũng phải nhận x&eacute;t nền tảng<a href="https://www.thegioididong.com/tin-tuc/tim-kiem?key=iOS" target="_blank" title="tin tức về iOS" type="tin tức về iOS">iOS</a>&nbsp;quản l&yacute; t&agrave;i nguy&ecirc;n rất tốt v&agrave; hơn hẳn những chiếc smartphone Android cao cấp m&igrave;nh từng d&ugrave;ng.&nbsp;Đ&uacute;ng như những nhận định về sự tối ưu h&oacute;a giữa phần cứng v&agrave; phần mềm của Apple qu&aacute; ho&agrave;n hảo. Chỉ cần vi xử l&yacute; 2 nh&acirc;n, RAM 2GB, iPhone 6s đ&aacute;nh bại hầu hết c&aacute;c smartphone đầu bảng hiện nay.</p>\r\n\r\n<p style="text-align: justify;">Ngay trong buổi lễ giới thiệu c&aacute;ch đ&acirc;y 2 th&aacute;ng, m&igrave;nh rất ấn tượng khi Apple tr&igrave;nh diễn c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-kiem?key=3D+Touch" target="_blank" title="công nghệ 3D Touch" type="công nghệ 3D Touch">3D Touch</a>&nbsp;khi chơi game, qu&aacute; mới mẻ v&agrave; độc đ&aacute;o n&ecirc;n m&igrave;nh bắt tay ngay v&agrave;o trải nghiệm v&agrave; t&igrave;m hiểu t&iacute;nh năng n&agrave;y.&nbsp;Khi ch&uacute;ng ta nhấn v&agrave; giữ một lực vừa phải v&agrave;o c&aacute;c ứng dụng th&igrave; sẽ xuất hiện một bảng c&aacute;c lựa chọn. V&iacute; như như: Tr&igrave;nh gọi điện, nhắn tin, camera, tr&igrave;nh duyệt... hay trong c&aacute;c ứng dụng ch&uacute;ng ta vuốt từ cạnh m&agrave;n h&igrave;nh ra giữa sẽ xuất hiện giao diện đa nhiệm.</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n', 2, 10),
(23, '[Góc nhìn] Galaxy S6 Edge: Khi Android đạt tới đỉnh cao của thời trang', 'tin1.jpg', 'Siêu phẩm của LG trong năm nay, LG G4 chuẩn bị được bán ra thị trường với nắp lưng được làm bằng da, HTC One M9 thì lại không có nhiều điểm khác biệt với đàn anh năm ngoái, còn Sony Xperia Z4 lại không được bán ra tại Mĩ. Cuối cùng, ở thời điểm hiện tại, chỉ có iPhone là có thiết kế bo tròn và chính vì điều đó, Samsung cũng ra mắt quả bom tấn của riêng mình.', '<p dir="ltr" style="text-align: justify;">Thậm ch&iacute; ngay cả Galaxy S6 cũng mang tr&ecirc;n m&igrave;nh kh&aacute; nhiều sự cải tiến so với thế hệ của năm trước. C&ograve;n khi nhận định về&nbsp;<strong>S6 Edge</strong>, si&ecirc;u phẩm n&agrave;y dường như đ&atilde; b&aacute;o trước về xu hướng trong tương lai rằng smartphone sẽ phục vụ cho cả lĩnh vực thời trang.</p>\r\n\r\n<p dir="ltr" style="text-align: justify;">Thời trang bỗng nhi&ecirc;n trở n&ecirc;n quan trọng hơn. Với sự ra mắt của iPhone 6, n&oacute; tiếp tục g&acirc;y ra hiệu ứng mới tr&ecirc;n thị trường khi m&agrave; những người cuồng về thời trang đắn đo rằng n&ecirc;n bỏ h&agrave;ng trăm đ&ocirc; la cho thương hiệu n&agrave;o tr&ecirc;n thị trường smartphone. Tất nhi&ecirc;n, ch&uacute;ng ta sẽ kh&ocirc;ng n&oacute;i đến nhiều về thời trang v&igrave; chiếc điện thoại cũng chỉ nằm trong t&uacute;i ch&uacute;ng ta m&agrave; th&ocirc;i. Thay v&agrave;o đ&oacute; sẽ l&agrave; những nhận định về thiết kế cả về b&ecirc;n trong lẫn b&ecirc;n ngo&agrave;i.</p>\r\n\r\n<p dir="ltr" style="text-align: justify;"><img alt="" src="https://cdn2.tgdd.vn/Files/2015/05/03/639012/galaxy-s6-edge-lens-2.jpg" style="height:311px; width:800px" /></p>\r\n\r\n<p dir="ltr" style="text-align: justify;"><strong>Trước hết l&agrave; phần mặt lưng</strong></p>\r\n\r\n<p dir="ltr" style="text-align: justify;">Điểm đầu ti&ecirc;n khiến bạn để &yacute; đến chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s6-edge" target="_blank" title="Điện thoại Samsung Galaxy S6 Edge 32GB">Samsung Galaxy S6 Edge</a>&nbsp;hay S6 ở phần mặt lưng đ&oacute; ch&iacute;nh l&agrave; camera lồi. Tr&ecirc;n thực tế, phần camera của S6 Edge được thiết kế kh&ocirc;ng thực sự đẹp mắt cho lắm v&agrave; với việc vừa được sử dụng S6 Edge th&igrave; người d&ugrave;ng cũng sẽ mất một khoảng thời gian để l&agrave;m quen với &#39;khối u&#39; n&agrave;y. Cụm camera tr&ecirc;n S6 Edge c&ograve;n khiến ch&uacute;ng ta lo lắng về việc do lồi l&ecirc;n kh&aacute; cao n&ecirc;n n&oacute; c&oacute; thể dễ d&agrave;ng để lại một vết xước lớn. Tuy nhi&ecirc;n, h&atilde;y nh&igrave;n v&agrave;o một số điểm t&iacute;ch cực ở camera của S6 Edge.</p>\r\n\r\n<p dir="ltr" style="text-align: justify;">Thứ nhất, lớp k&iacute;nh tr&ecirc;n nắp lưng của S6 Edge v&agrave; phần viền kim loại của n&oacute; để lại một khoảng trống kh&aacute; nhỏ. Nhưng h&atilde;y y&ecirc;n t&acirc;m rằng khoảng trống n&agrave;y sẽ kh&ocirc;ng dễ d&agrave;ng g&igrave; bị c&aacute;c vật thể nhỏ, cho d&ugrave; c&oacute; l&agrave; bụi chui lọt v&agrave;o, &iacute;t nhất l&agrave; trong v&agrave;i tuần sử dụng đầu ti&ecirc;n. Điều n&agrave;y cũng đ&uacute;ng với viền kim loại bao quanh camera của S6 Edge.</p>\r\n\r\n<p dir="ltr" style="text-align: justify;">Việc thiết kế cụm camera v&agrave; cảm biến tr&ecirc;n S6 Edge cũng kh&aacute;c với c&aacute;c thiết bị Galaxy trước đ&acirc;y. Th&ocirc;ng thường, cảm biến đo nhịp tim v&agrave; đ&egrave;n Flash LED đều được đặt ở b&ecirc;n dưới camera. Điều n&agrave;y khiến cho thiết kế c&oacute; phần đối xứng v&agrave; h&agrave;i ho&agrave; hơn. Tuy nhi&ecirc;n, ch&uacute;ng ta kh&ocirc;ng cần sự đối xứng, ch&uacute;ng ta cần c&aacute;i đẹp.</p>\r\n\r\n<p dir="ltr" style="text-align: justify;">Thỉnh thoảng th&igrave; đối xứng vẫn đem lại cảm gi&aacute;c đẹp nhưng nếu ch&uacute;ng ta kết hợp giữa đối xứng v&agrave; bất đối xứng, n&oacute; sẽ tạo n&ecirc;n sự kh&aacute;c biệt giữa việc thiết kế một c&aacute;ch m&aacute;y m&oacute;c v&agrave; thiết kế theo hướng nghệ thuật. V&agrave; ở điểm n&agrave;y,&nbsp;<a href="https://www.thegioididong.com/dtdd-samsung" target="_blank" title="Điện thoại Samsung">Samsung</a>&nbsp;đ&atilde; th&agrave;nh c&ocirc;ng trong việc thiết kế sản phẩm của m&igrave;nh khi dũng cảm kh&ocirc;ng thiết kế theo một lối m&ograve;n định sẵn m&agrave; chấp nhận thay đổi.</p>\r\n\r\n<p dir="ltr" style="text-align: justify;"><img alt="" src="https://cdn3.tgdd.vn/Files/2015/05/03/639012/samsung-galaxy-s6-edge-2.jpg" style="height:380px; width:800px" /></p>\r\n\r\n<p dir="ltr" style="text-align: justify;"><strong>C&aacute;c ph&iacute;m bấm ở cạnh tr&aacute;i v&agrave; phải</strong></p>\r\n\r\n<p dir="ltr" style="text-align: justify;">Ch&uacute;ng ta sẽ chỉ t&igrave;m thấy n&uacute;t nguồn ở cạnh phải, trong khi đ&oacute;, cạnh tr&aacute;i sẽ l&agrave; nơi chứa hai ph&iacute;m tăng, giảm &acirc;m lượng. C&oacute; lẽ khi lần đầu cầm S6 Edge, bạn sẽ cho rằng n&uacute;t nguồn của sản phẩm n&agrave;y được thiết kế theo ngẫu hứng, tức l&agrave; đặt một c&aacute;ch tuỳ &yacute;. Nhưng khi quan s&aacute;t đến hai ph&iacute;m tăng, giảm &acirc;m lượng bạn sẽ thấy thực tế n&oacute; kh&ocirc;ng hề được đặt theo một c&aacute;ch ngẫu nhi&ecirc;n. Khoảng c&aacute;ch giữa c&aacute;c n&uacute;t bấm v&agrave; kh&ocirc;ng gian m&aacute;y l&agrave; rất hợp l&yacute;, đủ để đặt một ph&iacute;m bấm kh&aacute;c c&oacute; c&ugrave;ng k&iacute;ch thước.</p>\r\n\r\n<p dir="ltr" style="text-align: justify;">Đi dọc theo phần viền kim loại, n&uacute;t tiếp theo bạn t&igrave;m thấy sẽ l&agrave; n&uacute;t nguồn. Những ph&iacute;m bấm n&agrave;y được đặt ở một vị tr&iacute; rất ho&agrave;n hảo cho ng&oacute;n trỏ v&agrave; ng&oacute;n c&aacute;i của người d&ugrave;ng nhưng l&agrave; với người d&ugrave;ng thuận tay phải.</p>\r\n\r\n<p dir="ltr"><strong>Bề mặt cong của S6 Edge</strong></p>\r\n\r\n<p dir="ltr">C&oacute; thể n&oacute;i phần m&agrave;n h&igrave;nh cong n&agrave;y l&agrave; điểm g&acirc;y ấn tượng nhất cho S6 Edge. N&oacute; mở ra một định nghĩa mới về thiết kế, nơi m&agrave; hầu như c&aacute;c h&atilde;ng kh&aacute;c vẫn đang bế tắc. Mặc d&ugrave; m&agrave;n h&igrave;nh cong của S6 Edge đ&atilde; chiếm gần hết phần viền khiến cho đ&ocirc;i mắt kh&ocirc;ng chỉ tập trung v&agrave;o m&agrave;n h&igrave;nh ch&iacute;nh m&agrave; c&ograve;n ở r&igrave;a m&agrave;n h&igrave;nh nữa. Tuy nhi&ecirc;n, cũng nhờ v&agrave;o phần m&agrave;n h&igrave;nh cong n&agrave;y m&agrave; S6 Edge tận dụng tối đa kh&ocirc;ng gian hiển thị. Trải nghiệm m&agrave;n h&igrave;nh cong của S6 Edge ban đầu sẽ đem lại cảm gi&aacute;c kh&aacute; l&agrave; &#39;dị&#39; v&igrave; bạn sẽ chỉ ch&uacute; t&acirc;m v&agrave;o phần r&igrave;a cong n&agrave;y d&ugrave; đang xem nội dung ở chế độ full-screen. Song, điều n&agrave;y lại đem đến một trải nghiệm độc đ&aacute;o v&agrave; ch&uacute;ng ta sẽ l&agrave;m quen dần với n&oacute; chỉ sau v&agrave;i tuần sử dụng.</p>\r\n\r\n<p dir="ltr"><strong>Kết</strong></p>\r\n\r\n<p dir="ltr">N&oacute;i một c&aacute;ch kh&ocirc;ng ngoa,&nbsp;<strong>Samsung Galaxy S6 Edge</strong>&nbsp;l&agrave; một chiếc smartphone tuyệt vời theo phong c&aacute;ch ri&ecirc;ng của n&oacute;. Sở hữu một camera c&oacute; chất lượng cao, hệ điều h&agrave;nh Android kh&ocirc;ng bị c&agrave;i qu&aacute; nhiều t&iacute;nh năng thừa thải như những thiết bị Samsung trước đ&acirc;y v&agrave; quan trọng hơn đ&oacute; l&agrave; những g&igrave; S6 Edge c&oacute; thể l&agrave;m được tr&ecirc;n m&agrave;n h&igrave;nh của n&oacute; thực sự rất ấn tượng. C&oacute; thể n&oacute;i rằng S6 Edge đang l&agrave; thiết bị mở đầu cho những điều mới mẻ trong tương lai.</p>\r\n\r\n<p dir="ltr"><strong>Bề mặt cong của S6 Edge</strong></p>\r\n\r\n<p dir="ltr">C&oacute; thể n&oacute;i phần m&agrave;n h&igrave;nh cong n&agrave;y l&agrave; điểm g&acirc;y ấn tượng nhất cho S6 Edge. N&oacute; mở ra một định nghĩa mới về thiết kế, nơi m&agrave; hầu như c&aacute;c h&atilde;ng kh&aacute;c vẫn đang bế tắc. Mặc d&ugrave; m&agrave;n h&igrave;nh cong của S6 Edge đ&atilde; chiếm gần hết phần viền khiến cho đ&ocirc;i mắt kh&ocirc;ng chỉ tập trung v&agrave;o m&agrave;n h&igrave;nh ch&iacute;nh m&agrave; c&ograve;n ở r&igrave;a m&agrave;n h&igrave;nh nữa. Tuy nhi&ecirc;n, cũng nhờ v&agrave;o phần m&agrave;n h&igrave;nh cong n&agrave;y m&agrave; S6 Edge tận dụng tối đa kh&ocirc;ng gian hiển thị. Trải nghiệm m&agrave;n h&igrave;nh cong của S6 Edge ban đầu sẽ đem lại cảm gi&aacute;c kh&aacute; l&agrave; &#39;dị&#39; v&igrave; bạn sẽ chỉ ch&uacute; t&acirc;m v&agrave;o phần r&igrave;a cong n&agrave;y d&ugrave; đang xem nội dung ở chế độ full-screen. Song, điều n&agrave;y lại đem đến một trải nghiệm độc đ&aacute;o v&agrave; ch&uacute;ng ta sẽ l&agrave;m quen dần với n&oacute; chỉ sau v&agrave;i tuần sử dụng.</p>\r\n\r\n<p dir="ltr"><strong>Kết</strong></p>\r\n\r\n<p dir="ltr">N&oacute;i một c&aacute;ch kh&ocirc;ng ngoa,&nbsp;<strong>Samsung Galaxy S6 Edge</strong>&nbsp;l&agrave; một chiếc smartphone tuyệt vời theo phong c&aacute;ch ri&ecirc;ng của n&oacute;. Sở hữu một camera c&oacute; chất lượng cao, hệ điều h&agrave;nh Android kh&ocirc;ng bị c&agrave;i qu&aacute; nhiều t&iacute;nh năng thừa thải như những thiết bị Samsung trước đ&acirc;y v&agrave; quan trọng hơn đ&oacute; l&agrave; những g&igrave; S6 Edge c&oacute; thể l&agrave;m được tr&ecirc;n m&agrave;n h&igrave;nh của n&oacute; thực sự rất ấn tượng. C&oacute; thể n&oacute;i rằng S6 Edge đang l&agrave; thiết bị mở đầu cho những điều mới mẻ trong tương lai.</p>\r\n\r\n<p dir="ltr" style="text-align: justify;"><img alt="" src="https://cdn2.tgdd.vn/Files/2015/05/03/639012/samsung-galaxy-s6-edge-3.jpg" style="height:306px; width:800px" /></p>\r\n\r\n<p dir="ltr" style="text-align: justify;">C&ograve;n về nh&agrave; sản xuất của n&oacute;, Samsung đang c&oacute; một lợi thế rất lớn về việc ph&aacute;t triển cũng như ra đời những thiết bị mang t&iacute;nh c&aacute;ch mạng giống như S6 Edge, những sản phẩm c&oacute; sự kh&aacute;c biệt so với những g&igrave; bạn h&igrave;nh dung về một chiếc smartphone ở thời điểm hi&ecirc;n tại. Ch&uacute;ng sẽ cạnh tranh trực tiếp với c&aacute;c smartphone tốt nhất thế giới th&ocirc;ng qua thiết kế, c&aacute;ch tận dụng r&igrave;a m&agrave;n h&igrave;nh hay bất k&igrave; thứ g&igrave; m&agrave; những nh&agrave; sản xuất kh&aacute;c chưa l&agrave;m được.</p>\r\n\r\n<p dir="ltr" style="text-align: justify;">Tất nhi&ecirc;n, ngo&agrave;i Samsung, ch&uacute;ng ta vẫn sẽ mong chờ th&ecirc;m nhiều sự đột ph&aacute;, l&agrave;n gi&oacute; mới mẻ trong kĩ thuật hay thiết kế của những &ocirc;ng lớn kh&aacute;c hoặc thậm ch&iacute; l&agrave; cả &#39;t&acirc;n binh&#39;.</p>\r\n', 2, 11),
(24, 'Samsung đang từng bước cải thiện giao diện của riêng mình', 'tin3.jpg', 'Theo như chúng ta được biết, TouchWiz là một giao diện cảm ứng thuộc công ty Samsung Electronics và các đối tác, một giao diện đầy đủ giúp khách hang sử dụng dễ dàng thiết bị của họ. Samsung hiện nay đang tiếp tục đẩy mạnh giao diện TouchWiz này.', '<h2 style="text-align: justify;">Theo như ch&uacute;ng ta được biết,<a href="https://www.thegioididong.com/tin-tuc/giao-dien-touchwiz-moi-tren-galaxy-s7-s7-edge-790745" target="_blank" title="touchwiz" type="touchwiz">&nbsp;TouchWiz&nbsp;</a>l&agrave; một giao diện cảm ứng thuộc c&ocirc;ng ty Samsung Electronics v&agrave; c&aacute;c đối t&aacute;c, một giao diện đầy đủ gi&uacute;p kh&aacute;ch hang sử dụng dễ d&agrave;ng thiết bị của họ. Samsung hiện nay đang tiếp tục đẩy mạnh giao diện TouchWiz n&agrave;y.</h2>\r\n\r\n<p style="text-align: justify;">Theo nguồn tin từ<a href="http://www.sammobile.com/2016/04/28/samsung-is-testing-a-power-efficient-touchwiz-launcher/" rel="nofollow" target="_blank" title="sammobile" type="sammobile">&nbsp;Sammobile&nbsp;</a>cho biết, trước đ&acirc;y Samsung đ&atilde; cố gắng đẩy mạnh giao diện TouchWiz l&ecirc;n c&aacute;c d&ograve;ng điện thoại<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s6" target="_blank" title="galaxy s6" type="galaxy s6">&nbsp;Galaxy S6&nbsp;</a>v&agrave;<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s6-edge" target="_blank" title="galaxy s6 edge" type="galaxy s6 edge">&nbsp;Galaxy S6 Edge</a>&nbsp;nhưng c&oacute; vẻ như họ vẫn chưa vừa &yacute;. Cho đến nay, họ đ&atilde; quyết định sẽ sử dụng chức năng Vulkan APIS kết hợp với TouchWiz, thử nghiệm tr&ecirc;n c&aacute;c d&ograve;ng<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s7" target="_blank" title="galaxy s7" type="galaxy s7">&nbsp;Galaxy S7&nbsp;</a>v&agrave;<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s7-edge?gclid=Cj0KEQjw6Ya5BRDdyOewyo_Z_64BEiQA-fVKewmfLAZa8a2kIOaF6NE5ZVze7HmhECPR5dP39btno8AaAthi8P8HAQ" target="_blank" title="galaxy s7 edge" type="galaxy s7 edge">&nbsp;S7 Edge</a>, điều n&agrave;y sẽ cho ch&uacute;ng ta một c&aacute;i nh&igrave;n mới về sản phẩm của họ.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="https://cdn.tgdd.vn/Files/2016/04/28/821750/samsung.jpg" style="height:277px; width:800px" />Sự ph&aacute;t triển của TouchWiz tr&ecirc;n Samsung qua nhiều thế hệ</p>\r\n\r\n<p style="text-align: justify;">Dựa tr&ecirc;n sự kiện Samsung Developers Conference 2016 vừa qua, c&aacute;c kỹ sư của Samsung đ&atilde; cho ch&uacute;ng ta biết được, kh&ocirc;ng những c&aacute;c khả năng của 2 d&ograve;ng điện thoại Galaxy S7 v&agrave; S7 Edge được n&acirc;ng cao, tăng hiệu suất l&agrave;m việc l&ecirc;n đến 64% v&agrave; đồng thời pin điện thoại sẽ sử dụng được l&acirc;u hơn so với b&igrave;nh thường.</p>\r\n\r\n<p style="text-align: justify;">Qua những th&ocirc;ng tin n&agrave;y, ch&uacute;ng ta c&oacute; thể thấy được, Samsung đang từng bước ph&aacute;t triển hơn nữa trong việc l&agrave;m ra c&aacute;c sản phẩm chất lượng để l&agrave;m cho c&aacute;c kh&aacute;ch h&agrave;ng của m&igrave;nh th&ecirc;m phần h&agrave;i l&ograve;ng về họ. V&agrave; hi vọng rằng, sản phẩm giao diện TouchWiz ho&agrave;n to&agrave;n mới n&agrave;y sẽ đến với ch&uacute;ng ta nhanh nhất c&oacute; thể.</p>\r\n', 5, 11),
(25, 'Phát hiện tính năng ẩn trên camera Galaxy S7 và S7 Edge', 'tin4.jpg', 'Theo nguồn tin từ trang Phonearena, siêu phẩm Samsung Galaxy S7 và S7 Edge có một tính năng mới rất hay lấy cảm hứng từ HTC Zoe và Apple Live Photos được gọi là Motion Photo. Tuy Samsung không hề giới thiệu về tính năng này tại bài thuyết trình về Galaxy S7, nhưng một số hình ảnh từ nguồn tin không chính thức đã cho ta nhiều thông tin về tính năng này', '<p style="text-align: center;"><img alt="" src="https://cdn2.tgdd.vn/Files/2016/02/25/792366/samsung-galaxy-s7-edge-motion.jpg" style="height:441px; width:800px" />H&igrave;nh ảnh về t&iacute;nh năng Motion Photo</p>\r\n\r\n<p style="text-align: justify;">Nếu bạn c&oacute; cơ hội sử dụng Galaxy S7 hoặc S7 Edge, h&atilde;y v&agrave;o mục Settings trong ứng dụng Camera, bạn sẽ thấy một t&iacute;nh năng c&oacute; thể Motion Photo. Với t&iacute;nh năng n&agrave;y, chiếc smartphone sẽ gi&uacute;p bạn chụp một loạt h&igrave;nh ảnh li&ecirc;n tiếp v&agrave; bạn c&oacute; thể xem lại dưới dạng file&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-kiem?key=GIF" target="_blank" title="GIF" type="GIF">GIF</a>. T&iacute;nh năng n&agrave;y gi&uacute;p bạn c&oacute; thể lưu lại những khoảnh khắc ngắn một c&aacute;ch dễ d&agrave;ng &ndash; khi m&agrave; việc quay video qu&aacute; phiền phức.</p>\r\n', 1, 12),
(26, 'Galaxy S7 là 1 trong 5 smartphone bán chạy nhất quý I/2016', 'tin5.jpg', 'Báo cáo của công ty nghiên cứu thị trường Kantar sát với kết quả kinh doanh Samsung công bố đầu cuối tháng 4. Thật bất ngờ là Samsung Galaxy S7 đã trở thành 1 trong 5 smartphone đáng mua nhất năm 2016, vậy lý do từ đâu?', '<h2 style="text-align: justify;">B&aacute;o c&aacute;o của c&ocirc;ng ty nghi&ecirc;n cứu thị trường Kantar s&aacute;t với kết quả kinh doanh Samsung c&ocirc;ng bố đầu cuối th&aacute;ng 4. Thật bất ngờ l&agrave;&nbsp;<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s7" target="_blank" title="Samsung Galaxy S7">Samsung Galaxy S7</a>&nbsp;đ&atilde; trở th&agrave;nh 1 trong 5 smartphone đ&aacute;ng mua nhất năm 2016, vậy l&yacute; do từ đ&acirc;u?</h2>\r\n\r\n<p style="text-align: justify;">Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/tin-tuc/samsung-dang-ky-bang-sang-che-tich-hop-may-chieu-vao-smartwatch-828542" target="_blank" title="Samsung đăng ký bằng sáng chế tích hợp máy chiếu vào smartwatch">Samsung đăng k&yacute; bằng s&aacute;ng chế t&iacute;ch hợp m&aacute;y chiếu v&agrave;o smartwatch</a></p>\r\n\r\n<p style="text-align: justify;">Kantar WorldPanel, c&ocirc;ng ty h&agrave;ng đầu thế giới về nghi&ecirc;n cứu thị trường trong b&aacute;o c&aacute;o mới đ&acirc;y đ&atilde; cho biết bộ đ&ocirc;i Galaxy S7 v&agrave; S7 edge của Samsung chiếm 5.8% thị phần smartphone b&aacute;n ra trong qu&yacute; I/2016.&nbsp;Nh&agrave; ph&acirc;n t&iacute;ch Lauren Guenveur cũng đ&atilde; chỉ ra rằng Galaxy S7 l&agrave; một trong năm di động b&aacute;n chạy nhất qu&yacute; I/2016. Đ&acirc;y được coi l&agrave; con số ấn tượng khi hai thiết bị n&agrave;y được ph&aacute;t h&agrave;nh 11/3 - 3 tuần cuối c&ugrave;ng của qu&yacute; I.</p>\r\n\r\n<p style="text-align: justify;">Kantar khảo s&aacute;t những người mua S7 v&agrave; S7 edge tại Mỹ v&agrave; đưa ra kết quả: 53.5% người sở hữu do model c&oacute; dung lượng pin lớn (mặc d&ugrave; thời lượng sử dụng kh&ocirc;ng c&oacute; nhiều cải tiến, sạc kh&ocirc;ng d&acirc;y v&agrave; sạc nhanh). 50.9% &yacute; kiến cho rằng chất lượng m&aacute;y ảnh l&agrave; điều họ quan t&acirc;m tr&ecirc;n sản phẩm n&agrave;y. C&aacute;c yếu tố như dung lượng bộ nhớ hay c&oacute; cấu h&igrave;nh m&aacute;y cũng ảnh hưởng đến quyết định mua của người d&ugrave;ng.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="https://cdn.tgdd.vn/Files/2016/05/15/828897/galaxys7_2.jpg" style="height:533px; width:800px" />Theo dự đo&aacute;n, Galaxy S7 sẽ c&oacute; doanh số cao trong qu&yacute; II/2016. Ảnh:&nbsp;Android Authority.</p>\r\n\r\n<p style="text-align: justify;">Ngo&agrave;i ra, 38.8% người mua S7 v&agrave; S7 edge l&agrave; do c&aacute;c chương tr&igrave;nh truyền th&ocirc;ng quảng b&aacute; sản phẩm của Samsung: 12.2% do được miễn ph&iacute; hoặc giảm gi&aacute;, 10.3% được giảm gi&aacute; hoặc tặng k&egrave;m phụ kiện.&nbsp;Do chỉ b&aacute;n trong 3 tuần cuối của qu&yacute; I n&ecirc;n Kantar dự đo&aacute;n doanh số của S7 trong qu&yacute; tiếp theo sẽ c&ograve;n cao hơn do c&aacute;c sản phẩm cạnh tranh trực tiếp như HTC 10 v&agrave; LG G5 kh&ocirc;ng được thị trường đ&oacute;n nhận.</p>\r\n\r\n<p style="text-align: justify;">Nghi&ecirc;n cứu của Kantar cũng s&aacute;t với b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh qu&yacute; II (năm t&agrave;i ch&iacute;nh của Samsung), theo đ&oacute; lợi nhuận của&nbsp;<a href="https://www.thegioididong.com/dtdd-samsung" target="_blank" title="Samsung ">Samsung&nbsp;</a>tăng 12% so với c&ugrave;ng kỳ năm ngo&aacute;i, mảng kinh doanh di động tăng 42% so với qu&yacute; II/2014. Doanh số của Galaxy S7 đ&atilde; gi&uacute;p h&atilde;ng c&oacute; kết quả quả ấn tượng.</p>\r\n', 1, 12),
(27, 'So sánh Galaxy Note 5 vs LG V10: Bộ đôi phablet ''đỉnh'' tranh tài!', 'tin6.jpg', 'Từ xưa đến nay các phablet đến từ LG chưa bao giờ là đối thủ xứng tấm của dòng Galaxy Note, nhưng có lẽ lịch sử sẽ thay đổi khi chiếc LG V10 ra mắt. Dưới đây là những so sánh tổng quan bộ đôi phablet đến từ hai nhà sản xuất đồng hương này.', '<p style="text-align: justify;"><strong>1. Thiết kế</strong></p>\r\n\r\n<p style="text-align: justify;">Ng&ocirc;n ngữ thiết kế của 2 sản phẩm ho&agrave;n to&agrave;n tr&aacute;i ngược nhau.&nbsp;<strong>Galaxy Note 5</strong>&nbsp;được xem l&agrave; chiếc Note đẹp nhất từ trước đến nay của&nbsp;<a href="https://www.thegioididong.com/dtdd-samsung" target="_blank" title="smartphone samsung" type="smartphone samsung">Samsung</a>&nbsp;phần với khung viền bằng kim loại kết hợp với hai mặt k&iacute;nh cường lực sang trọng, mặt lưng được l&agrave;m bo cong (kh&aacute; giống với Xiaomi Redmi Note) gi&uacute;p cho việc cầm nắm dễ d&agrave;ng hơn.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn1.tgdd.vn/Files/2015/10/08/717032/hinh4.jpg" style="height:560px; width:800px" /></p>\r\n\r\n<p style="text-align: justify;">Trong khi đ&oacute;,&nbsp;<strong>LG V10</strong>&nbsp;c&oacute; thiết kế mạnh mẽ với khung th&eacute;p kh&ocirc;ng gỉ 306L (loại chất liệu thường được sử dụng tr&ecirc;n c&aacute;c đồng hồ cao cấp), mặt lưng được l&agrave;m bằng chất liệu&nbsp;<strong>Dura Skins</strong>&nbsp;giảm sốc cũng như tăng khả năng bảo vệ m&aacute;y khỏi những c&uacute; rơi rớt, va đập.</p>\r\n\r\n<p style="text-align: justify;"><strong><em>H&igrave;nh ảnh so s&aacute;nh thiết kế:</em></strong></p>\r\n\r\n<p style="text-align: justify;"><strong><em><img alt="" src="https://cdn2.tgdd.vn/Files/2015/10/08/717032/hinh12.jpg" style="height:600px; width:800px" /></em>LG V10</strong>&nbsp;vẫn sử dụng tấm nền IPS Quantum giống với đ&agrave;n anh&nbsp;<a href="https://www.thegioididong.com/dtdd/lg-g4" target="_blank" title="xem giá bán LG G4" type="xem giá bán LG G4">LG G4</a>&nbsp;cho khả năng t&aacute;i tạo m&agrave;u sắc ch&iacute;nh x&aacute;c ch&acirc;n thực v&agrave; tự nhi&ecirc;n hơn, độ s&aacute;ng cũng được tăng th&ecirc;m 25% so với những loại m&agrave;n h&igrave;nh 2K th&ocirc;ng thường.</p>\r\n\r\n<p style="text-align: justify;"><strong>3. Hiệu năng</strong></p>\r\n\r\n<p style="text-align: justify;"><strong><img alt="" src="https://cdn.tgdd.vn/Files/2015/10/08/717032/hinh14-1.jpg" style="height:480px; width:800px" /></strong>Hai sản phẩm đều được trang bị một cấu h&igrave;nh rất mạnh mẽ gi&uacute;p giải quyết c&aacute;c t&aacute;c vụ từ nhẹ tới nặng một c&aacute;ch mượt m&agrave;.&nbsp;<strong>Galaxy Note 5</strong>&nbsp;sử dụng bộ vi xử l&yacute; 8 nh&acirc;n<a href="https://www.thegioididong.com/hoi-dap/suc-manh-cua-chipset-exynos-7420-tren-samsung-gala-629803" target="_blank" title="tìm hiểu chip Exynos 7420" type="tìm hiểu chip Exynos 7420">Exynos 7420</a>&nbsp;(64-bit) xung nhịp 2.1GHz, RAM 4GB. Trong khi đ&oacute;&nbsp;<strong>LG V10</strong>&nbsp;vẫn sử dụng chip 6 nh&acirc;n Qualcomm Snapdragon 808 giống với đ&agrave;n anh G4 nhưng được n&acirc;ng cấp bộ nhớ RAM ngang bằng với đối thủ.</p>\r\n\r\n<p style="text-align: justify;"><strong>4. T&iacute;nh năng&nbsp;</strong></p>\r\n\r\n<p style="text-align: justify;">Đều l&agrave; những flagship h&agrave;ng đầu n&ecirc;n mỗi m&aacute;y đều c&oacute; những t&iacute;nh năng vượt trội.&nbsp;<strong>Galaxy Note 5</strong>&nbsp;với&nbsp;c&acirc;y b&uacute;t&nbsp;<a href="https://www.thegioididong.com/tin-tuc/danh-gia-galaxy-note-5-phan-3-but-spen-voi-nhung-cai-tien-dot-pha-702863" target="_blank" title="đánh giá bút s pen trên Note 5" type="đánh giá bút s pen trên Note 5">S Pen</a>&nbsp;gi&uacute;p ch&uacute;ng ta kiểm so&aacute;t, tương t&aacute;c v&agrave; tối ưu m&agrave;n h&igrave;nh lớn một c&aacute;c dễ d&agrave;ng hơn.&nbsp;<strong>LG V10</strong>&nbsp;lại được trang bị th&ecirc;m một m&agrave;n h&igrave;nh phụ lu&ocirc;n mở đ&oacute;ng vai tr&ograve; hiển thị th&ocirc;ng tin về thời tiết, ng&agrave;y, giờ v&agrave; mức độ pin khi m&agrave;n h&igrave;nh ch&iacute;nh tắt. C&ograve;n khi m&agrave;n h&igrave;nh ch&iacute;nh mở, n&oacute; lại đ&oacute;ng vai tr&ograve; l&agrave; một Launcher nhỏ cho ph&eacute;p truy cập nhanh một số ứng dụng c&agrave;i trước, gọi nhanh cho một số điện thoại m&agrave; bạn thường hay sử dụng.</p>\r\n\r\n<p style="text-align: justify;"><strong>5. Camera&nbsp;</strong></p>\r\n\r\n<p style="text-align: justify;"><strong><img alt="" src="https://cdn.tgdd.vn/Files/2015/10/08/717032/camera.jpg" style="height:600px; width:800px" /></strong>Về mặt kĩ thuật đ&acirc;y đều l&agrave; những smartphone được trang bị camera tốt nhất tr&ecirc;n thị trường.&nbsp;<strong>Note 5</strong>&nbsp;sở hữu m&aacute;y ảnh ch&iacute;nh với cảm biến ảnh độ ph&acirc;n giải 16Mpx, khẩu độ f/1.9 hỗ trợ khả năng chống rung quang học v&agrave; c&ocirc;ng nghệ ổn định h&igrave;nh ảnh khi quay video VDIS.&nbsp;<strong>LG V10</strong>&nbsp;c&oacute; camera ch&iacute;nh c&ugrave;ng độ ph&acirc;n giải 16Mpx, nhưng khẩu độ lớn hơn f/1.8 hỗ trợ c&ocirc;ng nghệ chống rung quang học. Hai sản phẩm điều được trang bị thuật to&aacute;n xử l&yacute; ảnh hiện đại với rất nhiều t&iacute;nh năng chụp ảnh từ khả năng chụp tự động cho đến chế độ chỉnh tay chuy&ecirc;n nghiệp.</p>\r\n\r\n<p style="text-align: justify;"><strong>Kết luận</strong></p>\r\n\r\n<p style="text-align: justify;">Những so s&aacute;nh tr&ecirc;n chỉ mang t&iacute;nh tương đối để c&aacute;c bạn c&oacute; c&aacute;i nh&igrave;n kh&aacute;ch quan về 2 sản phẩm. Hiện tại thực sự kh&oacute; để đ&aacute;nh gi&aacute; xem thiết bị n&agrave;o vượt trội hơn v&igrave; mỗi sản phẩm c&oacute; một thế mạnh ri&ecirc;ng. Vậy bạn sẽ lựa chọn chiếc phablet n&agrave;o? Mời comment chia sẻ &yacute; kiến b&ecirc;n dưới b&agrave;i viết.</p>\r\n', 2, 13),
(28, 'Galaxy Note 6 sẽ có pin lên tới 4.000 mAh, có cả phiên bản “Edge”?', 'tin8.jpg', 'Từ xưa đến nay các phablet đến từ LG chưa bao giờ là đối thủ xứng tấm của dòng Galaxy Note, nhưng có lẽ lịch sử sẽ thay đổi khi chiếc LG V10 ra mắt. Dưới đây là những so sánh tổng quan bộ đôi phablet đến từ hai nhà sản xuất đồng hương này.', '<p style="text-align:justify"><strong>1. Thiết kế</strong></p>\r\n\r\n<p style="text-align:justify">Ng&ocirc;n ngữ thiết kế của 2 sản phẩm ho&agrave;n to&agrave;n tr&aacute;i ngược nhau.&nbsp;<strong>Galaxy Note 5</strong>&nbsp;được xem l&agrave; chiếc Note đẹp nhất từ trước đến nay của&nbsp;<a href="https://www.thegioididong.com/dtdd-samsung" target="_blank" title="smartphone samsung" type="smartphone samsung">Samsung</a>&nbsp;phần với khung viền bằng kim loại kết hợp với hai mặt k&iacute;nh cường lực sang trọng, mặt lưng được l&agrave;m bo cong (kh&aacute; giống với Xiaomi Redmi Note) gi&uacute;p cho việc cầm nắm dễ d&agrave;ng hơn</p>\r\n\r\n<p style="text-align:justify"><img alt="" src="https://cdn1.tgdd.vn/Files/2015/10/08/717032/hinh4.jpg" style="height:560px; width:800px" /></p>\r\n\r\n<p style="text-align:justify"><strong>Kết luận</strong></p>\r\n\r\n<p style="text-align:justify">Những so s&aacute;nh tr&ecirc;n chỉ mang t&iacute;nh tương đối để c&aacute;c bạn c&oacute; c&aacute;i nh&igrave;n kh&aacute;ch quan về 2 sản phẩm. Hiện tại thực sự kh&oacute; để đ&aacute;nh gi&aacute; xem thiết bị n&agrave;o vượt trội hơn v&igrave; mỗi sản phẩm c&oacute; một thế mạnh ri&ecirc;ng. Vậy bạn sẽ lựa chọn chiếc phablet n&agrave;o? Mời comment chia sẻ &yacute; kiến b&ecirc;n dưới b&agrave;i viết.</p>\r\n', 2, 13),
(29, 'Top 5 smartphone được giảm giá từ 1 đến hơn 2 triệu đồng (4/2016)', 'tin9.jpg', 'Top 5 smartphone được giảm giá sốc này đến từ phân khúc tầm trung và cao cấp. Bên cạnh đó, nhờ các gói khuyến mãi kèm theo, người dùng mới có thêm nhiều lựa chọn hấp dẫn để mua sắm và sở hữu một máy xịn.', '<h2 style="text-align: justify;">Top 5&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Đặt mua smartphone tại Thegioididong.com" type="Đặt mua smartphone tại Thegioididong.com">smartphone</a>&nbsp;được giảm gi&aacute; sốc n&agrave;y đến từ ph&acirc;n kh&uacute;c tầm trung v&agrave; cao cấp. B&ecirc;n cạnh đ&oacute;, nhờ c&aacute;c g&oacute;i khuyến m&atilde;i k&egrave;m theo, người d&ugrave;ng mới c&oacute; th&ecirc;m nhiều lựa chọn hấp dẫn để mua sắm v&agrave; sở hữu một m&aacute;y xịn.</h2>\r\n\r\n<h3 style="text-align: justify;"><strong>5.&nbsp;Samsung Galaxy Note 4</strong></h3>\r\n\r\n<p style="text-align: justify;">L&yacute; do lọt TOP: C&oacute; thể thấy Galaxy Note 4 l&agrave; chiếc smartphone được giảm gi&aacute; s&acirc;u nhất trong thời gian ngắn vừa qua. Do việc giảm gi&aacute; được chia ra th&agrave;nh nhiều đợt, m&agrave; mỗi đợt chỉ tầm 1 triệu đồng, n&ecirc;n trong b&agrave;i viết n&agrave;y m&aacute;y chỉ xếp ở vị tr&iacute; thứ 5. C&ograve;n những mẫu m&aacute;y kh&aacute;c to&agrave;n giảm gấp đ&ocirc;i. Với cấu h&igrave;nh của một chiếc&nbsp;flagship đời 2014, Galaxy Note 4 đủ tự tin h&uacute;t kh&aacute;ch ở ph&acirc;n kh&uacute;c tầm trung.</p>\r\n\r\n<p style="text-align: justify;">Ưu điểm kh&aacute;c: M&agrave;n h&igrave;nh&nbsp;<a href="https://www.thegioididong.com/tin-tuc/loai-man-hinh-tft-lcd-amoled-la-gi--592346#superamoled" target="_blank" title="Tìm hiểu màn hình Super AMOLED" type="Tìm hiểu màn hình Super AMOLED">Super AMOLED</a>&nbsp;5.7 inch (1440 x 2560 pixel) | Mở kh&oacute;a bằng v&acirc;n tay | Cấu h&igrave;nh mạnh v&agrave; b&uacute;t S Pen.</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n', 6, 13),
(30, 'Thử nghiệm thời lượng pin trên Lumia 950 và Lumia 950 XL', 'tin10.jpg', 'Bộ đôi Lumia 950/Lumia 950 XL đã lên kệ nhiều nước trên thế giới và sắp sửa lên kệ tại thị trường Việt Nam vì vậy thử nghiệm thời lượng pin sẽ góp phần giúp bạn quyết định đúng đắn hơn khi chuẩn bị ''tậu'' một trong hai mẫu smartphone này.', '<h2 style="text-align: justify;">Bộ đ&ocirc;i&nbsp;<a href="https://www.thegioididong.com/dtdd/microsoft-lumia-950" target="_blank" title="Lumia 950 " type="Lumia 950 ">Lumia 950</a>/<a href="https://www.thegioididong.com/dtdd/microsoft-lumia-950-xl" target="_blank" title="Lumia 950 XL" type="Lumia 950 XL">Lumia 950 XL</a>&nbsp;đ&atilde; l&ecirc;n kệ nhiều nước tr&ecirc;n thế giới v&agrave;&nbsp;<a href="https://www.thegioididong.com/tin-tuc/lumia-950-xl-lo-gia-ban-va-ngay-ban-ra-tai-viet-nam-752214" target="_blank" title="Giá bán Lumia 950 XL tại Việt Nam" type="Giá bán Lumia 950 XL tại Việt Nam">sắp sửa l&ecirc;n kệ tại thị trường Việt Nam</a>&nbsp;v&igrave; vậy thử nghiệm thời lượng pin sẽ g&oacute;p phần gi&uacute;p bạn quyết định đ&uacute;ng đắn hơn khi chuẩn bị &#39;tậu&#39; một trong hai mẫu&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="smartphone" type="smartphone">smartphone</a>&nbsp;n&agrave;y.</h2>\r\n\r\n<p style="text-align: justify;">Đầu ti&ecirc;n nhắc lại một ch&uacute;t về cấu h&igrave;nh của hai thiết bị. Cả hai đều sở hữu m&agrave;n h&igrave;nh AMOLED độ ph&acirc;n giải 2K, Lumia 950 c&oacute; m&agrave;n h&igrave;nh rộng 5.2 inch trong khi Lumia 950 XL c&oacute; m&agrave;n h&igrave;nh rộng 5.7 inch. Bộ vi xử l&yacute; cũng lần lượt l&agrave; 6 nh&acirc;n Snapdragon 808 v&agrave; 8 nh&acirc;n Snapdragon 810.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="https://cdn4.tgdd.vn/Files/2015/12/06/753438/lumia-950-xl-1.jpg" style="height:450px; width:800px" />Lumia 950 XL v&agrave; Lumia 950</p>\r\n\r\n<p style="text-align: justify;">Windows 10 Mobile đ&atilde; tạo ra kh&aacute; nhiều bất ngờ, cung cấp nhiều t&iacute;nh năng mới hơn, tối ưu h&oacute;a v&agrave; đặc biệt l&agrave; c&oacute; thể biến smartphone th&agrave;nh m&aacute;y t&iacute;nh để b&agrave;n, tăng hiệu quả cho c&ocirc;ng việc.&nbsp;<a href="https://www.thegioididong.com/tin-tuc/do-tai-quay-video-4k-chup-anh-giua-lumia-950-xl-voi-lg-g4-735645" target="_blank" title="Đọ camera giữa Lumia 950 XL và LG G4">Camera PureView cũng thực sự chất lượng</a>. Vậy thời lượng pin th&igrave; sao? Lumia 950 sở hữu pin 3.000mAh trong khi 950 XL sở hữu pin 3.340mAh. Dự kiến m&agrave;n h&igrave;nh lớn hơn, chip mạnh hơn sẽ ngốn pin hơn tuy nhi&ecirc;n suy nghĩ đ&oacute; l&agrave; sai lầm.</p>\r\n\r\n<p style="text-align: justify;">Trong thử nghiệm đ&agrave;m thoại 3G, Lumia 950 XL l&agrave; tuyệt vời với thời gian gần 17 giờ li&ecirc;n tục, gấp đ&ocirc;i so với thời lượng của Lumia 950.</p>\r\n', 5, 14);
INSERT INTO `technology_infor` (`id`, `name`, `image`, `description`, `main_description`, `tech_infor_category_id`, `product_id`) VALUES
(31, 'Cái nhìn về Lumia 950: Sự trở lại của Microsoft trong phân khúc cao cấp', 'tin11.jpg', 'Quét vọng mạc, kết nối chuột bàn phím với màn hình để trở thành một chiếc PC, đi kèm cấu hình mạnh mẽ là những điểm nổi bật trên chiếc flagship cao cấp của Microsoft, hãy xem những công nghệ tương lai này có đủ giúp Lumia 950 cạnh tranh với iPhone 6s, Xperia Z5, Galaxy S6... hay các đối thủ khác?', '<h2 style="text-align: justify;">Qu&eacute;t vọng mạc, kết nối chuột b&agrave;n ph&iacute;m với m&agrave;n h&igrave;nh để trở th&agrave;nh một chiếc PC, đi k&egrave;m cấu h&igrave;nh mạnh mẽ l&agrave; những điểm nổi bật tr&ecirc;n chiếc flagship cao cấp của Microsoft, h&atilde;y xem những c&ocirc;ng nghệ tương lai n&agrave;y c&oacute; đủ gi&uacute;p&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-kiem?key=Lumia+950" target="_blank" title="tin tức về lumia 950" type="tin tức về lumia 950">Lumia 950</a>&nbsp;cạnh tranh với iPhone 6s, Xperia Z5,&nbsp;<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s6" target="_blank" title="xem giá bán galaxy s6" type="xem giá bán galaxy s6">Galaxy S6</a>... hay c&aacute;c đối thủ kh&aacute;c?</h2>\r\n\r\n<p style="text-align: justify;"><strong>1. Thiết kế</strong></p>\r\n\r\n<p style="text-align: justify;">Trong khi những smartphone h&agrave;ng đầu hiện nay như&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone" target="_blank" title="Điện thoại iPhone" type="Điện thoại iPhone">iPhone</a>&nbsp;6s,&nbsp;Galaxy S6, Xperia Z5 hay&nbsp;<a href="https://www.thegioididong.com/dtdd/htc-one-m9" target="_blank" title="chi tiết One M9" type="chi tiết One M9">One M9</a>&nbsp;đều c&oacute; chung ng&ocirc;n ngữ thiết kế kim loại nguy&ecirc;n khối hoặc nh&ocirc;m k&iacute;nh tạo cảm gi&aacute;c sang trọng, cứng c&aacute;p th&igrave; Microsoft vẫn quyết định kho&aacute;c l&ecirc;n Lumia 950 bộ vỏ nhựa đen hoặc trắng mờ với c&aacute;c cạnh bo tr&ograve;n v&agrave; mặt trước được bảo vệ bằng k&iacute;nh cường lực Gorilla Glass 3.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn4.tgdd.vn/Files/2015/11/22/744638/microsoft-lumia-950-08-1.jpg" style="height:444px; width:800px" /></p>\r\n\r\n<p style="text-align: justify;">K&iacute;ch thước của m&aacute;y tương đương với c&aacute;c đối thủ v&agrave; sở hữu số đo&nbsp;lần lượt l&agrave; 145 x 73,2 x 8,25 mm nặng 150g, d&agrave;y hơn chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/sony-xperia-z5" target="_blank" title="xem giá bán xperia z5" type="xem giá bán xperia z5">Xperia Z5</a>&nbsp;một ch&uacute;t nhưng lại lại nhẹ hơn 4g nhờ bộ vỏ bằng nhựa. Nếu đ&atilde; thử cầm qua chiếc Z5 bạn c&oacute; thể thấy với k&iacute;ch thước n&agrave;y vẫn c&oacute; thể sử dụng bằng một tay. M&aacute;y&nbsp;cũng được trang bị khe cắm thẻ nhớ v&agrave; khe nanoSIM v&agrave; vi&ecirc;n pin 3.000mAh c&oacute; thể th&aacute;o rời để thay thế.</p>\r\n\r\n<p style="text-align: justify;">Ph&iacute;a tr&ecirc;n đỉnh m&aacute;y l&agrave; Jack tai nghe 3.5mm, cạnh phải l&agrave; c&aacute;c ph&iacute;m bấm &acirc;m lượng, n&uacute;t nguồn v&agrave; ph&iacute;m chụp ảnh chuy&ecirc;n dụng sắp xếp tương tự như tr&ecirc;n c&aacute;c thiết bị Lumia kh&aacute;c. Cạnh dưới toạ lạc cổng&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-kiem?key=USB-Type+C" target="_blank" title="tin tức USB Type-C" type="tin tức USB Type-C">USB-Type C</a>&nbsp;với khả năng sạc nhanh, tuy c&aacute;p mới n&agrave;y mang lại nhiều tiện dụng như tốc độ truyền dữ liệu nhanh hơn v&agrave; c&oacute; thể cắm cả hai chiều như c&aacute;p lightning tr&ecirc;n iPhone nhưng điểm hạn chế l&agrave; chuẩn n&agrave;y c&ograve;n chưa thật sự phổ biến.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn2.tgdd.vn/Files/2015/11/22/744638/microsoft-lumia-950-va-950xl-1.jpg" style="height:503px; width:800px" /></p>\r\n\r\n<p style="text-align: justify;">Mặt sau Lumia 950 ch&uacute;ng ta c&oacute; thể t&igrave;m thấy camera ch&iacute;nh 20MP kh&aacute; nổi bật với một cụm đ&egrave;n flash 3 t&ocirc;ng m&agrave;u gi&uacute;p chụp ảnh trong điều kiện thiếu s&aacute;ng tốt hơn, b&ecirc;n dưới l&agrave; logo&nbsp;<a href="https://www.thegioididong.com/dtdd-nokia" target="_blank" title="Microsoft" type="Microsoft">Microsoft</a>. Trong khi nhiều nh&agrave; sản xuất thường đưa loa ngo&agrave;i ra mặt trước hoặc xuống cạnh b&ecirc;n dưới để kh&ocirc;ng bị ảnh hưởng đến chất lượng &acirc;m thanh khi đặt tr&ecirc;n mặt phẳng th&igrave; Lumia 950 vẫn c&ograve;n bố tr&iacute; ở ph&iacute;a sau, c&oacute; thể một số người d&ugrave;ng sẽ kh&ocirc;ng th&iacute;ch điều n&agrave;y.</p>\r\n\r\n<p style="text-align: justify;"><strong>2. M&agrave;n h&igrave;nh</strong></p>\r\n\r\n<p style="text-align: justify;">Kh&ocirc;ng nằm ngo&agrave;i xu hướng điện thoại cao cấp năm 2015, Lumia 950 trang bị m&agrave;n h&igrave;nh&nbsp;<a href="https://www.thegioididong.com/tin-tuc/loai-man-hinh-tft-lcd-amoled-la-gi--592346#amoled" target="_blank" title="tìm hiểu màn hình amoled" type="tìm hiểu màn hình amoled">AMOLED</a>&nbsp;5,2 inch với độ ph&acirc;n giải 2K (2.560 x 1.440 pixels), mật độ điểm ảnh xấp xỉ 564ppi cao hơn cả bộ đ&ocirc;i iPhone 6s v&agrave; gần tương đương với chiếc Galaxy S6.&nbsp;Nhưng độ ph&acirc;n giải kh&ocirc;ng c&ograve;n quan trọng từ chuẩn Full HD trở l&ecirc;n, quan trọng hơn l&agrave; độ s&aacute;ng m&agrave;n h&igrave;nh v&agrave; khả năng hiển thị dưới trời nắng, thực tế cho thấy g&oacute;c nh&igrave;n của Lumia 950 kh&aacute; tốt nhưng khả năng hiển thị ngo&agrave;i trời nếu so s&aacute;nh th&igrave; c&oacute; lẽ Galaxy S6 vẫn l&agrave;m tốt hơn một ch&uacute;t.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn1.tgdd.vn/Files/2015/11/22/744638/microsoft-lumia-950-01-1.jpg" style="height:450px; width:800px" /></p>\r\n\r\n<p style="text-align: justify;">Điểm tiện lợi l&agrave; khi ở chế độ chờ m&agrave;n h&igrave;nh Lumia 950 sẽ hiển thị c&aacute;c th&ocirc;ng tin về ng&agrave;y, th&aacute;ng, đồng hồ... nhờ sử dụng m&agrave;n h&igrave;nh AMOLED n&ecirc;n điều n&agrave;y kh&ocirc;ng ảnh hưởng nhiều đến thời lượng pin của thiết bị. Tuy nhi&ecirc;n nếu kh&ocirc;ng th&iacute;ch bạn vẫn c&oacute; thể tắt đi trong phần c&agrave;i đặt.&nbsp;T&iacute;nh năng sử dụng bằng một tay cũng c&oacute; mặt tr&ecirc;n Lumia 950, ch&uacute;ng ta chỉ cần nhấn giữ ph&iacute;m home cho đến khi m&agrave;n h&igrave;nh thu xuống c&ograve;n một nửa giống như tr&ecirc;n&nbsp;<a href="https://www.thegioididong.com/iphone-6s" target="_blank" title="xem giá bán iphone 6s plus" type="xem giá bán iphone 6s plus">iPhone 6 Plus</a>.</p>\r\n\r\n<p style="text-align: justify;"><strong>3. Phần mềm</strong></p>\r\n\r\n<p style="text-align: justify;">N&oacute;i về kho ứng dụng, Windows Phone phải &quot;ngả mũ&quot; trước hai hệ điều h&agrave;nh đối thủ. Kh&ocirc;ng những thua về số lượng m&agrave; cả chất lượng cũng chưa đủ để cạnh tranh, lấy v&iacute; dụ như ứng dụng Facebook trải nghiệm chưa thật tốt, thiếu đi t&iacute;nh năng trả lời b&igrave;nh luận của người kh&aacute;c. Người d&ugrave;ng c&oacute; vẻ th&iacute;ch lướt mạng x&atilde; hội bằng tr&igrave;nh duyệt&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-kiem?key=Microsoft+Edge" target="_blank" title="tin tức về Edge" type="tin tức về Edge">Microsoft Edge</a>&nbsp;c&oacute; sẵn chứ kh&ocirc;ng sử dụng ứng dụng n&agrave;y.&nbsp;</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn.tgdd.vn/Files/2015/11/22/744638/cortana.jpg" style="height:442px; width:800px" />C&aacute;c ứng dụng b&ecirc;n thứ ba cũng c&ograve;n nhiều hạn chế v&igrave; kh&ocirc;ng nhiều lập tr&igrave;nh vi&ecirc;n tham gia ph&aacute;t triển. Mặc d&ugrave; gần đ&acirc;y đ&atilde; c&oacute; c&aacute;ch đưa một số&nbsp;<a href="https://www.thegioididong.com/game-ung-dung/cho-game-ung-dung" target="_blank" title="ứng dụng" type="ứng dụng">ứng dụng Android</a>&nbsp;l&ecirc;n Windows Phone 10 nhưng v&igrave; &quot;kh&ocirc;ng ch&iacute;nh chủ&quot; n&ecirc;n chưa thể tối ưu tốt được.&nbsp;Với c&aacute;c phần mềm t&iacute;ch hợp sẵn tr&ecirc;n m&aacute;y c&oacute; thể kể đến c&aacute;c ứng dụng văn ph&ograve;ng vốn l&agrave; thế mạnh của Microsoft kết hợp phụ kiện Display Dock gi&uacute;p kết nối với m&agrave;n h&igrave;nh, chuột hay b&agrave;n ph&iacute;m, l&uacute;c n&agrave;y bạn đ&atilde; c&oacute; thể sử dụng c&aacute;c t&iacute;nh năng trong m&aacute;y như một chiếc PC.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn2.tgdd.vn/Files/2015/11/22/744638/microsoft-continuum-dock-sg-0-980x420.jpg" style="height:450px; width:800px" />Ri&ecirc;ng&nbsp;<a href="https://www.thegioididong.com/game-ung-dung/cho-game-ung-dung/ung-dung-internet-email/onedrive-luu-tru-du-lieu" target="_blank" title="tải ondrive" type="tải ondrive">OneDrive</a>&nbsp;th&igrave; kh&aacute; hữu &iacute;ch v&igrave; c&oacute; thể đồng bộ mọi thứ v&agrave; sao lưu dễ d&agrave;ng, v&agrave; nếu c&oacute; một chiếc m&aacute;y t&iacute;nh chạy Windows 10 nữa th&igrave; khả năng đồng bộ sẽ ho&agrave;n hảo hơn rất nhiều.&nbsp;Ngo&agrave;i ra c&ograve;n một số t&iacute;nh năng kh&aacute;c như G&oacute;c trẻ em, Kh&aacute;ch mời hạn chế, T&igrave;m điện thoại...&nbsp;Về bảo mật, Microsoft kh&ocirc;ng đi theo hướng sử dụng cảm biến v&acirc;n tay m&agrave; trang bị c&ocirc;ng nghệ qu&eacute;t v&otilde;ng mạc (Iris) hỗ trợ Windows Hello.&nbsp;</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn4.tgdd.vn/Files/2015/11/22/744638/microsoft-lumia-950-quet-vong-mac.jpg" style="height:420px; width:800px" /></p>\r\n\r\n<p style="text-align: justify;">Về l&yacute; thuyết th&igrave; t&iacute;nh năng n&agrave;y an to&agrave;n v&agrave; hiện đại hơn&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-kiem?key=c%E1%BA%A3m+bi%E1%BA%BFn+v%C3%A2n+tay" target="_blank" title="tin tức về cảm biến vân tay" type="tin tức về cảm biến vân tay">cảm biến v&acirc;n tay</a>. Thử nghiệm cho thấy m&aacute;y kh&ocirc;ng dễ bị đ&aacute;nh lừa bằng c&aacute;ch đưa lại gần mắt người kh&aacute;c hay ngay cả khi sử dụng h&igrave;nh ảnh của bản th&acirc;n m&aacute;y sẽ ph&aacute;t hiện được đ&acirc;u l&agrave; thật v&agrave; giả. Cũng kh&ocirc;ng cần phải đưa cảm biến qu&eacute;t v&otilde;ng mạc ngang tầm mắt m&agrave; chỉ cần đến gần một ch&uacute;t l&agrave; đọc được, tuy nhi&ecirc;n khi mở kh&oacute;a cần để m&aacute;y đ&uacute;ng hướng đ&atilde; d&ugrave;ng để thiết lập trước đ&oacute;. Nghe c&oacute; vẻ th&uacute; vị nhưng trong một v&agrave;i trường hợp c&oacute; lẽ bất tiện hơn cảm biết v&acirc;n tay.</p>\r\n\r\n<p style="text-align: justify;">V&agrave; như đ&atilde; nhắc đến ở tr&ecirc;n, Lumia 950 c&ograve;n c&oacute; thể kết nối với c&aacute;c thiết bị ngoại vi như m&agrave;n h&igrave;nh, b&agrave;n ph&iacute;m, chuột th&ocirc;ng qua một phụ kiện mang t&ecirc;n Display Dock.&nbsp;Tuy nhi&ecirc;n bạn cũng chỉ c&oacute; thể trải nghiệm một chiếc Lumia tr&ecirc;n một m&agrave;n h&igrave;nh lớn hơn với&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-kiem?key=Windows+Phone+10" target="_blank" title="tin tức về WP10" type="tin tức về WP10">Windows Phone 10</a>&nbsp;chứ kh&ocirc;ng thể c&agrave;i c&aacute;c ứng dụng file exe tr&ecirc;n PC truyền thống m&agrave; chỉ c&oacute; thể c&agrave;i đặt c&aacute;c ứng dụng tr&ecirc;n Windows Store m&agrave; th&ocirc;i.&nbsp;</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn2.tgdd.vn/Files/2015/11/22/744638/microsoft-display-dock-01fileminimizer.jpg" style="height:450px; width:800px" /></p>\r\n\r\n<p style="text-align: justify;"><strong>4. Hiệu năng</strong></p>\r\n\r\n<p style="text-align: justify;">Lumia 950 được trang bị vi xử l&yacute; Qualcomm Snapdragon 808 với GPU Adreno 418. Con chip n&agrave;y được x&acirc;y dựng tr&ecirc;n quy tr&igrave;nh 64 bit với 6 nh&acirc;n bao gồm 2 nh&acirc;n xung nhịp 1,82 GHz chạy c&aacute;c t&aacute;c vụ nặng v&agrave; 4 nh&acirc;n 1, 44GHz xử l&yacute; c&aacute;c t&aacute;c vụ nhẹ hơn tương tự chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/lg-g4" target="_blank" title="xem giá bán LG G4" type="xem giá bán LG G4">LG G4</a>. Dung lượng RAM cũng được n&acirc;ng l&ecirc;n 3GB, điều n&agrave;y c&oacute; thể sẽ gi&uacute;p m&aacute;y chạy mượt m&agrave; được nhiều ứng dụng c&ugrave;ng l&uacute;c.</p>\r\n\r\n<p style="text-align: justify;"><strong>5. Camera</strong></p>\r\n\r\n<p style="text-align: justify;"><strong><img alt="" src="https://cdn1.tgdd.vn/Files/2015/11/22/744638/microsoft-lumia-950-06.jpg" style="height:531px; width:800px" /></strong></p>\r\n\r\n<p style="text-align: justify;">Được trang bị camera sau 20MP khẩu độ f/1.9 c&ugrave;ng cụm đ&egrave;n flash ba m&agrave;u hứa hẹn Lumia sẽ cải thiện đ&aacute;ng kể khả năng chụp thiếu s&aacute;ng. Nếu so với một trong những điện thoại c&oacute; camera tốt nhất hiện nay l&agrave;&nbsp;<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-note-5" target="_blank" title="xem giá bán Note 5" type="xem giá bán Note 5">Galaxy Note 5</a>&nbsp;c&oacute; thể n&oacute;i l&agrave; &quot;ngang t&agrave;i, ngang sức&quot;.&nbsp;Thực tế trong điều kiện đủ s&aacute;ng camera tr&ecirc;n Lumia 950 cho ra những bức ảnh sắc n&eacute;t, m&agrave;u sắc ch&acirc;n thực, trong điều kiện thiếu s&aacute;ng đ&egrave;n flash ba m&agrave;u cũng ph&aacute;t huy rất tốt. Ngo&agrave;i ra ứng dụng chụp ảnh c&oacute; sẵn tr&ecirc;n m&aacute;y cho ph&eacute;p khả năng chỉnh tay nhiều th&ocirc;ng số rất chuy&ecirc;n nghiệp.</p>\r\n\r\n<p style="text-align: justify;">Sau khi chụp xong m&aacute;y sẽ mất v&agrave;i gi&acirc;y để xử l&yacute; c&aacute;c bức ảnh, tất nhi&ecirc;n kết quả rất đ&aacute;ng ghi nhận. Lumia 950 cũng c&oacute; thể quay phim với độ ph&acirc;n giải 4K tương tự nhiều smartphone cao cấp hiện nay. M&aacute;y&nbsp;cũng sở hữu camera trước độ ph&acirc;n giải 5MP với khẩu độ f/2.4 hứa hẹn khả năng &quot;tự sướng&quot; tuyệt vời khi kết hợp c&ugrave;ng app Lumia Selfie, mới đ&acirc;y th&igrave; ứng dụng n&agrave;y đ&atilde; được cập nhật hỗ trợ th&ecirc;m kết nối Bluetooth để chụp bằng gậy tự sướng.</p>\r\n\r\n<p style="text-align: justify;"><strong>6. Pin</strong></p>\r\n\r\n<p style="text-align: justify;">Được trang bị vi&ecirc;n pin 3.000mAh c&ugrave;ng khả năng sạc nhanh đến từ&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-kiem?key=Qualcomm" target="_blank" title="tin tức về qualcomm" type="tin tức về qualcomm">Qualcomm</a>&nbsp;v&agrave; đặc biệt l&agrave; cổng sạc USB Type-C cũng gi&uacute;p m&aacute;y nạp nhanh hơn đ&aacute;ng kể.&nbsp;Thử nghiệm thực tế khi ph&aacute;t một video 90 ph&uacute;t với độ ph&acirc;n giải HD th&igrave; dung lượng pin tr&ecirc;n m&aacute;y tụt từ 100% xuống c&ograve;n 72%, c&oacute; lẽ v&igrave; phải g&aacute;nh một hệ thống nặng nề c&ugrave;ng m&agrave;n h&igrave;nh độ ph&acirc;n giải l&ecirc;n tới 2K n&ecirc;n thời lượng pin chưa thực sự ấn tượng.&nbsp;B&ugrave; lại m&aacute;y c&oacute; khả năng sạc rất nhanh, nạp đầy 10% chỉ trong 4 ph&uacute;t v&agrave; sạc đầy trong khoảng 90 ph&uacute;t, xấp xỉ với Galaxy Note 5 với vi&ecirc;n pin c&ugrave;ng dung lượng.</p>\r\n\r\n<p style="text-align: justify;"><strong>Tạm kết</strong></p>\r\n\r\n<p style="text-align: justify;">Với những n&acirc;ng cấp mạnh mẽ về cấu h&igrave;nh cũng như bổ sung nhiều t&iacute;nh năng mới,<a href="https://www.thegioididong.com/dtdd/microsoft-lumia-950" target="_blank" title="Lumia 950" type="Lumia 950">Lumia 950</a>&nbsp;hữa hẹn sẽ mang lại nhiều trải nghiệm th&uacute; vị với người d&ugrave;ng. Tuy nhi&ecirc;n điểm yếu về số lượng cũng như chất lượng kho ứng dụng kh&ocirc;ng thể một sớm một chiều m&agrave; thay đổi được, nếu thị phần Windows Phone tăng trưởng tốt th&igrave; tự nhi&ecirc;n c&aacute;c nh&agrave; ph&aacute;t triển tự sẽ t&igrave;m đến nhiều hơn. C&aacute;c bạn đ&aacute;nh gi&aacute; như thế n&agrave;o về khả năng cạnh tranh của m&aacute;y trước c&aacute;c đối thủ đến từ Android v&agrave; iOS vốn đ&atilde; qu&aacute; mạnh hiện nay?</p>\r\n', 2, 14),
(32, 'Đánh giá smartphone giá rẻ LG K10: Thiết kế mới, màn hình lớn, pin lâu', 'tin12.jpg', 'K10 là một trong 2 sản phẩm đầu tiên thuộc dòng K series của LG nhằm thay thế cho dòng L series. Được trang bị bộ đôi camera 8 MP/ 5 MP và sở hữu thiết kế ngôn ngữ mới của hãng trong phân khúc phổ thông. Liệu máy có đủ sức cạnh tranh với các sản phẩm khác trong tầm giá? Hãy cùng mình đi tìm câu trả lời qua bài đánh giá K10 bên dưới.', '<h2 style="text-align: justify;"><a href="https://www.thegioididong.com/dtdd/lg-k10" target="_blank" title="K10" type="K10">K10</a>&nbsp;l&agrave; một trong 2 sản phẩm đầu ti&ecirc;n thuộc d&ograve;ng K series của&nbsp;<a href="https://www.thegioididong.com/tim-kiem?key=lg" target="_blank" title="LG " type="LG">LG</a>&nbsp;nhằm thay thế cho d&ograve;ng L series. Được trang bị bộ đ&ocirc;i camera 8 MP/ 5 MP v&agrave; sở hữu thiết kế ng&ocirc;n ngữ mới của h&atilde;ng trong ph&acirc;n kh&uacute;c phổ th&ocirc;ng. Liệu m&aacute;y c&oacute; đủ sức cạnh tranh với c&aacute;c sản phẩm kh&aacute;c trong tầm gi&aacute;? H&atilde;y c&ugrave;ng m&igrave;nh đi t&igrave;m c&acirc;u trả lời qua b&agrave;i đ&aacute;nh gi&aacute; K10 b&ecirc;n dưới.</h2>\r\n\r\n<p style="text-align: justify;">Nh&igrave;n chung, với số điểm 7 m&agrave; m&igrave;nh chấm tr&ecirc;n LG K10 th&igrave; đ&acirc;y l&agrave; một trong những chiếc điện thoại đ&aacute;ng ch&uacute; &yacute; ở ph&acirc;n kh&uacute;c phổ th&ocirc;ng. M&aacute;y c&oacute; thiết kế trẻ trung v&agrave; bắt mắt, ph&ugrave; hợp cho giới trẻ, thời lượng pin bền bỉ. B&ecirc;n cạnh đ&oacute; l&agrave; bộ đ&ocirc;i camera c&oacute; số chấm cao cho ra những bức ảnh c&oacute; chi tiết tốt nhưng khoản phần mềm th&igrave; chưa được LG chăm ch&uacute;t lắm. Hi vọng, c&aacute;c thế hệ tiếp theo của d&ograve;ng K series sẽ được cải tiến hơn.</p>\r\n\r\n<p style="text-align: justify;"><strong>Thiết kế: Ng&ocirc;n ngữ thiết kế Smartphone gi&aacute; rẻ mới của LG</strong></p>\r\n\r\n<p style="text-align: justify;"><strong><img alt="" src="https://cdn4.tgdd.vn/Files/2016/02/18/788812/lg-k102.jpg" style="height:450px; width:800px" /></strong></p>\r\n\r\n<p style="text-align: justify;">Thoạt đầu khi nh&igrave;n lướt qua chiếc K10, m&igrave;nh c&oacute; cảm gi&aacute;c LG đ&atilde; lấy cảm hứng những vi&ecirc;n sỏi tr&ograve;n tr&ograve;n ngộ nghĩnh để mang l&ecirc;n chiếc điện thoại của m&igrave;nh. M&aacute;y c&oacute; thiết kế cong mềm mại v&agrave; bo tr&ograve;n ở 4 g&oacute;c gi&uacute;p kh&ocirc;ng bị cấn tay khi cầm nắm.</p>\r\n\r\n<p style="text-align: justify;">Đặc biệt m&igrave;nh rất th&iacute;ch mặt trước của m&aacute;y khi được phủ một lớp k&iacute;nh cong 2,5D thời thượng trải d&agrave;i xuống s&aacute;t cạnh dưới, c&ugrave;ng với khung viền mạ kim loại mang đến cảm gi&aacute;c cao cấp v&agrave; sang trọng. Đ&acirc;y l&agrave; điều m&agrave; LG đ&atilde; tạo ra sự kh&aacute;c biệt so với c&aacute;c sản phẩm phổ th&ocirc;ng của c&aacute;c nh&agrave; sản xuất kh&aacute;c.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn2.tgdd.vn/Files/2016/02/18/788812/lg-k106.jpg" style="height:450px; width:800px" />N&oacute;i th&ecirc;m về mặt k&iacute;nh của m&aacute;y, LG l&agrave;m cong nhẹ ở 2 viền tạo ra cảm gi&aacute;c rất th&iacute;ch tay với c&aacute;c thao t&aacute;c chạm v&agrave; k&eacute;o từ ngo&agrave;i v&agrave;o trong. Mang lại trải nghiệm tương tự như mặt k&iacute;nh cong 2,5D tr&ecirc;n c&aacute;c flagship của Samsung.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn4.tgdd.vn/Files/2016/02/18/788812/lg-k1012.jpg" style="height:450px; width:800px" /></p>\r\n\r\n<p style="text-align: justify;">Mặt lưng &nbsp;của K10 được l&agrave;m bằng nhựa sần mang lại cảm gi&aacute;c cầm nắm tốt, kh&ocirc;ng sợ bi &nbsp;trơn trượt khi thao t&aacute;c bằng 1 tay.&nbsp;LG đưa ph&iacute;m nguồn v&agrave; &acirc;m lượng của m&aacute;y ra ph&iacute;a &nbsp;sau tương tự c&aacute;c flagship của h&atilde;ng.</p>\r\n\r\n<p style="text-align: justify;">Ở đ&acirc;y m&igrave;nh c&oacute; th&ecirc;m một chiếc cover ch&iacute;nh h&atilde;ng gi&uacute;p bảo vệ m&aacute;y tốt hơn, đặc biệt l&agrave; camera sau khỏi bị trầy xước. Cover n&agrave;y cũng cho cảm gi&aacute;c cầm nắm kh&aacute; tốt với c&aacute;c hoa văn chạy dọc. Đặc biệt l&agrave; khả năng hiển thị một m&agrave;n h&igrave;nh phụ hiển thị ng&agrave;y giờ cũng như c&aacute;c th&ocirc;ng b&aacute;o.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn2.tgdd.vn/Files/2016/02/18/788812/lg-k1018.jpg" style="height:450px; width:800px" /></p>\r\n\r\n<p style="text-align: justify;">Với việc trang bị m&agrave;n h&igrave;nh IPS 5,3 inch độ ph&acirc;n giải HD (720 x 1280 pixel) n&ecirc;n khả năng hiển thị của K10 kh&aacute; tốt, m&agrave;u sắc trung thực, b&ecirc;n cạnh g&oacute;c nh&igrave;n rộng c&ugrave;ng khả năng hiển thị ngo&agrave;i trời nắng tốt. Ch&iacute;nh v&igrave; vậy n&ecirc;n trải nghiệm xem phim, chơi game tr&ecirc;n m&aacute;y rộng r&atilde;i v&agrave; thoải m&aacute;i hơn.</p>\r\n\r\n<p style="text-align: justify;">Một v&agrave;i h&igrave;nh ảnh kh&aacute;c về thiết kế của LG K10:</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn.tgdd.vn/Files/2016/02/18/788812/lg-k103.jpg" style="height:450px; width:800px" /><img alt="" src="https://cdn1.tgdd.vn/Files/2016/02/18/788812/lg-k105.jpg" style="height:450px; width:800px" /></p>\r\n\r\n<p style="text-align: justify;">Nh&igrave;n chung, đ&acirc;y l&agrave; sản phẩm gi&aacute; rẻ mới nhất của LG sau một thời gian d&agrave;i vắng b&oacute;ng, LG vẫn đem đến những điểm nhấn cho K10 như một ng&ocirc;n ngữ thiết kế mới, m&agrave;n h&igrave;nh cong 2,5D c&ugrave;ng chất lượng hiển thị đ&aacute;ng khen, thời lượng pin tốt, bộ đ&ocirc;i camera th&ocirc;ng số ổn. Đem đến cho người d&ugrave;ng sự lựa chọn y&ecirc;n t&acirc;m b&ecirc;n cạnh c&aacute;c thương hiệu t&ecirc;n tuổi như Samsung, Microsoft..</p>\r\n', 2, 15),
(33, 'Hai smartphone phổ thông LG K được ghi nhận với chip Snaprdagon 430', 'tin14.jpg', 'LG đã giới thiệu dòng smartphone phổ thông hoàn toàn mới tại sự kiện CES 2016 với tên gọi LG K, có thể kể đến các đại diện như K5, K8 hay K10, chưa dừng lại ở đó khi mới đây hai smartphone K series mới đã được ghi nhận.', '<h3 style="text-align: justify;"><a href="https://www.thegioididong.com/dtdd-lg" target="_blank" title="LG" type="LG">LG</a>&nbsp;đ&atilde; giới thiệu d&ograve;ng smartphone phổ th&ocirc;ng ho&agrave;n to&agrave;n mới tại sự kiện CES 2016 với t&ecirc;n gọi LG K, c&oacute; thể kể đến c&aacute;c đại diện như K5, K8 hay K10, chưa dừng lại ở đ&oacute; khi mới đ&acirc;y hai smartphone K series mới đ&atilde; được ghi nhận.</h3>\r\n\r\n<p style="text-align: justify;">Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/tin-tuc/cau-hinh-va-thiet-ke-cua-lg-k5-va-k8-chinh-thuc-duoc-xac-nhan-802570" target="_blank" title="Bộ đôi LG K5 và LG K8 chính thức trình làng" type="Bộ đôi LG K5 và LG K8 chính thức trình làng">Bộ đ&ocirc;i LG K5 v&agrave; LG K8 ch&iacute;nh thức tr&igrave;nh l&agrave;ng</a></p>\r\n\r\n<p style="text-align: justify;">Theo đ&oacute; nh&agrave; sản xuất đến từ H&agrave;n Quốc được cho l&agrave; đang ph&aacute;t triển bộ đ&ocirc;i smartphone mới với t&ecirc;n m&atilde; K530 v&agrave; K535, &nbsp;hai sản phẩm n&agrave;y đ&atilde; được ghi nhận tr&ecirc;n phần mềm Geekbench, nhờ đ&oacute; nhiều th&ocirc;ng tin đ&atilde; được tiết lộ.</p>\r\n\r\n<p style="text-align: justify;">Đầu ti&ecirc;n l&agrave; K530 với trang bị chip Snapdragon 430 l&otilde;i 8 xung nhịp 1.2 GHz, chip đồ họa Adreno 505, dung lượng RAM 2 GB, sản phẩm khởi chạy hệ điều h&agrave;nh Android 6.0. Về phần K535 cũng sở hữu vi xử l&yacute; Snapdragon 430, dung lượng RAM 3 GB.</p>\r\n\r\n<p style="text-align: justify;">X&eacute;t về cấu h&igrave;nh c&oacute; thể thấy K530 v&agrave; K535 tốt hơn so với sản phẩm&nbsp;<a href="https://www.thegioididong.com/dtdd/lg-k10" target="_blank" title="K10" type="K10">K10</a>&nbsp;đ&atilde; tr&igrave;nh l&agrave;ng, v&igrave; vậy hai sản phẩm mới từ LG nhiều khả năng sẽ c&oacute; t&ecirc;n gọi từ K11 trở l&ecirc;n. M&igrave;nh sẽ cập nhật ngay khi c&oacute; th&ecirc;m th&ocirc;ng tin mới.</p>\r\n', 1, 15),
(34, 'Đánh giá Galaxy S7 Edge: Kiệt tác hoàn hảo nhất của Samsung!', 'tin15.jpg', 'Năm ngoái, Samsung thực sự tạo ra một bước đột phá lớn khi ra mắt Galaxy S6 Edge với màn hình cong hai bên vô cùng độc đáo, khiến bao người muốn sở hữu. Tuy nhiên, S6 Edge lại khiến không ít người dùng tiếc nuối khi còn tồn tại một vài điểm yếu như thiếu khe cắm thẻ nhớ hay khả năng chống nước,... Giờ đây, Samsung đã trình làng Galaxy S7 Edge để kế thừa những ưu điểm và hoàn thiện gần như tất cả các khuyết điểm trên S6 Edge để trở thành sản phẩm hoàn hảo nhất của hãng từ trước tới nay.', '<p style="text-align: justify;">Đ&aacute;nh gi&aacute; chung:</p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;">Thiết kế: S7 Edge c&oacute; thiết kế sang trọng v&agrave; quyến rũ, cho cảm gi&aacute;c cầm nắm tốt hơn so với người tiền nhiệm</li>\r\n	<li style="text-align: justify;">Cấu h&igrave;nh: S7 Edge sở hữu con chip Exynos 8890 c&ugrave;ng với 4 GB RAM n&ecirc;n m&aacute;y cho hiệu năng rất tốt, từ c&aacute;c t&aacute;c vụ cơ bản của người d&ugrave;ng đến c&aacute;c game nặng m&aacute;y đều xử l&yacute; một c&aacute;ch mượt m&agrave;</li>\r\n	<li style="text-align: justify;">Phần mềm: S7 Edge được c&agrave;i sẵn hệ điều h&agrave;nh Android 6.0&nbsp;với giao diện t&ugrave;y biến TouchWiz đặc trưng của Samsung. B&ecirc;n cạnh đ&oacute;, m&aacute;y c&ograve;n được trang bị một v&agrave;i t&iacute;nh năng đặc biệt như Game Laucher, Game Tool, hay m&agrave;n h&igrave;nh cong tr&ecirc;n S7 Edge giờ đ&acirc;y đ&atilde; c&oacute; thể sử dụng Apps do c&aacute;c lập tr&igrave;nh b&ecirc;n thứ 3 viết.</li>\r\n	<li style="text-align: justify;">Camera: Ảnh chụp từ S7 Edge c&oacute; chất lượng rất tốt, m&agrave;u sắc trung thực</li>\r\n	<li style="text-align: justify;">Pin: Sở hữu vi&ecirc;n pin 3.600 mAh gi&uacute;p Galaxy S7 Edge cho thời lượng sử dụng ấn tượng</li>\r\n</ul>\r\n\r\n<h3><strong>Thiết kế: Sang trọng, tinh tế v&agrave; đem lại cảm gi&aacute;c cầm nắm tốt hơn</strong></h3>\r\n\r\n<p style="text-align: justify;"><strong><img alt="" src="https://cdn1.tgdd.vn/Files/2016/03/22/805963/galaxys7edge17.jpg" style="height:450px; width:800px" /></strong>Thiết kế &quot;vũ như cẩn&quot; so với Galaxy S6 Edge l&agrave; c&acirc;u trả lời m&igrave;nh nhận được kh&aacute; nhiều khi hỏi về thiết kế của S7 Edge. Tuy nhi&ecirc;n, khi bạn cầm tr&ecirc;n tay cả hai m&aacute;y mới thấy Samsung đ&atilde; c&oacute; những cải tiến kh&ocirc;ng hề nhỏ về thiết kế tr&ecirc;n sản phẩm mới nhất của m&igrave;nh. Một trong những cải tiến đ&aacute;ng gi&aacute; tr&ecirc;n S7 Edge ch&iacute;nh l&agrave; khả năng cầm nắm, khi S6 Edge bị kh&aacute; nhiều người d&ugrave;ng ph&agrave;n n&agrave;n về t&igrave;nh trạng cấn tay th&igrave; nay S7 Edge đ&atilde; cải thiện được vấn đề n&agrave;y.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn3.tgdd.vn/Files/2016/03/22/805963/s7edge17.jpg" style="height:450px; width:800px" /></p>\r\n\r\n<p style="text-align: justify;">Samsung đ&atilde; thiết kế&nbsp;phần mặt lưng của m&aacute;y v&aacute;t cong về hai ph&iacute;a so với mặt lưng S6 Edge l&agrave;m phẳng ho&agrave;n to&agrave;n, mặt kh&aacute;c S7 Edge c&oacute; m&agrave;n h&igrave;nh cong s&aacute;t tới m&eacute;p khung viền chứ kh&ocirc;ng nh&ocirc; l&ecirc;n như thế hệ cũ. Ngo&agrave;i ra, d&ugrave; c&oacute; k&iacute;ch thước 5,5 inch nhưng nhờ được h&atilde;ng tối ưu tốt về thiết kế n&ecirc;n trong S7 Edge thon gọn hơn kh&aacute; nhiều so với một số m&aacute;y kh&aacute;c m&igrave;nh từng sử dụng qua như chiếc Xperia Z5 Premium.</p>\r\n\r\n<p style="text-align: justify;">Để c&oacute; c&aacute;i nh&igrave;n r&otilde; hơn, mời c&aacute;c bạn theo d&otilde;i b&agrave;i đ&aacute;nh gi&aacute; thiết kế của m&igrave;nh về Galaxy S7 Edge :</p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;"><a href="https://www.thegioididong.com/tin-tuc/danh-gia-thiet-ke-galaxy-s7-edge-cai-tien-de-hoan-hao-hon--798973" target="_blank" title="Đánh giá thiết kế Galaxy S7 Edge: Cải tiến để hoàn hảo hơn!" type="Đánh giá thiết kế Galaxy S7 Edge: Cải tiến để hoàn hảo hơn!">Đ&aacute;nh gi&aacute; thiết kế Galaxy S7 Edge: Cải tiến để ho&agrave;n hảo hơn</a></li>\r\n</ul>\r\n\r\n<p style="text-align: justify;">Năm nay, Samsung đ&atilde; mang t&iacute;nh năng chống nước chống bụi ti&ecirc;u chuẩn IP68 trở lại tr&ecirc;n S7 Edge, m&igrave;nh c&oacute; test thử t&iacute;nh năng n&agrave;y v&agrave; thấy hoạt động kh&aacute; tốt (m&igrave;nh kh&ocirc;ng khuyến nghị c&aacute;c bạn l&agrave;m theo v&igrave; c&oacute; thể l&agrave;m m&aacute;y chết v&agrave; kh&ocirc;ng được bảo h&agrave;nh trong một số trường hợp).</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn2.tgdd.vn/Files/2016/03/22/805963/s7edge10.jpg" style="height:450px; width:800px" /></p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn3.tgdd.vn/Files/2016/03/22/805963/galaxys7edge7.jpg" style="height:450px; width:800px" /></p>\r\n\r\n<p style="text-align: justify;">S7 Edge đang l&agrave; chiếc điện thoại tốt nhất của Samsung ở thời điểm hiện tại. Với những cải tiến về thiết kế, camera, pin v&agrave; cấu h&igrave;nh, S7 Edge gần như đ&atilde; đạt tiệm cận của sự ho&agrave;n hảo v&agrave; đang l&agrave; chiếc smartphone android đ&aacute;ng mua nhất ở thời điểm hiện tại. C&ograve;n c&aacute;c bạn c&oacute; cảm nhận như thế n&agrave;o về chiếc S7 Edge, h&atilde;y c&ugrave;ng nhau đưa ra &yacute; kiến của m&igrave;nh nh&eacute;!</p>\r\n', 2, 16),
(35, 'Đánh giá nhanh ''tài năng'' chụp ảnh của iPhone 6/6 Plus', 'tin16.jpg', 'Gần đây chắc hẳn đã có không ít ảnh do camera của iPhone 6 và 6 Plus chụp được các trang báo nước ngoài đăng tải và bây giờ, khi hai mẫu điện thoại này đã có mặt tại thegioididong.com, bạn sẽ được thấy những bức ảnh chụp tại chính Việt Nam do bộ đôi này thực hiện.', '<h3 style="text-align: justify;"><strong>Gần đ&acirc;y chắc hẳn đ&atilde; c&oacute; kh&ocirc;ng &iacute;t&nbsp;<a href="http://www.thegioididong.com/tin-tuc/nhung-hinh-anh-moi-nhat-chup-tu-iphone-6-va-6-plus-568080" target="_blank" title="Những hình ảnh mới nhất chụp từ iPhone 6 và 6 Plus">ảnh do camera của iPhone 6 v&agrave; 6 Plus</a>&nbsp;chụp được c&aacute;c trang b&aacute;o nước ngo&agrave;i đăng tải v&agrave; b&acirc;y giờ, khi hai mẫu điện thoại n&agrave;y đ&atilde; c&oacute; mặt tại thegioididong.com, bạn sẽ được thấy những bức ảnh chụp tại ch&iacute;nh Việt Nam do bộ đ&ocirc;i n&agrave;y thực hiện.</strong></h3>\r\n\r\n<p style="text-align: justify;">Khi hỏi mọi người về camera của&nbsp;<strong>iPhone 6/6 Plus</strong>, một số người n&oacute;i rằng họ cảm thấy camera n&agrave;y kh&aacute; lỗi thời v&igrave; vẫn giữ nguy&ecirc;n số chấm ở mức 8 MP. Tuy nhi&ecirc;n b&acirc;y giờ kh&ocirc;ng phải l&agrave; thời đại đ&aacute;nh gi&aacute; chất lượng ảnh chụp qua số chấm của camera nữa (dĩ nhi&ecirc;n MP vẫn ảnh hưởng nhưng rất nhỏ). Với 8 MP người d&ugrave;ng phổ th&ocirc;ng đ&atilde; c&oacute; thể thoải m&aacute;i thi triển t&agrave;i năng chụp ảnh của m&igrave;nh.</p>\r\n\r\n<p style="text-align: justify;">Vậy Apple đ&atilde; cải tiến g&igrave; tr&ecirc;n camera của iPhone 6 v&agrave; iPhone 6 Plus?&nbsp;<a href="http://www.thegioididong.com/tin-tuc/can-canh-bo-nao-a8-va-camera-isight-tren-iphone-6-568444" target="_blank" title="Cận cảnh ">Theo th&ocirc;ng tin m&agrave; họ cung cấp th&igrave; cả hai camera 8MP tr&ecirc;n iPhone 6 v&agrave; 6 Plus đều c&oacute; khẩu độ mở lớn nhất l&agrave; f/2.2</a>, c&oacute; đ&egrave;n flash k&eacute;p, độ lớn cảm biến l&agrave; 1.5 micro pixel (lớn hơn so với 1.4 micro pixel tr&ecirc;n iPhone 5S).</p>\r\n\r\n<p style="text-align: justify;">Việc khẩu độ mở lớn cũng như cảm biến lớn hơn sẽ gi&uacute;p camera n&agrave;y nhận được nhiều &aacute;nh s&aacute;ng hơn trong điều kiện &aacute;nh s&aacute;ng k&eacute;m cũng như khả năng nhạy s&aacute;ng tốt hơn đ&aacute;ng kể</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn1.tgdd.vn/Files/2014/09/23/568606/ImageAttach/iphone-6-camera-1-2014923132441.JPG" style="height:1066px; width:800px" /></p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn3.tgdd.vn/Files/2014/09/23/568606/ImageAttach/iphone-6-plus-camera-2-2014923164854.JPG" style="height:600px; width:800px" /></p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn.tgdd.vn/Files/2014/09/23/568606/ImageAttach/iphone-6-plus-camera-62-2014923132959.JPG" style="height:800px; width:800px" /></p>\r\n\r\n<p style="text-align: justify;">Cuối c&ugrave;ng l&agrave; về m&agrave;u sắc, c&oacute; thể n&oacute;i t&ocirc;ng m&agrave;u của camera iPhone mới vẫn thi&ecirc;n về m&agrave;u lạnh hơn v&agrave; độ b&atilde;o ho&agrave; kh&ocirc;ng cao, bạn sẽ c&oacute; cảm gi&aacute;c m&agrave;u chụp từ camera hơi nhợt nhạt hơn so với thực tế một ch&uacute;t.&nbsp;Dĩ nhi&ecirc;n đối với nhu cầu &quot;t&aacute;c nghiệp&quot; của đại đa số người d&ugrave;ng iPhone hiện nay th&igrave; camera 8MP đ&atilde; qu&aacute; tuyệt để thể hiện t&agrave;i chụp ảnh.</p>\r\n', 2, 17),
(36, '6 ứng dụng hỗ trợ người dùng đam mê "tự sướng" tốt nhất trên iPhone', 'tin17.jpg', 'Nếu bạn đang loay hoay tìm kiếm những ứng dụng hỗ trợ "tự sướng" cho iPhone thì bạn đã vào đúng nơi. Những ứng dụng này sẽ giúp nâng trải nghiệm Selfie của bạn lên một tầng cao mới.  Snapchat', '<h3 style="text-align: justify;">Nếu bạn đang loay hoay t&igrave;m kiếm những ứng dụng hỗ trợ &quot;tự sướng&quot; cho&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone" target="_blank" title="iPhone" type="iPhone">iPhone</a>&nbsp;th&igrave; bạn đ&atilde; v&agrave;o đ&uacute;ng nơi. Những ứng dụng n&agrave;y sẽ gi&uacute;p n&acirc;ng trải nghiệm Selfie của bạn l&ecirc;n một tầng cao mới.</h3>\r\n\r\n<h3 style="text-align: justify;"><strong><a href="https://itunes.apple.com/us/app/snapchat/id447188370?mt=8&amp;at=10l3Vy&amp;ct=d_im" rel="nofollow" target="_blank" title="tải snapchat" type="tải snapchat">Snapchat</a></strong></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align: justify;"><strong><img alt="" src="https://cdn4.tgdd.vn/Files/2016/05/22/831933/snapchat.jpg" style="height:444px; width:800px" /></strong>Ngo&agrave;i l&agrave; một ứng dụng nhắn tin video, Snapchat c&ograve;n &quot;g&acirc;y sốt&quot; với c&aacute;c bạn trẻ v&igrave; khả năng chụp ra những bức ảnh selfie với những hiệu ứng v&ocirc; c&ugrave;ng th&uacute; vị v&agrave; h&agrave;i hước. Ngo&agrave;i ra, ứng dụng c&ograve;n cho ph&eacute;p bạn gửi những tấm h&igrave;nh c&oacute; đến cho mọi người m&agrave; bạn muốn, b&ecirc;n cạnh đ&oacute;, bạn c&oacute; thể c&agrave;i đặt cho những tấm ảnh đ&oacute; &quot;tự huỷ&quot; sau một khoảng thời gian nhất định trước khi biến mất m&atilde;i m&atilde;i. Ứng dụng hiện được cung cấp miễn ph&iacute; tr&ecirc;n Appstore.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn1.tgdd.vn/Files/2016/05/22/831933/facetune.jpg" style="height:515px; width:800px" /></p>\r\n\r\n<p style="text-align: justify;">Nếu bạn l&agrave; một người c&oacute; l&agrave;n da kh&ocirc;ng được &quot;mịn m&agrave;ng&quot; th&igrave; Facetune l&agrave; ứng dụng d&agrave;nh cho bạn. Với những c&ocirc;ng cụ chỉnh sửa ảnh mạnh mẽ, bạn c&oacute; thể chữa trị c&aacute;c khuyết điểm tr&ecirc;n khu&ocirc;ng mặt m&igrave;nh như: mụn, t&agrave;n nhang, răng ố v&agrave;ng, nếp nhăn,... chỉ trong v&ograve;ng 1 nốt nhạc. M&igrave;nh thực sự ấn tượng với khả năng &quot;l&agrave;m đẹp&quot; của Facetune, bạn kh&ocirc;ng cần l&agrave; một chuy&ecirc;n gia Photoshop nếu muốn trở n&ecirc;n đẹp hơn, chỉ với Facetune l&agrave; qu&aacute; đủ.</p>\r\n\r\n<h3 style="text-align: justify;"><strong><a href="https://itunes.apple.com/us/app/snapdash-funny-photo-selfie/id599657092?mt=8&amp;at=10l3Vy&amp;ct=d_im" rel="nofollow" target="_blank" title="tải snapdash" type="tải snapdash">Snapdash</a></strong></h3>\r\n\r\n<p><strong><img alt="" src="https://cdn3.tgdd.vn/Files/2016/05/22/831933/snapdash.jpg" style="height:515px; width:800px" /></strong></p>\r\n\r\n<p style="text-align: justify;">SnapDash sẽ gi&uacute;p ảnh của bạn trở n&ecirc;n nổi bật giữa một rừng những bức h&igrave;nh &quot;tự sướng&quot; nh&agrave;m ch&aacute;n. Nếu bạn kh&ocirc;ng biết tạo d&aacute;ng ra sao trước ống k&iacute;nh, h&atilde;y mở ngay SnapDash v&agrave; chọn một trong c&aacute;c danh mục Good Ol&#39; Charades, Improv Scenes, Party Animal hoặc Selfie Showcase. Ứng dụng sẽ gợi &yacute; c&aacute;ch tạo d&aacute;ng để bạn l&agrave;m theo. Ngo&agrave;i ra, SnapDash c&ograve;n hỗ trợ chia sẻ ảnh qua Instagram, Twitter, Facebook,...</p>\r\n\r\n<h3 style="text-align: justify;">&nbsp;</h3>\r\n\r\n<p>&nbsp;</p>\r\n', 4, 17),
(37, 'Trải nghiệm nhanh HTC 10: Xứng đáng được 10 điểm', 'htc.jpg', 'Khi mà các tên tuổi lớn như HTC, Sony, Samsung hay LG đã làm smartphone rất tốt về các thứ như thiết kế, camera hay chất lượng âm thanh thì vấn đề giá bán ở đây đóng vai trò quan trọng nhất, quyết định thành bại của một chiếc flagship.', '<h2 style="text-align: justify;">Khi m&agrave; c&aacute;c t&ecirc;n tuổi lớn như&nbsp;<a href="https://www.thegioididong.com/dtdd-htc" target="_blank" title="HTC" type="HTC">HTC</a>, Sony, Samsung hay LG đ&atilde; l&agrave;m smartphone rất tốt về c&aacute;c thứ như thiết kế, camera hay chất lượng &acirc;m thanh th&igrave; vấn đề gi&aacute; b&aacute;n ở đ&acirc;y đ&oacute;ng vai tr&ograve; quan trọng nhất, quyết định th&agrave;nh bại của một chiếc flagship.</h2>\r\n\r\n<p style="text-align: justify;">N&oacute;i như vậy kh&ocirc;ng c&oacute; nghĩa l&agrave; c&aacute;c &quot;&ocirc;ng lớn&quot; được ph&eacute;p ngủ qu&ecirc;n trong chiến thắng, tr&aacute;i lại, họ c&agrave;ng cần phải li&ecirc;n tục đổi mới v&agrave; lắng nghe &yacute; kiến người d&ugrave;ng hơn để bắt kịp xu thế v&agrave; c&ocirc;ng nghệ. Nếu kh&ocirc;ng th&igrave; với sự cạnh tranh khốc liệt th&igrave; quy luật đ&agrave;o thảo kh&ocirc;ng trừ một ai.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn2.tgdd.vn/Files/2016/05/11/826950/anhdaidien1.jpg" style="height:506px; width:900px" />Thực sự m&agrave; n&oacute;i HTC 10 ho&agrave;n thiện rất tuyệt vời v&agrave; ngoại h&igrave;nh rất nam t&iacute;nh, ph&iacute;a sau m&aacute;y c&oacute; đường v&aacute;t rất lớn bao quanh, hai dải nhựa ăng ten đối xứng. Tuy nhi&ecirc;n khi cầm m&igrave;nh kh&ocirc;ng thấy cảm gi&aacute;c sướng như chiếc One A9, nguy&ecirc;n nh&acirc;n l&agrave; do đường v&aacute;t hơi lớn, hạn chế diện t&iacute;ch tiếp x&uacute;c với l&ograve;ng b&agrave;n tay so với A9 mặt lưng phẳng v&agrave; l&agrave;m nh&aacute;m. Nhưng r&otilde; r&agrave;ng HTC 10 mang c&aacute;i &quot;chất&quot; của nh&agrave; sản xuất Đ&agrave;i Loan hơn A9, cụ thể l&agrave; mặt lưng m&aacute;y kh&aacute; giống với One M7.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn.tgdd.vn/Files/2016/05/11/826950/htc10gallery3.jpg" style="height:506px; width:900px" />Theo m&igrave;nh th&igrave; những sản phẩm cao cấp n&ecirc;n thiết kế nguy&ecirc;n khối để đảm bảo sự liền mạch, cứng c&aacute;p th&igrave; cầm mới sướng, chứ tr&ecirc;n tay m&agrave; cảm gi&aacute;c lỏng lẻo hay kh&ocirc;ng đầm th&igrave; sẽ kh&ocirc;ng &quot;đ&atilde;&quot; tay. Thực tế cho thấy xu hướng kim loại nguy&ecirc;n khối đang trở th&agrave;nh chuẩn mực cho c&aacute;c sản phẩm cao cấp v&agrave; bất cứ h&atilde;ng sản xuất lớn nhỏ n&agrave;o cũng theo tr&agrave;o lưu n&agrave;y. Nhưng cũng c&oacute; trường hợp ngoại lệ ch&iacute;nh l&agrave; bộ đ&ocirc;i Lumia 950 hay LG G5, 2 sản phẩm n&agrave;y c&oacute; thể th&aacute;o rời được pin, việc n&agrave;y khiến m&igrave;nh cầm tr&ecirc;n tay giảm bớt gi&aacute; trị của một chiếc m&aacute;y cao cấp</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn2.tgdd.vn/Files/2016/05/11/826950/htc10gallery1.jpg" style="height:506px; width:900px" /></p>\r\n\r\n<p>Nh&igrave;n chung, HTC 10 đ&atilde; l&agrave;m rất &quot;ngon&quot; về thiết kế, m&agrave;n h&igrave;nh, camera v&agrave; cả phần mềm lẫn &acirc;m thanh, c&oacute; thể n&oacute;i đ&acirc;y l&agrave; chiếc smartphone tiệm cận 10 điểm đối với người d&ugrave;ng kh&ocirc;ng qu&aacute; kh&oacute; t&iacute;nh, v&igrave; d&ugrave; sao kh&ocirc;ng thể c&oacute; sản phẩm n&agrave;o ho&agrave;n hảo tuyệt đối cả. Nhưng như mở b&agrave;i m&igrave;nh đ&atilde; n&oacute;i, vấn đề gi&aacute; sẽ l&agrave; yếu tố quyết định th&agrave;nh c&ocirc;ng ở đ&acirc;y. Theo m&igrave;nh được th&igrave; HTC 10 sẽ b&aacute;n ra tại nước ta với gi&aacute; từ 15 triệu đồng.</p>\r\n\r\n<p>Mức gi&aacute; n&agrave;y thấp hơn Galaxy S7 hay iPhone 6s một ch&uacute;t. Ch&iacute;nh v&igrave; vậy, theo m&igrave;nh HTC 10 vẫn cạnh tranh được v&agrave; khả năng l&agrave;m n&ecirc;n chuyện l&agrave; rất khả thi. Ch&uacute;ng ta h&atilde;y chờ kết quả kinh doanh sắp tới của h&atilde;ng sản xuất Đ&agrave;i Loan để biết chiếc flagship hướng tới điểm 10 n&agrave;y c&oacute; trở th&agrave;nh &quot;c&uacute; h&iacute;ch&quot; cho HTC đang tr&ecirc;n đ&agrave; phục hồi?</p>\r\n\r\n<p>Mỗi người đều c&oacute; một quan điểm hay &yacute; kiến ri&ecirc;ng, mời c&aacute;c bạn h&atilde;y comment chia sẻ b&ecirc;n dưới b&agrave;i viết c&ugrave;ng mọi người nh&eacute;!</p>\r\n\r\n<p style="text-align: justify;">Theo m&igrave;nh th&igrave;&nbsp;<a href="https://www.thegioididong.com/dtdd/htc-10" target="_blank" title="HTC 10" type="HTC 10">HTC 10</a>&nbsp;l&agrave; sản phẩm đ&atilde; l&agrave;m được hai điều đ&oacute;, m&aacute;y đ&atilde; khắc phục được những nhược điểm thế hệ cũ khi đưa 3 ph&iacute;m điều hướng ra b&ecirc;n ngo&agrave;i, kh&ocirc;ng l&agrave;m chiếm dụng th&ecirc;m kh&ocirc;ng gian hiển thị. Ph&iacute;m home l&agrave;m dạng cảm ứng rất nhạy, khi m&agrave;n h&igrave;nh tắt chỉ cần chạm nhẹ ngay lập tức đưa v&agrave;o m&agrave;n h&igrave;nh ch&iacute;nh, m&igrave;nh th&iacute;ch dạng n&agrave;y hơn ph&iacute;m home cứng. N&oacute; gi&uacute;p thao t&aacute;c nhẹ nh&agrave;ng v&agrave; kh&ocirc;ng lo bị hao m&ograve;n trong qu&aacute; tr&igrave;nh sử dụng.</p>\r\n', 2, 6),
(38, 'Galaxy Core Prime bán rất chạy nay lại được hạ giá', 'cg.jpg', 'Galaxy Core Prime G361 là một trong những mẫu smartphone bán chạy nhất hiện nay nhờ vào thiết kế đẹp cùng cấu hình khá tốt. Sản phẩm này vừa được hạ giá để nhiều bạn trẻ có cơ hội sở hữu hơn.', '<h4 style="text-align: justify;"><a href="https://www.thegioididong.com/dtdd/samsung-galaxy-core-prime-g361" target="_blank" title="Galaxy Core Prime G361">Galaxy Core Prime G361</a>&nbsp;l&agrave; một trong những mẫu&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title=" smartphone ">smartphone</a>&nbsp;b&aacute;n chạy nhất hiện nay nhờ v&agrave;o thiết kế đẹp c&ugrave;ng cấu h&igrave;nh kh&aacute; tốt. Sản phẩm n&agrave;y vừa được hạ gi&aacute; để nhiều bạn trẻ c&oacute; cơ hội sở hữu hơn.</h4>\r\n\r\n<p style="text-align: justify;">Theo đ&oacute;, chiếc Galaxy Core Prime G361 đ&atilde; được giảm gi&aacute; từ 2,99 triệu xuống c&ograve;n 2,79 triệu đồng, th&ecirc;m phần hấp dẫn hơn cho c&aacute;c bạn sinh vi&ecirc;n, học sinh. Mẫu smartphone n&agrave;y l&agrave; một trong những sản phẩm b&aacute;n chạy nhất tại Thegioididong với gần 2.000 chiếc trong 1 tuần.</p>\r\n\r\n<p style="text-align: justify;">Galaxy Core Prime c&oacute; thiết kế kh&aacute; đẹp mắt với bộ khung giả kim loại mạnh mẽ, mặt sau l&agrave; nhựa nhưng kh&ocirc;ng cho cảm gi&aacute;c rẻ tiền. Thiết bị sở hữu cấu h&igrave;nh kh&aacute; tốt bao gồm m&agrave;n h&igrave;nh 4.5 inch độ ph&acirc;n giải WVGA, b&ecirc;n trong l&agrave; vi xử l&yacute; l&otilde;i tứ tốc độ 1.2GHz, bộ nhớ RAM 1GB c&ugrave;ng bộ nhớ trong 8GB c&oacute; khe cắm microSD.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="https://cdn2.tgdd.vn/Files/2015/11/03/733203/galaxy-core-prime-3.jpg" style="height:481px; width:900px" /></p>\r\n', 1, 18);

-- --------------------------------------------------------

--
-- Table structure for table `technology_infor_category`
--

CREATE TABLE `technology_infor_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `technology_infor_category`
--

INSERT INTO `technology_infor_category` (`id`, `name`) VALUES
(1, 'Tin nhanh 24/7'),
(2, 'Đánh giá'),
(3, 'Top hot'),
(4, 'Mẹo hay'),
(5, 'Cộng đồng'),
(6, 'Thị trường'),
(7, 'Tin Khuyến mãi');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `permission_id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `gender` int(11) NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_bin NOT NULL,
  `address` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `permission_id`, `fullname`, `email`, `gender`, `phone_number`, `address`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 'Pen Sokny', 'admin@gmail.com', 1, '0961110924', 'Svay Rieng,Cambodia'),
(5, 'Socheata', '827ccb0eea8a706c4c34a16891f84e7b', 2, 'Prum Socheata', 'socheata@gmail.com', 0, '096583890', 'Svay Rieng, Cambodia'),
(6, 'Sothea', 'e10adc3949ba59abbe56e057f20f883e', 2, 'Nuon Sothea', 'sothea@gmail.com', 0, '0983647372', 'Kandal, Cambodia');

-- --------------------------------------------------------

--
-- Table structure for table `user_order_notregister`
--

CREATE TABLE `user_order_notregister` (
  `id` int(11) NOT NULL,
  `gender` int(11) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `phone_number` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_order_notregister`
--

INSERT INTO `user_order_notregister` (`id`, `gender`, `fullname`, `phone_number`, `email`, `type`) VALUES
(3, 0, 'sokna', '0987654348', 'sokhna@gmail.com', 0),
(5, 0, 'sokheng', '0976478345', 'sokheng@gmail.com', 0),
(6, 1, 'chamnan', '09734667474', 'chamnan@gmail.com', 0),
(8, 1, 'channa', '099876754', 'channa@gmail.com', 0),
(9, 0, 'chanthu', '097755460511', 'chanthu@gmail.com', 0),
(10, 1, 'chamnan', '097755460511', 'chamnan@gmail.com', 0),
(12, 0, 'Sokheng', '0999999999', 'sokheng@gmail.com', 0),
(17, 1, 'Eric', '0987534589', 'eric@gmail.com', 0),
(18, 1, 'Prum Socheata', '0961110924', 'socheata@gmail.com', 0),
(19, 1, 'Pen Sokny', '0961110924', 'pen.sokhny@gmail.com', 0),
(20, 0, 'Pham Thi Thu Nga', '685460', 'ngapham123013@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `version_os`
--

CREATE TABLE `version_os` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `operating_system_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `version_os`
--

INSERT INTO `version_os` (`id`, `name`, `operating_system_id`) VALUES
(1, 'iOS 9', 2),
(2, 'iOS 8', 2),
(3, 'Android 5.1', 1),
(4, 'Android 6', 1),
(5, 'Android 5.1 (Lollipop)', 1),
(6, 'Android 5.0 (Lollipop)', 1),
(7, 'Android 5.0', 1),
(8, 'Android 6.0 (Marshmallow)', 1),
(9, 'Android 4.4 (KitKat)', 1),
(10, 'Android 4.4', 1),
(11, 'Android 4.2 (Jelly Bean)', 1),
(12, 'Windows Phone 8.1 (Nâng cấp lên Windows 10)', 3),
(13, 'Windows Phone 8.1', 3),
(14, 'Windows 10 (for Mobile)', 3),
(15, 'Window Phone 10', 3),
(16, 'Không', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `accessories_category_id` (`accessories_category_id`);

--
-- Indexes for table `accessories_category`
--
ALTER TABLE `accessories_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accessories_color`
--
ALTER TABLE `accessories_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accessories_id` (`accessories_id`),
  ADD KEY `color_id` (`color_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_accessories`
--
ALTER TABLE `image_accessories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accessory_id` (`accessory_id`);

--
-- Indexes for table `image_product`
--
ALTER TABLE `image_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_id_2` (`product_id`);

--
-- Indexes for table `operating_system`
--
ALTER TABLE `operating_system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `accessory_id` (`accessories_color_id`);

--
-- Indexes for table `price_level`
--
ALTER TABLE `price_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_id` (`brands_id`),
  ADD KEY `operating_system_id` (`operating_system_id`),
  ADD KEY `screen_level_id` (`screen_level_id`),
  ADD KEY `price_level_id` (`price_level_id`),
  ADD KEY `version_id` (`version_id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `product_id_2` (`product_id`),
  ADD KEY `color_id_2` (`color_id`),
  ADD KEY `product_id_3` (`product_id`),
  ADD KEY `color_id_3` (`color_id`);

--
-- Indexes for table `screen_level`
--
ALTER TABLE `screen_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technology_infor`
--
ALTER TABLE `technology_infor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tech_infor_category_id` (`tech_infor_category_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `technology_infor_category`
--
ALTER TABLE `technology_infor_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_order_notregister`
--
ALTER TABLE `user_order_notregister`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `version_os`
--
ALTER TABLE `version_os`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operating_system_id` (`operating_system_id`),
  ADD KEY `operating_system_id_2` (`operating_system_id`),
  ADD KEY `operating_system_id_3` (`operating_system_id`),
  ADD KEY `operating_system_id_4` (`operating_system_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessories`
--
ALTER TABLE `accessories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `accessories_category`
--
ALTER TABLE `accessories_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `accessories_color`
--
ALTER TABLE `accessories_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `image_accessories`
--
ALTER TABLE `image_accessories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT for table `image_product`
--
ALTER TABLE `image_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;
--
-- AUTO_INCREMENT for table `operating_system`
--
ALTER TABLE `operating_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `price_level`
--
ALTER TABLE `price_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `screen_level`
--
ALTER TABLE `screen_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `technology_infor`
--
ALTER TABLE `technology_infor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `technology_infor_category`
--
ALTER TABLE `technology_infor_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_order_notregister`
--
ALTER TABLE `user_order_notregister`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `version_os`
--
ALTER TABLE `version_os`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `accessories`
--
ALTER TABLE `accessories`
  ADD CONSTRAINT `accessories_ibfk_1` FOREIGN KEY (`accessories_category_id`) REFERENCES `accessories_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `accessories_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `accessories_color`
--
ALTER TABLE `accessories_color`
  ADD CONSTRAINT `accessories_color_ibfk_1` FOREIGN KEY (`accessories_id`) REFERENCES `accessories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `accessories_color_ibfk_2` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `image_accessories`
--
ALTER TABLE `image_accessories`
  ADD CONSTRAINT `image_accessories_ibfk_1` FOREIGN KEY (`accessory_id`) REFERENCES `accessories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `image_product`
--
ALTER TABLE `image_product`
  ADD CONSTRAINT `image_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`accessories_color_id`) REFERENCES `accessories_color` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`operating_system_id`) REFERENCES `operating_system` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`screen_level_id`) REFERENCES `screen_level` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_5` FOREIGN KEY (`version_id`) REFERENCES `version_os` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_6` FOREIGN KEY (`brands_id`) REFERENCES `brand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_7` FOREIGN KEY (`price_level_id`) REFERENCES `price_level` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_color`
--
ALTER TABLE `product_color`
  ADD CONSTRAINT `product_color_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_color_ibfk_2` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `technology_infor`
--
ALTER TABLE `technology_infor`
  ADD CONSTRAINT `technology_infor_ibfk_1` FOREIGN KEY (`tech_infor_category_id`) REFERENCES `technology_infor_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `technology_infor_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `version_os`
--
ALTER TABLE `version_os`
  ADD CONSTRAINT `version_os_ibfk_1` FOREIGN KEY (`operating_system_id`) REFERENCES `operating_system` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
