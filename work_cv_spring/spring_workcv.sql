-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 05, 2022 lúc 04:39 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `spring_workcv`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `applypost`
--

CREATE TABLE `applypost` (
  `id` int(11) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `recruitment_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name_cv` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number_choose` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `number_choose`) VALUES
(1, 'PHP', 2),
(2, 'JAVA', 2),
(3, 'ASP .NET', 1),
(4, 'NODEJS', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `name_company` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `company`
--

INSERT INTO `company` (`id`, `address`, `description`, `email`, `logo`, `name_company`, `phone_number`, `status`, `user_id`) VALUES
(1, 'Đà Nẵng', '<p>Tham gia dự án Logistic ứng viên nhận SIGNING BONUS iPhone 12 pro max<br><br>&nbsp;<br><br>Chia sẻ ngay tới ứng viên của bạn: 5 lý do KHÔNG NÊN BỎ QUA cơ hội làm việc với Digital platforms hàng đầu thế giới!!<br><br>1. KHÁCH HÀNG WORLD-CLASS - ĐỨNG TOP THỊ TRƯỜNG TOÀN CẦU VỀ LOGISTICS<br><br>Là tập đoàn lớn nhất thế giới trong các lĩnh vực Logistics, Supply Chain, và E-commerce solutions với doanh thu 76 tỉ USD, có 540.000 nhân viên hoạt động toàn cầu, khách hàng lần này của FSOFT là công ty Logistics có hàng tỉ người dùng, có mặt trên hầu hết các nước trên thế giới.<br><br>2. ĐỐI TÁC CHUYÊN NGHIỆP, SẢN PHẨM VƯỢT TRỘI<br><br>Tham gia dự án này, các bạn sẽ được làm việc với đơn vị phụ trách phát triển các sản phẩm Digital Platformsquy mô toàn cầu tập trung vào 7 lĩnh vực công nghệ: Intelligent Automation (RPA), IoT, API, Data Lake và Data Analytics, Virtual Assistants, và Blockchain. Các sản phẩm phục vụ quy mô toàn cầu đã có từ 4 triệu đến 3 trăm triệu lượt người sử dụng hàng tháng, là ước mơ của ngành Logistics toàn thế giới. Các bạn sẽ có cơ hội làm việc với những sản phẩm digital ở mức độ chuyên nghiệp, hoàn thiện production chứ không còn ở mức thử nghiệm.</p>', 'tuyendungnhansu@gmail.com', 'https://upload.wikimedia.org/wikipedia/commons/2/29/FPT_Software_Logo.png', 'FPT Software', '0394073712', 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cv`
--

CREATE TABLE `cv` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `follow_company`
--

CREATE TABLE `follow_company` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recruitment`
--

CREATE TABLE `recruitment` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rank` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `view` int(11) DEFAULT 0,
  `category_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `deadline` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `recruitment`
--

INSERT INTO `recruitment` (`id`, `address`, `created_at`, `description`, `experience`, `quantity`, `rank`, `salary`, `status`, `title`, `type`, `view`, `category_id`, `company_id`, `deadline`) VALUES
(1, 'Tam tiến Núi thành Quảng Nam', '2022-05-28', '<p>Làm việc ngày 8 tiếng tại văn phòng</p>', '3 năm kinh nghiệm', 15, NULL, '6.000.000 - 10.000.000 vnđ', 1, 'Tuyển Senior', 'Full time', 0, 1, 1, '2022-07-11'),
(6, 'Đà Nẵng', '2022-05-28', '<p>.NET &gt; 2 năm kinh nghiệm</p>', '2 năm', 12, NULL, '12 triệu', 1, 'Tuyển lập trình viên .NET', 'Full time', 0, 2, 1, '2022-07-11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `role_name`) VALUES
(1, 'Candidate'),
(2, 'Company');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `save_job`
--

CREATE TABLE `save_job` (
  `id` int(11) NOT NULL,
  `recruitment_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `password` varchar(128) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `cv_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `address`, `description`, `email`, `full_name`, `image`, `password`, `phone_number`, `status`, `role_id`, `cv_id`) VALUES
(2, 'Tam tiến Núi thành Quảng Nam', '<p>Helo anh em</p>', 'congty@gmail.com', 'Fpt Soft', 'https://res.cloudinary.com/workcv/image/upload/v1637083609/ince0ojpgsqfkuwrg9yy.jpg', '25f9e794323b453885f5181f1b624d0b', '01223415449', 1, 2, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `applypost`
--
ALTER TABLE `applypost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK23qxvxqx8q0ycwv1g3qxv3o7x` (`recruitment_id`),
  ADD KEY `FKohwwkdg1b9pxardq62w3mamow` (`user_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKdy4v2yb46hefqicjpyj7b7e4s` (`user_id`);

--
-- Chỉ mục cho bảng `cv`
--
ALTER TABLE `cv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKb98t5j2q1innj39yov3v9oga2` (`user_id`);

--
-- Chỉ mục cho bảng `follow_company`
--
ALTER TABLE `follow_company`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnd2vjc9iflx2g7kydn0b4xdxv` (`company_id`),
  ADD KEY `FK9a4lj6ypi86frac2419i39fvc` (`user_id`);

--
-- Chỉ mục cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKtj8cu8x5ar1c5hmu0j3veteit` (`category_id`),
  ADD KEY `FKc8ro055m1iceebbktg9epdci9` (`company_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `save_job`
--
ALTER TABLE `save_job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7mhpldb69f4sjyn9ijta42tep` (`recruitment_id`),
  ADD KEY `FKpkwn87ixxhdfek8rbljowpbdp` (`user_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKn82ha3ccdebhokx3a8fgdqeyy` (`role_id`),
  ADD KEY `FK2xy5nulvty7anu7svqyskyu1r` (`cv_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `applypost`
--
ALTER TABLE `applypost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `cv`
--
ALTER TABLE `cv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `follow_company`
--
ALTER TABLE `follow_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `save_job`
--
ALTER TABLE `save_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
