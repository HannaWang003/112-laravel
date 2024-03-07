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

-- insert

INSERT INTO `chanels` (`id`, `product`, `num`, `sh`, `created_at`, `updated_at`, `votes`) VALUES (NULL, 'handbag', '5', '1', '2024-03-07 13:23:55', '2024-03-07 13:23:55', '2'),
(NULL, 'shoes', '20', '1', '2024-03-07 13:23:55', '2024-03-07 13:23:55', '5'),
(NULL, 'ready to wear', '10', '1', '2024-03-07 13:23:55', '2024-03-07 13:23:55', '1'),
(NULL, 'watch', '1', '1', '2024-03-07 13:23:55', '2024-03-07 13:23:55', '3');
