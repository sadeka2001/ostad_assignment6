CREATE TABLE
    `products` (
        `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `customer_id` bigint(20) UNSIGNED NOT NULL,
        `category_id` bigint(20) UNSIGNED NOT NULL,
        `name` varchar(100) NOT NULL,
        `description` varchar(50) NOT NULL,
        `price` varchar(50) NOT NULL,
        `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
        `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
        FOREIGN KEY (`customer_id`) REFERENCES `customer`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
        FOREIGN KEY (`category_id`) REFERENCES `categories`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE
    )