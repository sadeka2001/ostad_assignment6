CREATE TABLE
    `order_item` (
`id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
 `quantity` varchar(50) NOT NULL,
`unit_price` varchar(50) NOT NULL,
`order_id` bigint(20) UNSIGNED NOT NULL,
`product_id` bigint(20) UNSIGNED NOT NULL,
`created_at` timestamp NOT NULL DEFAULT current_timestamp(),
`updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
FOREIGN KEY (`order_id`) REFERENCES `order`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (`product_id`) REFERENCES `products`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE
)