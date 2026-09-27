



-- Customers Table


CREATE TABLE customers (
    cust_id SERIAL PRIMARY KEY,
    cust_name VARCHAR(100) NOT NULL
);



-- Orders Table


CREATE TABLE orders (
    ord_id SERIAL PRIMARY KEY,
    ord_date DATE NOT NULL,
    cust_id INTEGER NOT NULL,

    FOREIGN KEY (cust_id)
        REFERENCES customers(cust_id)
);



-- Products Table


CREATE TABLE products (
    p_id SERIAL PRIMARY KEY,
    p_name VARCHAR(100) NOT NULL,
    price NUMERIC(10,2) NOT NULL
);


-- Order Items Table


CREATE TABLE order_items (
    item_id SERIAL PRIMARY KEY,
    ord_id INTEGER NOT NULL,
    p_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,

    FOREIGN KEY (ord_id)
        REFERENCES orders(ord_id),

    FOREIGN KEY (p_id)
        REFERENCES products(p_id)
);
