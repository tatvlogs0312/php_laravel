
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS `accounts` (
  `user_account` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `email_account` tinytext COLLATE utf32_unicode_ci NOT NULL,
  `pass_account` tinytext COLLATE utf32_unicode_ci NOT NULL,
  `phone_account` tinyint(4) NOT NULL,
  `address_account` tinytext COLLATE utf32_unicode_ci NOT NULL,
  `balance_account` tinytext COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

CREATE TABLE IF NOT EXISTS `admins` (
  `user_admin` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `pass_admin` tinytext COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;


INSERT INTO `admins` (`user_admin`, `pass_admin`) VALUES
('admin', 'admin');


CREATE TABLE IF NOT EXISTS `brands` (
  `id_brand` int(11) NOT NULL,
  `name_brand` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `brands` (`id_brand`, `name_brand`) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(3, 'Nokia'),
(4, 'Oppo'),
(5, 'Sony'),
(6, 'Asus');


CREATE TABLE IF NOT EXISTS `carts` (
  `id_cart` int(11) NOT NULL,
  `id_account` text COLLATE utf8_unicode_ci NOT NULL,
  `date_cart` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS `cart_info` (
  `id_cart_info` int(11) NOT NULL,
  `id_cart` int(11) NOT NULL,
  `id_product` int(11) NOT NULL DEFAULT '1',
  `sl_cart_info` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS `gallerys` (
  `id_gallery` int(11) NOT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `gallerys` (`id_gallery`, `id_product`) VALUES
(11, 29),
(12, 35),
(13, 40);


CREATE TABLE IF NOT EXISTS `images` (
  `id_image` int(11) NOT NULL,
  `name_image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url_image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

INSERT INTO `images` (`id_image`, `name_image`, `url_image`) VALUES
(178, 'iPhone X 256GB Gray', 'iphone-x-256gb-h2-400x460-400x460.png'),
(179, 'Samsung Galaxy S9+ 128GB Ho????ng Kim', 'samsung-galaxy-s9-plus-128gb-vang-dong-1-400x460.png'),
(180, 'Sony Xperia XZ2', 'sony-xperia-xz2-2-400x460.png'),
(181, 'OPPO F7 128GB', 'oppo-f7-128gb-den-400x460.png'),
(182, 'Nokia 8', 'nokia-8-1-400x460.png'),
(183, 'Nokia 7 plus', 'nokia-7-plus-5-400x460.png'),
(184, 'iPad Pro 10.5 inch Wifi 64GB', 'ipad-pro-105-inch-wifi-64gb-2017-400-400x460.png'),
(185, 'Samsung Galaxy Tab A6 10.1 Spen', 'samsung-galaxy-tab-a6-101-spen-400x460.png'),
(186, 'Apple Macbook Pro Touch MPXX2SA/A i5 3.1GHz/8GB/256GB', 'apple-macbook-pro-touch-mpxx2sa-a-450x300-450x300.jpg'),
(187, 'Asus GL503GE i7 8750H/8GB/1TB+128GB/4GB GTX1050Ti/Win10/(EN021T)', 'asus-gl503ge-en021t-19-600x600.jpg'),
(188, 'Asus UX430UA i5 8250U/8GB/256GB/Win10/(GV334T)', 'asus-ux430ua-i5-8250u-gv334t-dai-dien-450x300.jpg'),
(189, 'Tai nghe nh????t trong Samsung EG920B', 'tai-nghe-nhet-trong-samsung-eg920b-11-300x300.jpg'),
(190, '??????p l????ng iPhone X Nh??????a d??????o Solid in h????nh JM JM1802282 Chu????????t Lang', 'op-lung-iphone-x-nhua-deo-solid-in-hinh-jm-jm180221-600x600.jpg'),
(191, 'Samsung Gear VR3', 'kinh-thuc-te-ao-samsung-gear-vr-sm-r325-400x400.png'),
(192, 'B????t c??????m ??????ng Apple Pencil', 'apple-pencil-10-400x460.png'),
(193, 'Samsung Gear Fit2 Pro', 'samsung-gear-fit2-pro-2-330x330.png'),
(194, 'Apple Watch S1, 38mm, vi??????n nh????m, d????y cao su m????u tr??????ng', 'apple-watch-edition-38mm-122-330x330.png'),
(195, 'Samsung Gear S3 Frontier', 'samsung-gear-s3-frontier-lte-400x460.png'),
(196, '??????I   ????????NH GI????   M??????O HAY   TH?????? TR??????????NG   CU??????C S??????NG S??????   GAME - APP   S?????? KI???????N ????????ng nh??????p C??????NG ???????????NGBETA ???????? c???? MIUI 10 Global Beta 8.7.5 cho 8 thi??????t b??????? Xiaomi, b??????n ????????? n????ng c??????p?', '4_1280x720-800-resize.jpg');


CREATE TABLE IF NOT EXISTS `news` (
  `id_new` int(11) NOT NULL,
  `name_new` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `hagtag_new` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `image_new` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `info_new` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `news` (`id_new`, `name_new`, `hagtag_new`, `image_new`, `info_new`) VALUES
(1, '??????I   ????????NH GI????   M??????O HAY   TH?????? TR??????????NG   CU??????C S??????NG S??????   GAME - APP   S?????? KI???????N ????????ng nh??????p C??????NG ???????????NGBETA ???????? c???? MIUI 10 Global Beta 8.7.5 cho 8 thi??????t b??????? Xiaomi', 'Ngu???????n: Gsmarena\r\n\r\nXem th????m: C????ch ?????????ng k???? tham gia th?????? nghi???????m MIUI 10 Beta d????nh cho ng??????????i d????ng Xiaomi', '196', 'Sau khi tung phi????n b??????n beta c??????a MIUI 10 China cho m???????t s??????? thi??????t b??????? t??????i th??????? tr??????????ng Trung Qu???????c, m???????i ?????????y Xiaomi ????????? tung ra b??????n beta c??????a MIUI 10 Global d????nh cho th??????? tr??????????ng qu???????c t?????? v???????i 8 thi??????t b??????? ???????????????c h??????? tr??????.\r\nNh???? c????c b??????n ????????? bi??????t, MIUI 10 nh???? c????c phi????n b??????n tr???????????c ?????????y s?????? c???? 2 bi??????n th??????: MIUI 10 China d????nh cho th??????? tr??????????ng Trung Qu???????c v???? MIUI 10 Global d????nh cho th??????? tr??????????ng qu???????c t??????.\r\n\r\nNgo????i ng????n ng?????? ???????????????c h??????? tr?????? cho c????c th??????? tr??????????ng qu???????c t?????? th???? b??????n MIUI 10 Global  c????n c???? Google Play ???????????????c t????ch h??????p s??????n (MIUI 10 China kh????ng c????). MIUI 10 China ???????????????c tung ra ngay sau s?????? ki???????n ra m??????t Mi 8 h???????i cu???????i th????ng 5 v??????a qua, c????n MIUI 10 Global ???????????????c c????ng b??????? t??????i s?????? ki???????n ra m??????t Xiaomi Y2 t??????i ??????n ???????????.\r\n\r\nM???????i ?????????y Xiaomi ????????? ch????nh th??????c cho ph????p c????c b??????n t??????i v?????? b??????n beta c??????a MIUI 10 Global v???????i 8 thi??????t b??????? d???????????i ?????????y:\r\n\r\nXiaomi Mi 6\r\nXiaomi Mi Mix 2\r\nXiaomi Redmi S2 (Redmi Y2 ?????? ??????n ???????????)\r\nXiaomi Redmi Note 5 Pro / Redmi Note 5\r\nXiaomi Mi Mix 2S\r\nXiaomi Mi 5\r\nXiaomi Mi Note 2\r\nXiaomi Mi Mix\r\nM???????t s??????? l????u ???? khi c????c b??????n c??????p nh??????t l????n MIUI 10 Global  nh???? sau:\r\n\r\nPh??????i lu????n sao l????u d?????? li???????u c??????a m????nh tr???????????c khi n????ng c??????p l????n MIUI 10\r\nTr??????????ng h??????p b??????n ?????ang d????ng MIUI 7 / MIUI 8 / MIUI 9 v???????i b??????n ROM ch????nh th??????c th???? b??????n c???? th?????? n????ng c??????p l????n MIUI 10 th????ng qua h????nh th??????c l???? fastboot (c??????n ph??????i unlocked bootloader).\r\nNg??????????i d????ng ?????ang s?????? d??????ng b??????n MIUI 9 Global Beta ROM c???? th?????? v????o ??????ng d??????ng Updater ??????????? ki??????m tra b??????n c??????p nh??????t beta MIUI 10 Global.\r\nB??????n ROM Global Beta c???? th?????? flash b??????ng fastboot hay recovery.\r\nMIUI 10 Global c???? t????n g??????i l???? Global Beta 8.7.5 ROM, Xiaomi cho bi??????t ?????????y ch??????? l???? ???????????t c??????p nh??????t ???????????u ti????n c??????a phi????n b??????n Global Beta, lo??????t smartphone kh????c c??????a h????ng c????ng s?????? s???????m nh??????n ???????????????c b??????n n????ng c??????p n????y.M???????t trong nh??????ng t????nh n????ng ch????nh trong phi????n b??????n Global Beta 8.7.5 n????y l???? b??????? sung c????ng ngh??????? LDAC cho c????c thi??????t b??????? Bluetooth. L????u ????, t????nh n????ng n????y kh????ng ph??????i l???? m???????t ph??????n c??????a MIUI 10, t??????c l???? c????c thi??????t b??????? kh????ng n????ng c??????p l????n MIUI 10 v??????n c???? th?????? s?????? h??????u n????. Xiaomi c????ng h??????a h??????n r??????ng, t??????t c?????? c????c thi??????t b??????? Android One c??????a h????ng ???????????u s?????? nh??????n ???????????????c c??????p nh??????t h??????? tr?????? LDAC.\r\n\r\n???????????i v???????i nh??????ng b??????n kh????ng bi??????t th???? LDAC l???? c????ng ngh??????? c??????i thi???????n ch??????t l??????????ng ????m thanh kh????ng d????y ???????????????c ph????t qua Bluetooth. N???? ???????????????c ph????t tri??????n b??????i Sony, cho ph????p truy??????n d?????? li???????u l???????n g??????p 3 l??????n so v???????i c????c c????ng ngh??????? kh????c th????ng qua Bluetooth v???????i bitrate 990kb/s, ch??????t l??????????ng ????m thanh s?????? ???????????????c gi?????? ?????? m??????c cao. V???? tai nghe c??????a b??????n c????ng c??????n ph??????i h??????? tr?????? ph????t tr??????c tuy??????n LDAC.');


CREATE TABLE IF NOT EXISTS `products` (
  `id_product` int(11) NOT NULL,
  `name_product` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `image_product` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `price_product` float NOT NULL,
  `sale_product` float NOT NULL,
  `sl_product` int(11) NOT NULL,
  `id_type` int(20) NOT NULL,
  `id_brand` int(20) NOT NULL,
  `info_product` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `products` (`id_product`, `name_product`, `image_product`, `price_product`, `sale_product`, `sl_product`, `id_type`, `id_brand`, `info_product`) VALUES
(24, 'iPhone X 256GB Gray', '178', 34790000, 34590000, 200, 1, 1, 'Th????ng s??????? k?????? thu??????t\r\nM????n h????nh:	OLED, 5.8", Super Retina\r\nH??????? ?????i??????u h????nh:	iOS 11\r\nCamera sau:	2 camera 12 MP\r\nCamera tr???????????c:	7 MP\r\nCPU:	Apple A11 Bionic 6 nh????n\r\nRAM:	3 GB\r\nB??????? nh??????? trong:	256 GB\r\nTh?????? SIM:	1 Nano SIM, H??????? tr?????? 4G\r\nDung l??????????ng pin:	2716 mAh, c???? s??????c nhanh\r\nTrong h???????p c????: S??????c, Tai nghe, S????ch h???????????ng d??????n, Jack chuy??????n tai nghe 3.5mm, C????p, C????y l??????y sim\r\nB??????o h????nh ch????nh h????ng 12 th????ng. Xem chi ti??????t\r\n1 ????????????i 1 trong 1 th????ng n??????u l???????i, ????????????i s??????n ph??????m t??????i nh???? trong 1 ng????y.\r\n????U ????????I TH????M\r\nMua k????m pin s??????c d?????? ph????ng, th?????? nh??????? 16GB gi??????m 20%\r\nMua h????ng ?????? 76 si????u th??????? nh??????n Phi??????u mua h????ng d????ng tr??????i nghi???????m d???????ch v?????? t??????i B????ch H????a Xanh (????p d??????ng cho SP c???? KM phi??????u mua h????ng) '),
(25, 'Samsung Galaxy S9+ 128GB Ho????ng Kim', '179', 24490000, 24490000, 200, 1, 2, 'Th????ng s??????? k?????? thu??????t\r\nM????n h????nh:	Super AMOLED, 6.2", Quad HD+ (2K+)\r\nH??????? ?????i??????u h????nh:	Android 8.0 (Oreo)\r\nCamera sau:	2 camera 12 MP\r\nCamera tr???????????c:	8 MP\r\nCPU:	Exynos 9810 8 nh????n 64 bit\r\nRAM:	6 GB\r\nB??????? nh??????? trong:	128 GB\r\nTh?????? nh???????:	MicroSD, h??????? tr?????? t???????i ?????a 400 GB\r\nTh?????? SIM:	2 SIM Nano (SIM 2 chung khe th?????? nh???????), H??????? tr?????? 4G\r\nDung l??????????ng pin:	3500 mAh, c???? s??????c nhanh\r\nTrong h???????p c????: Pin, S??????c, Tai nghe, S????ch h???????????ng d??????n, C????p, C????y l??????y sim\r\nB??????o h????nh ch????nh h????ng 12 th????ng. Xem chi ti??????t\r\n1 ????????????i 1 trong 1 th????ng n??????u l???????i, ????????????i s??????n ph??????m t??????i nh???? trong 1 ng????y.\r\n????U ????????I TH????M\r\nMua k????m pin s??????c d?????? ph????ng, th?????? nh??????? 16GB gi??????m 20%\r\nMua h????ng ?????? 76 si????u th??????? nh??????n Phi??????u mua h????ng d????ng tr??????i nghi???????m d???????ch v?????? t??????i B????ch H????a Xanh (????p d??????ng cho SP c???? KM phi??????u mua h????ng) '),
(26, 'Sony Xperia XZ2', '180', 19990000, 19990000, 200, 1, 5, 'Th????ng s??????? k?????? thu??????t\r\nM????n h????nh:	IPS HDR LCD, 5.7", Full HD+\r\nH??????? ?????i??????u h????nh:	Android 8.0 (Oreo)\r\nCamera sau:	19 MP\r\nCamera tr???????????c:	5 MP\r\nCPU:	Snapdragon 845 8 nh????n\r\nRAM:	4 GB\r\nB??????? nh??????? trong:	64 GB\r\nTh?????? nh???????:	MicroSD, h??????? tr?????? t???????i ?????a 400 GB\r\nTh?????? SIM:	2 Nano SIM, H??????? tr?????? 4G\r\nDung l??????????ng pin:	3180 mAh, c???? s??????c nhanh\r\nTrong h???????p c????: S??????c, Tai nghe, S????ch h???????????ng d??????n\r\nB??????o h????nh ch????nh h????ng 12 th????ng. Xem chi ti??????t\r\n1 ????????????i 1 trong 1 th????ng n??????u l???????i, ????????????i s??????n ph??????m t??????i nh???? trong 1 ng????y.\r\n????U ????????I TH????M\r\nMua k????m pin s??????c d?????? ph????ng, th?????? nh??????? 16GB gi??????m 20%\r\nMua h????ng ?????? 76 si????u th??????? nh??????n Phi??????u mua h????ng d????ng tr??????i nghi???????m d???????ch v?????? t??????i B????ch H????a Xanh (????p d??????ng cho SP c???? KM phi??????u mua h????ng) Xem chi ti??????t'),
(27, 'OPPO F7 128GB', '181', 9990000, 9950000, 200, 1, 4, 'Th????ng s??????? k?????? thu??????t\r\nM????n h????nh:	LTPS LCD, 6.23", Full HD+\r\nH??????? ?????i??????u h????nh:	ColorOS 5.0 (Android 8.1)\r\nCamera sau:	16 MP\r\nCamera tr???????????c:	25 MP\r\nCPU:	MediaTek Helio P60 8 nh????n 64-bit\r\nRAM:	6 GB\r\nB??????? nh??????? trong:	128 GB\r\nTh?????? nh???????:	MicroSD, h??????? tr?????? t???????i ?????a 256 GB\r\nTh?????? SIM:\r\n2 Nano SIM, H??????? tr?????? 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ th????ng). Gi???? t?????? 80.000?????\r\nDung l??????????ng pin:	3400 mAh\r\nTrong h???????p c????: S??????c, Tai nghe, C????p, C????y l??????y sim, ??????p l????ng\r\nB??????o h????nh ch????nh h????ng 12 th????ng. Xem chi ti??????t\r\n1 ????????????i 1 trong 1 th????ng n??????u l???????i, ????????????i s??????n ph??????m t??????i nh???? trong 1 ng????y.\r\n????U ????????I TH????M\r\nMua k????m pin s??????c d?????? ph????ng, th?????? nh??????? 16GB gi??????m 20%\r\nMua h????ng ?????? 76 si????u th??????? nh??????n Phi??????u mua h????ng d????ng tr??????i nghi???????m d???????ch v?????? t??????i B????ch H????a Xanh (????p d??????ng cho SP c???? KM phi??????u mua h????ng) Xem chi ti??????t'),
(28, 'Nokia 8', '182', 9990000, 9990000, 200, 1, 3, 'Th????ng s??????? k?????? thu??????t\r\nM????n h????nh:	IPS LCD, 5.3", Quad HD (2K)\r\nH??????? ?????i??????u h????nh:	Android 7.1 (Nougat)\r\nCamera sau:	2 camera 13 MP\r\nCamera tr???????????c:	13 MP\r\nCPU:	Qualcomm Snapdragon 835 8 nh????n 64-bit\r\nRAM:	4 GB\r\nB??????? nh??????? trong:	64 GB\r\nTh?????? nh???????:	MicroSD, h??????? tr?????? t???????i ?????a 256 GB\r\nTh?????? SIM:\r\n2 Nano SIM, H??????? tr?????? 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ th????ng). Gi???? t?????? 80.000?????\r\nDung l??????????ng pin:	3090 mAh, c???? s??????c nhanh\r\nTrong h???????p c????: S??????c, Tai nghe, S????ch h???????????ng d??????n, C????p, C????y l??????y sim\r\nB??????o h????nh ch????nh h????ng 12 th????ng. Xem chi ti??????t\r\n1 ????????????i 1 trong 1 th????ng n??????u l???????i, ????????????i s??????n ph??????m t??????i nh???? trong 1 ng????y.\r\n????U ????????I TH????M\r\nMua k????m pin s??????c d?????? ph????ng, th?????? nh??????? 16GB gi??????m 20%\r\nMua h????ng ?????? 76 si????u th??????? nh??????n Phi??????u mua h????ng d????ng tr??????i nghi???????m d???????ch v?????? t??????i B????ch H????a Xanh (????p d??????ng cho SP c???? KM phi??????u mua h????ng) Xem chi ti??????t'),
(29, 'Nokia 7 plus', '183', 8990000, 8950000, 200, 1, 3, 'Th????ng s??????? k?????? thu??????t\r\nM????n h????nh:	IPS LCD, 6", Full HD+\r\nH??????? ?????i??????u h????nh:	Android 8.0 (Oreo)\r\nCamera sau:	12 MP v???? 13 MP (2 camera)\r\nCamera tr???????????c:	16 MP\r\nCPU:	Qualcomm Snapdragon 660 8 nh????n\r\nRAM:	4 GB\r\nB??????? nh??????? trong:	64 GB\r\nTh?????? nh???????:	MicroSD, h??????? tr?????? t???????i ?????a 256 GB\r\nTh?????? SIM:\r\n2 SIM Nano (SIM 2 chung khe th?????? nh???????), H??????? tr?????? 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ th????ng). Gi???? t?????? 80.000?????\r\nDung l??????????ng pin:	3800 mAh\r\nTrong h???????p c????: S??????c, Tai nghe, S????ch h???????????ng d??????n, C????p, C????y l??????y sim\r\nB??????o h????nh ch????nh h????ng 12 th????ng. Xem chi ti??????t\r\n1 ????????????i 1 trong 1 th????ng n??????u l???????i, ????????????i s??????n ph??????m t??????i nh???? trong 1 ng????y.\r\n????U ????????I TH????M\r\nMua k????m pin s??????c d?????? ph????ng, th?????? nh??????? 16GB gi??????m 20%\r\nMua h????ng ?????? 76 si????u th??????? nh??????n Phi??????u mua h????ng d????ng tr??????i nghi???????m d???????ch v?????? t??????i B????ch H????a Xanh (????p d??????ng cho SP c???? KM phi??????u mua h????ng) Xem chi ti??????t'),
(30, 'iPad Pro 10.5 inch Wifi 64GB', '184', 16990000, 16950000, 100, 2, 1, 'Th????ng s??????? k?????? thu??????t\r\nM????n h????nh	IPS LCD, 10.5"\r\nH??????? ?????i??????u h????nh	iOS 11\r\nCPU	Apple A10X 6 nh????n 64-bit\r\nRAM	4 GB\r\nB??????? nh??????? trong	64 GB\r\nCamera sau	12 MP\r\nCamera tr???????????c	7 MP\r\nK??????t n???????i m??????ng	WiFi, Kh????ng h??????? tr?????? 3G, Kh????ng h??????? tr?????? 4G\r\n????????m tho??????i	FaceTime\r\nTr??????ng l??????????ng	469 g\r\nTrong h???????p c????: Adapter, S????ch h???????????ng d??????n, C????p Lightning, H???????p m????y\r\nB??????o h????nh ch????nh h????ng 12 th????ng. Xem chi ti??????t\r\n1 ????????????i 1 trong 1 th????ng v???????i s??????n ph??????m l???????i. T????m hi??????u\r\n????U ????????I TH????M\r\nMua h????ng ?????? 76 si????u th??????? nh??????n Phi??????u mua h????ng d????ng tr??????i nghi???????m d???????ch v?????? t??????i B????ch H????a Xanh (????p d??????ng cho SP ?????ang c???? KM phi??????u mua h????ng) Xem chi ti??????t'),
(31, 'Samsung Galaxy Tab A6 10.1 Spen', '185', 7490000, 7490000, 100, 2, 2, 'Th????ng s??????? k?????? thu??????t\r\nM????n h????nh	PLS LCD, 10.1"\r\nH??????? ?????i??????u h????nh	Android 6.0 (Marshmallow)\r\nCPU	Exynos 7870 8 nh????n, 1.6 GHz\r\nRAM	3 GB\r\nB??????? nh??????? trong	16 GB\r\nCamera sau	8 MP\r\nCamera tr???????????c	2 MP\r\nK??????t n???????i m??????ng\r\nWiFi, 3G, 4G LTE\r\nHOTMua sim Viettel DATA 7GB (7GB data/th????ng), m???????i th????ng n??????p ch??????? 70.000?????. Gi???? t?????? 80.000?????\r\nH??????? tr?????? SIM	Nano Sim\r\n????????m tho??????i	C????\r\nTrong h???????p c????: Adapter, S????ch h???????????ng d??????n, B????t c??????m ??????ng (+ ng????i b????t), C????p Micro USB, H???????p m????y\r\nB??????o h????nh ch????nh h????ng 12 th????ng. Xem chi ti??????t\r\n1 ????????????i 1 trong 1 th????ng v???????i s??????n ph??????m l???????i. T????m hi??????u\r\n????U ????????I TH????M\r\nMua h????ng ?????? 76 si????u th??????? nh??????n Phi??????u mua h????ng d????ng tr??????i nghi???????m d???????ch v?????? t??????i B????ch H????a Xanh (????p d??????ng cho SP ?????ang c???? KM phi??????u mua h????ng) Xem chi ti??????t'),
(32, 'Apple Macbook Pro Touch MPXX2SA/A i5 3.1GHz/8GB/256GB', '186', 44990000, 44950000, 300, 3, 1, 'Th????ng s??????? k?????? thu??????t\r\nCPU:	Intel Core i5 Kabylake, 3.10 GHz\r\nRAM:	8 GB, DDR3 (on board), 2133 MHz\r\n??????? c??????ng:	SSD: 256 GB\r\nM????n h????nh:	13.3 inch, Retina (2560 x 1600)\r\nCard m????n h????nh:	Card ???????????? h??????a t????ch h??????p, Intel???? Iris??????? Plus Graphics 650\r\nC???????ng k??????t n???????i:	4 x Thunderbolt 3 (USB-C)\r\n??????????c bi???????t:	C???? ?????????n b????n ph????m\r\nH??????? ?????i??????u h????nh:	Mac OS\r\nThi??????t k??????:	V?????? kim lo??????i nguy????n kh???????i, PIN li??????n\r\nK????ch th???????????c:	D????y 14.9 mm, 1.37 kg\r\nTrong h???????p c????: S????ch h???????????ng d??????n, Th????ng m????y, Adapter s??????c, C????p(USB-C)\r\nB??????o h????nh ch????nh h????ng 12 th????ng. Xem chi ti??????t\r\n1 ????????????i 1 trong 1 th????ng n??????u l???????i, ????????????i s??????n ph??????m t??????i nh???? trong 1 ng????y.\r\n????U ????????I TH????M\r\nMua h????ng ?????? 76 si????u th??????? nh??????n Phi??????u mua h????ng d????ng tr??????i nghi???????m d???????ch v?????? t??????i B????ch H????a Xanh (????p d??????ng cho SP ?????ang c???? KM phi??????u mua h????ng) Xem chi ti??????t'),
(33, 'Asus GL503GE i7 8750H/8GB/1TB+128GB/4GB GTX1050Ti/Win10/(EN021T)', '187', 29990000, 29950000, 300, 3, 6, 'Th????ng s??????? k?????? thu??????t\r\nCPU:	Intel Core i7 Coffee Lake, 8750H, 2.20 GHz\r\nRAM:	8 GB, DDR4 (2 khe), 2666 MHz\r\n??????? c??????ng:	HDD: 1TB + SSD: 128GB M2\r\nM????n h????nh:	15.6 inch, Full HD (1920 x 1080)\r\nCard m????n h????nh:	Card ???????????? h??????a r??????i, NVIDIA GeForce GTX 1050Ti, 4GB\r\nC???????ng k??????t n???????i:	HDMI 1.4, 3 x USB 3.0, Mini DisplayPort, LAN (RJ45), USB 2.0, USB Type-C\r\n??????????c bi???????t:	C???? ?????????n b????n ph????m\r\nH??????? ?????i??????u h????nh:	Windows 10 Home SL\r\nThi??????t k??????:	V?????? nh??????a - chi??????u ngh??????? tay b??????ng kim lo??????i, PIN li??????n\r\nK????ch th???????????c:	D????y 23 mm, 2.5 kg\r\nTrong h???????p c????: D????y ngu???????n, S????ch h???????????ng d??????n, Th????ng m????y, Adapter s??????c\r\nB??????o h????nh ch????nh h????ng 24 th????ng. Xem chi ti??????t\r\n1 ????????????i 1 trong 1 th????ng n??????u l???????i, ????????????i s??????n ph??????m t??????i nh???? trong 1 ng????y.\r\n????U ????????I TH????M\r\nMua h????ng ?????? 76 si????u th??????? nh??????n Phi??????u mua h????ng d????ng tr??????i nghi???????m d???????ch v?????? t??????i B????ch H????a Xanh (????p d??????ng cho SP ?????ang c???? KM phi??????u mua h????ng) Xem chi ti??????t'),
(34, 'Asus UX430UA i5 8250U/8GB/256GB/Win10/(GV334T)', '188', 21990000, 21990000, 300, 3, 6, 'Th????ng s??????? k?????? thu??????t\r\nCPU:	Intel Core i5 Kabylake Refresh, 8250U, 1.60 GHz\r\nRAM:	8 GB, DDR3 (on board), 1866 MHz\r\n??????? c??????ng:	SSD: 256 GB, M.2\r\nM????n h????nh:	14 inch, Full HD (1920 x 1080)\r\nCard m????n h????nh:	Card ???????????? h??????a t????ch h??????p, Intel???? UHD Graphics 620\r\nC???????ng k??????t n???????i:	Micro HDMI, USB 2.0, USB Type-C, USB 3.0\r\n??????????c bi???????t:	C???? ?????????n b????n ph????m\r\nH??????? ?????i??????u h????nh:	Windows 10 Home SL\r\nThi??????t k??????:	V?????? kim lo??????i, PIN li??????n\r\nK????ch th???????????c:	D????y 15.9 mm, 1.3 kg\r\nTrong h???????p c????: D????y ngu???????n, S????ch h???????????ng d??????n, Bao da (asus), Th????ng m????y, Adapter s??????c, C????p (USB-C sang HDMI, USB-C sang LAN)\r\nB??????o h????nh ch????nh h????ng 24 th????ng. Xem chi ti??????t\r\n1 ????????????i 1 trong 1 th????ng n??????u l???????i, ????????????i s??????n ph??????m t??????i nh???? trong 1 ng????y.\r\n????U ????????I TH????M\r\nMua h????ng ?????? 76 si????u th??????? nh??????n Phi??????u mua h????ng d????ng tr??????i nghi???????m d???????ch v?????? t??????i B????ch H????a Xanh (????p d??????ng cho SP ?????ang c???? KM phi??????u mua h????ng) Xem chi ti??????t'),
(35, 'Tai nghe nh????t trong Samsung EG920B', '189', 280000, 168000, 500, 4, 2, 'Th????ng s??????? k?????? thu??????t\r\nJack c??????m:	\r\n3.5 mm\r\n??????????? d????i d????y:	\r\n1.2 m\r\nPh????m ?????i??????u khi??????n:	\r\nMic tho??????i\r\nNghe/nh??????n cu???????c g??????i\r\nPh????t/d??????ng ch????i nh??????c\r\nT????ng/gi??????m ????m l??????????ng\r\nB??????? b????n h????ng:	\r\nTai nghe\r\n3 c??????p ????????????m tai nghe\r\n1 m????c v????nh tai\r\nXu??????t x??????	\r\nTrung Qu???????c\r\nTai nghe nh????t trong Samsung EG920B\r\n??????????  \r\n????en\r\nGI???? S??????C ONLINE: 168.000??????? 280.000???????\r\n???????? ??????????? s??????? l??????????ng - Ch??????? duy nh??????t 08/07\r\nM???????i s??????? ?????i???????n tho??????i ch??????? ???????????????c mua 1 s??????n ph??????m\r\nKh????ng ????p d??????ng khuy??????n m????i kh????c\r\nNh??????n tin 1.000????? x????c nh??????n mua h????ng\r\nNh??????n s??????n ph??????m trong 48h\r\nKh????ng ????p d??????ng chuy??????n h????ng\r\nXem th????m ph?????? ki???????n gi???? s???????c 24 gi??????\r\n115 kh????ch ???????????t mua (101 ????????? x????c nh??????n)\r\nHo??????c\r\nMUA GI???? TH??????????NG: 280.000???????\r\nGiao t??????n n????i ho??????c nh??????n t??????i c??????a h????ng\r\nMUA GI???? TH??????????NG 280.000???????\r\nGiao t??????n n????i ho??????c nh??????n ?????? c??????a h????ng\r\nG??????i ???????????t mua: 1800.1060 (Mi???????n ph????) 028.3622.1060 (7:30-22:00)\r\nB??????o h????nh 1 n????m 1 ????????????i 1. (Xem chi ti??????t)\r\nC????c ph????m ch??????c n????ng ???????????????c t????ch h??????p tr????n d????y, thu??????n l??????i cho ng??????????i d????ng.\r\nMicro t????ch h??????p c???? kh?????? n????ng l??????c ti??????ng ???????n.\r\n???????????m tai nghe ????m ????i, d??????? ch???????u khi s?????? d??????ng th??????i gian d????i.\r\nD????y d????i 120 cm tho??????i m????i ??????????? v??????a d????ng m????y v??????a nghe nh??????c.\r\nS??????n ph??????m ch????nh h????ng Samsung.'),
(36, '??????p l????ng iPhone X Nh??????a d??????o Solid in h????nh JM JM1802282 Chu????????t Lang', '190', 100000, 51000, 500, 4, 1, 'B??????o h????nh 2 tu??????n 1 ????????????i 1 (n??????u l???????i).\r\nCh??????t li???????u nh??????a, ki??????u d????ng th??????i trang v???? ???????????p m??????t\r\nThi??????t k?????? v??????a v??????n v???? ????m s????t th????n m????y\r\n D??????? d????ng th????o/l??????p ???????p v????o m????y'),
(37, 'Samsung Gear VR3', '191', 2490000, 2490000, 500, 4, 2, 'Th????ng s??????? k?????? thu??????t\r\nM????u s??????c	????en\r\nT????nh n????ng	Xem video, Ch????i game, Xem hi?????nh a?????nh\r\nCh??????t li???????u	nh??????a\r\nK????ch th???????????c	D????i 207.8 mm - Ngang 122.5 mm - Cao 98.6 mm\r\nTr??????ng l??????????ng	345 g\r\n Trong h???????p c????: H???????p,S????ch h???????????ng d??????n\r\n B??????o h????nh ch????nh h????ng 6 th????ng. Xem chi ti??????t\r\nGiao h????ng t??????n n????i mi???????n ph???? trong 30 ph????t. T????m hi??????u\r\n1 ????????????i 1 trong 1 th????ng v???????i s??????n ph??????m l???????i. T????m hi??????u'),
(38, 'B????t c??????m ??????ng Apple Pencil', '192', 2990000, 2990000, 500, 4, 1, 'B??????o h????nh ch????nh h????ng 12 th????ng. Xem chi ti??????t\r\nB????t chuy????n d??????ng d????nh cho iPad Pro v???? iPad 2018.\r\nK????ch th???????????c nh???? m???????t chi??????c b????t ch???? d??????? c??????m tay.\r\nB????t s??????c pin r??????t ?????????n gi??????n qua Lightning connector - 15 gi????y s?????? d??????ng 30 ph????t\r\nK??????t n???????i b??????ng Bluetooth v???? thao t????c tr????n c????c ??????ng d??????ng c??????a Apple ti???????n l??????i\r\nB??????o h????nh 12 th????ng ch????nh h????ng Apple'),
(39, 'Samsung Gear Fit2 Pro', '193', 4190000, 4190000, 500, 4, 2, 'Th????ng s??????? k?????? thu??????t\r\nM????n h????nh	AMOLED, 1.5 inch, 216 x 432 pixels\r\nK????nh c??????????ng l??????c	C????\r\nCh??????t li???????u	D????y cao su\r\nCh???????ng n???????????c	C????\r\nThi??????t b??????? k??????t n???????i	Android v???? iOS\r\nTh??????i gian s?????? d??????ng	Kho??????ng 3 - 4 ng????y\r\n Trong h???????p c????: ???????????ng h???????,S????ch h???????????ng d??????n,H???????p,S??????c\r\n B??????o h????nh ch????nh h????ng 12 th????ng. Xem chi ti??????t\r\nGiao h????ng t??????n n????i mi???????n ph???? trong 30 ph????t. T????m hi??????u\r\n1 ????????????i 1 trong 1 th????ng v???????i s??????n ph??????m l???????i. T????m hi??????u\r\n'),
(40, 'Apple Watch S1, 38mm, vi??????n nh????m, d????y cao su m????u tr??????ng', '194', 7990000, 7990000, 500, 4, 1, 'Th????ng s??????? k?????? thu??????t\r\nM????n h????nh	AMOLED, 1.5 inch, 340 x 272 pixels\r\nK????nh c??????????ng l??????c	Ion-X strengthened glass\r\nCh??????t li???????u	Cao su\r\nCh???????ng n???????????c	C????\r\nThi??????t b??????? k??????t n???????i	iPhone 5, iOS 8.2 tr?????? l????n\r\nTh??????i gian s?????? d??????ng	Ch??????: 18h. S?????? d??????ng: 3h'),
(41, 'Samsung Gear S3 Frontier', '195', 7990000, 7950000, 500, 4, 2, 'Th????ng s??????? k?????? thu??????t\r\nM????n h????nh	Super AMOLED, 1.3 inch, 360 x 360 pixels\r\nK????nh c??????????ng l??????c	Corning???? Gorilla???? Glass 3\r\nCh??????t li???????u	Th????p kh????ng g???????\r\nCh???????ng n???????????c	C????\r\nThi??????t b??????? k??????t n???????i	Android RAM tr????n 1.5 GB v???? iOS\r\nTh??????i gian s?????? d??????ng	Kho??????ng 72 ti??????ng\r\n Trong h???????p c????: ???????????ng h???????, S??????c, S????ch h???????????ng d??????n\r\n B??????o h????nh ch????nh h????ng 12 th????ng. Xem chi ti??????t\r\nGiao h????ng t??????n n????i mi???????n ph???? trong 30 ph????t. T????m hi??????u\r\n1 ????????????i 1 trong 1 th????ng v???????i s??????n ph??????m l???????i. T????m hi??????u');


CREATE TABLE IF NOT EXISTS `types` (
  `id_type` int(11) NOT NULL,
  `name_type` tinytext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `types` (`id_type`, `name_type`) VALUES
(1, '????i????n tho??????i Smartphone'),
(2, 'M????y t????nh b??????ng'),
(3, 'Laptop'),
(4, 'Ph?????? ki???????n');

ALTER TABLE `accounts`
  ADD PRIMARY KEY (`user_account`);

ALTER TABLE `admins`
  ADD PRIMARY KEY (`user_admin`);

ALTER TABLE `brands`
  ADD PRIMARY KEY (`id_brand`);

ALTER TABLE `carts`
  ADD PRIMARY KEY (`id_cart`);


ALTER TABLE `cart_info`
  ADD PRIMARY KEY (`id_cart_info`);

ALTER TABLE `gallerys`
  ADD PRIMARY KEY (`id_gallery`);

ALTER TABLE `images`
  ADD PRIMARY KEY (`id_image`);

ALTER TABLE `news`
  ADD PRIMARY KEY (`id_new`);

ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`);

ALTER TABLE `types`
  ADD PRIMARY KEY (`id_type`);

ALTER TABLE `brands`
  MODIFY `id_brand` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;

ALTER TABLE `carts`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `cart_info`
  MODIFY `id_cart_info` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `gallerys`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;

ALTER TABLE `images`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=197;

ALTER TABLE `news`
  MODIFY `id_new` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;

ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;

ALTER TABLE `types`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;

