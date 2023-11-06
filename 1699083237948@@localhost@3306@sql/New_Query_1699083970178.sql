-- Active: 1699083237948@@localhost@3306@sql

-- Write a SQL query to retrieve all the customer information along with the total number
--  of orders placed by each customer. Display the result in descending order of the number 
--  of orders.


--Task -1

-- SELECT  c.id,  c.name, c.email,COUNT(o.id) AS total_orders FROM customer c LEFT JOIN
-- `order` o ON c.id = o.customer_id GROUP BY c.id, c.name, c.email ORDER BY total_orders DESC;
    

--Task-2




-- SELECT o.id AS order_id, p.name AS product_name, oi.quantity, oi.unit_price * oi.quantity AS total_amount
-- FROM `order` o
-- INNER JOIN order_item oi ON o.id = oi.order_id
-- INNER JOIN products p ON oi.product_id = p.id
-- ORDER BY o.id ASC;

--Task 3

-- SELECT c.name AS category_name, SUM(oi.unit_price * oi.quantity) AS total_revenue
-- FROM order_item oi
-- INNER JOIN products p ON oi.product_id = p.id
-- INNER JOIN categories c ON p.category_id = c.id
-- GROUP BY c.id
-- ORDER BY total_revenue DESC;


--Task-4

-- SELECT c.name, SUM(o.total_amount) AS total_purchase_amount
-- FROM customer c
-- INNER JOIN `order` o ON c.id = o.customer_id
-- GROUP BY c.id
-- ORDER BY total_purchase_amount DESC
-- LIMIT 5;