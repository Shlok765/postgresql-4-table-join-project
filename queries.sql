


-- ============================================
-- 1. View All Customers
-- ============================================

SELECT *
FROM customers;


-- ============================================
-- 2. View All Orders
-- ============================================

SELECT *
FROM orders;


-- ============================================
-- 3. View All Products
-- ============================================

SELECT *
FROM products;


-- ============================================
-- 4. View All Order Items
-- ============================================

SELECT *
FROM order_items;


-- ============================================
-- 5. Four-Table JOIN
-- Show customer, order, product and quantity
-- ============================================

SELECT
    c.cust_name,
    o.ord_date,
    p.p_name,
    p.price,
    oi.quantity
FROM order_items oi
JOIN products p
    ON oi.p_id = p.p_id
JOIN orders o
    ON oi.ord_id = o.ord_id
JOIN customers c
    ON o.cust_id = c.cust_id;


-- ============================================
-- 6. Calculate Total Price Per Item
-- quantity × product price
-- ============================================

SELECT
    c.cust_name,
    p.p_name,
    p.price,
    oi.quantity,
    (oi.quantity * p.price) AS total_price
FROM order_items oi
JOIN products p
    ON oi.p_id = p.p_id
JOIN orders o
    ON oi.ord_id = o.ord_id
JOIN customers c
    ON o.cust_id = c.cust_id;


-- ============================================
-- 7. Show Complete Order Details
-- ============================================

SELECT
    c.cust_name,
    o.ord_date,
    p.p_name,
    oi.quantity,
    p.price,
    (oi.quantity * p.price) AS total_price
FROM customers c
JOIN orders o
    ON c.cust_id = o.cust_id
JOIN order_items oi
    ON o.ord_id = oi.ord_id
JOIN products p
    ON oi.p_id = p.p_id
ORDER BY o.ord_date;


-- ============================================
-- 8. Find Orders Made By Sham
-- ============================================

SELECT
    c.cust_name,
    o.ord_date,
    p.p_name,
    oi.quantity,
    (oi.quantity * p.price) AS total_price
FROM customers c
JOIN orders o
    ON c.cust_id = o.cust_id
JOIN order_items oi
    ON o.ord_id = oi.ord_id
JOIN products p
    ON oi.p_id = p.p_id
WHERE c.cust_name = 'Sham';
