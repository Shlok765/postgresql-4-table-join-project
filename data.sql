



-- Customers


INSERT INTO customers (cust_name)
VALUES
    ('Raju'),
    ('Sham'),
    ('Paul'),
    ('Alex');




INSERT INTO orders (ord_date, cust_id)
VALUES
    ('2024-01-01', 1),  -- Raju
    ('2024-02-01', 2),  -- Sham
    ('2024-03-01', 3),  -- Paul
    ('2024-04-04', 2);  -- Sham's second order



INSERT INTO products (p_name, price)
VALUES
    ('Laptop', 55000.00),
    ('Mouse', 500.00),
    ('Keyboard', 800.00),
    ('Cable', 250.00);


INSERT INTO order_items (ord_id, p_id, quantity)
VALUES
    (1, 1, 1),  -- Raju → 1 Laptop
    (1, 4, 2),  -- Raju → 2 Cables
    (2, 1, 1),  -- Sham → 1 Laptop
    (3, 2, 1),  -- Paul → 1 Mouse
    (3, 4, 5),  -- Paul → 5 Cables
    (4, 3, 1);  -- Sham → 1 Keyboard
