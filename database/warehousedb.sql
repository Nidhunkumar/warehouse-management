-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2022 at 05:12 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `warehousedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add profile', 7, 'add_profile'),
(26, 'Can change profile', 7, 'change_profile'),
(27, 'Can delete profile', 7, 'delete_profile'),
(28, 'Can view profile', 7, 'view_profile'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add order', 9, 'add_order'),
(34, 'Can change order', 9, 'change_order'),
(35, 'Can delete order', 9, 'delete_order'),
(36, 'Can view order', 9, 'view_order');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$320000$jtsh9rXw7AKfA7ITAAo7So$XIFITAeFCToNwIoMb+hkyG5yp1eBbuu9LQdt5hKeXqA=', '2022-03-28 06:05:03.270482', 1, 'admin1', '', '', 'admin@gmail.com', 1, 1, '2022-03-24 07:35:15.563320'),
(3, 'pbkdf2_sha256$320000$FmUHU5sfNrh1LheiIg4w0T$FOOUdXOTk+/Uywx6STgD2qwA/2io6W7V4RbhxAjc6XE=', '2022-03-28 06:10:48.557780', 0, 'john', '', '', 'areeshtvr@gmail.com', 0, 1, '2022-03-24 10:58:25.739167'),
(4, 'pbkdf2_sha256$320000$t1qfPJpoS7bdpfmXPCTzCo$4x7y9jD0FakR+sfVAJBf7yy03kU3VrRI2coaXnloCQ0=', '2022-03-28 04:28:37.280462', 0, 'sam', '', '', 'bestdcsolutions@gmail.com', 0, 1, '2022-03-25 14:43:25.126975'),
(5, 'pbkdf2_sha256$320000$eKpCFagVND1LH6RHalJbfc$Ja9jzvasN2KBipVeSqr96OhgW8ZFe5urfdTylq04Guw=', '2022-03-28 04:29:58.282695', 0, 'johnh', '', '', 'areestvr@gmail.com', 0, 1, '2022-03-25 14:46:43.087262'),
(6, 'pbkdf2_sha256$320000$m7qxyv6ZlsuZUdWqRuSct3$1NMHohu9HMGw+AiNsBPb0xfCUrXZ7No/pHMFWYpe+Ts=', '2022-03-28 06:02:44.981600', 0, 'Ram', '', '', 'areeshtvr@gmail.com', 0, 1, '2022-03-28 06:02:28.481763');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-03-24 09:26:17.035057', '1', 'john Profile', 1, '[{\"added\": {}}]', 7, 2),
(2, '2022-03-24 10:57:56.562958', '1', 'john', 3, '', 4, 2),
(3, '2022-03-24 11:03:28.123809', '3', 'admin1 Profile', 1, '[{\"added\": {}}]', 7, 2),
(4, '2022-03-24 11:45:31.692845', '1', 'DELL 550', 1, '[{\"added\": {}}]', 8, 2),
(5, '2022-03-24 11:46:04.606695', '2', 'LG 145', 1, '[{\"added\": {}}]', 8, 2),
(6, '2022-03-24 11:47:32.068302', '3', 'BOOK1', 1, '[{\"added\": {}}]', 8, 2),
(7, '2022-03-24 11:48:17.531256', '4', 'IPHONE 11', 1, '[{\"added\": {}}]', 8, 2),
(8, '2022-03-25 10:39:48.533531', '1', 'john', 1, '[{\"added\": {}}]', 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'inventory', 'order'),
(8, 'inventory', 'product'),
(6, 'sessions', 'session'),
(7, 'user', 'profile');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-03-24 05:29:50.469812'),
(2, 'auth', '0001_initial', '2022-03-24 05:29:58.678800'),
(3, 'admin', '0001_initial', '2022-03-24 05:30:00.332642'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-03-24 05:30:00.388092'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-03-24 05:30:00.420084'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-03-24 05:30:01.035319'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-03-24 05:30:02.090082'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-03-24 05:30:02.311157'),
(9, 'auth', '0004_alter_user_username_opts', '2022-03-24 05:30:02.764304'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-03-24 05:30:03.327647'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-03-24 05:30:03.393727'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-03-24 05:30:03.449721'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-03-24 05:30:03.545706'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-03-24 05:30:03.673764'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-03-24 05:30:03.780742'),
(16, 'auth', '0011_update_proxy_permissions', '2022-03-24 05:30:04.039331'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-03-24 05:30:04.655717'),
(18, 'sessions', '0001_initial', '2022-03-24 05:30:05.014678'),
(19, 'user', '0001_initial', '2022-03-24 08:26:44.322119'),
(20, 'inventory', '0001_initial', '2022-03-24 11:43:14.770732'),
(21, 'inventory', '0002_alter_product_category_order', '2022-03-25 10:27:27.012394');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1b65nctvp58hcztoi31sq8pdl2aab1i9', '.eJxVjMsOwiAQRf-FtSFQXoNL934DGRiQqoGktCvjv2uTLnR7zzn3xQJuaw3byEuYiZ2ZZqffLWJ65LYDumO7dZ56W5c58l3hBx382ik_L4f7d1Bx1G9tCwlvVCJw4GUREkUBaVSZQCoyZXIQs1GgpYCcQWmKnoQyxTtrUSN7fwDKGDcs:1nXniM:82rW_4ew3OapB6FUAIfzN16qcDxg5bckxU97tgnC6QQ', '2022-04-08 17:27:06.536069'),
('6ec213yt94ync5vck9fqkhh31wpvx6fn', 'e30:1nXLEH:eF3QAa-YynDHXOow3ocgsIQuhz0TdRylw7ME-fJjJPc', '2022-04-07 11:02:09.656387'),
('9jvxm8szffbpmnl3yyq869mqv7mj3b30', 'e30:1nXL68:to8svQxOLNX6hQF2e0TjKpwapdRPmRazx3m7d7plbk4', '2022-04-07 10:53:44.138727'),
('h9c0epnva4nnpobn8f2tutm4ck87dqee', 'e30:1nXL2y:TPhjwb10kyPHYKuGTr-mP73dFsV0KS7K247FZpngM4o', '2022-04-07 10:50:28.151599'),
('hrt9o3vbzszlfa5ej3c0rfszbfj4b1tk', 'e30:1nXL1g:tq83ZBzzps0wQLqmCj9MsA6JwUMnIZE080PUpUyfwOM', '2022-04-07 10:49:08.343030'),
('s8w3tfzr9em02kdueq27jv5mlkzvonk7', 'e30:1nXLE4:TNU_gl3aQZJRInP7FqBfwlxMstVSevaMWjeJELSTWAY', '2022-04-07 11:01:56.031110'),
('vtfvpgo2j0zdq7h8kkkiu0ycd18oobcg', 'e30:1nXL8l:6GKIl9y_jb_sVsT-152i1xFd9ayK_fYnPyRRQDqv7A8', '2022-04-07 10:56:27.777440');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_order`
--

CREATE TABLE `inventory_order` (
  `id` bigint(20) NOT NULL,
  `order_quantity` int(10) UNSIGNED NOT NULL CHECK (`order_quantity` >= 0),
  `order_date` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory_order`
--

INSERT INTO `inventory_order` (`id`, `order_quantity`, `order_date`, `product_id`, `staff_id`) VALUES
(1, 10, '2022-03-25 10:39:48.517607', 1, 3),
(7, 10, '2022-03-25 16:06:43.200317', 1, 4),
(8, 20, '2022-03-28 04:26:50.656293', 19, 3),
(10, 40, '2022-03-28 04:28:45.984636', 13, 4),
(12, 25, '2022-03-28 04:29:18.075428', 20, 4),
(13, 10, '2022-03-28 04:30:11.796922', 1, 5),
(14, 10, '2022-03-28 04:30:19.781759', 13, 5),
(15, 20, '2022-03-28 04:30:26.925993', 19, 5),
(16, 40, '2022-03-28 04:30:35.129434', 20, 5),
(18, 20, '2022-03-28 06:03:04.511684', 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_product`
--

CREATE TABLE `inventory_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory_product`
--

INSERT INTO `inventory_product` (`id`, `name`, `quantity`, `category`) VALUES
(1, 'DELL 550', 250, 'electronics'),
(13, 'Book2', 200, 'books'),
(19, 'book3', 150, 'books'),
(20, 'BOOK1', 200, 'books'),
(24, 'Hp 770', 150, 'electronics'),
(25, 'Asus 650', 150, 'electronics');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `address`, `phone`, `image`, `staff_id`) VALUES
(2, 'abcstreet', '12454566552', 'profile_pics/dp.png', 3),
(3, 'NY123', '124555', 'profile_pics/Smiley-816x1024.jpg', 2),
(4, 'NY12345', '1245552', 'profile_pics/Pro.jpg', 4),
(5, '', '', 'default.jpg', 5),
(6, 'NY123', '1245444', 'profile_pics/pexe_DCkts31.jpeg', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `inventory_order`
--
ALTER TABLE `inventory_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_order_product_id_d27fd548_fk_inventory_product_id` (`product_id`),
  ADD KEY `inventory_order_staff_id_656037ac_fk_auth_user_id` (`staff_id`);

--
-- Indexes for table `inventory_product`
--
ALTER TABLE `inventory_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_id` (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `inventory_order`
--
ALTER TABLE `inventory_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `inventory_product`
--
ALTER TABLE `inventory_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `inventory_order`
--
ALTER TABLE `inventory_order`
  ADD CONSTRAINT `inventory_order_product_id_d27fd548_fk_inventory_product_id` FOREIGN KEY (`product_id`) REFERENCES `inventory_product` (`id`),
  ADD CONSTRAINT `inventory_order_staff_id_656037ac_fk_auth_user_id` FOREIGN KEY (`staff_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD CONSTRAINT `user_profile_staff_id_ca62edbf_fk_auth_user_id` FOREIGN KEY (`staff_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
