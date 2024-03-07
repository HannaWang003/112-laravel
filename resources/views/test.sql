CREATE TABLE `chanel` (
  `id` int(10) UNSIGNED NOT NULL,
  `product` text NOT NULL COMMENT '產品',
  `num` int(10) NOT NULL COMMENT '數量',
  `date` date NOT NULL COMMENT '日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `LV` (
  `id` int(10) UNSIGNED NOT NULL,
  `product` text NOT NULL COMMENT '產品',
  `num` int(10) NOT NULL COMMENT '數量',
  `date` date NOT NULL COMMENT '日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;