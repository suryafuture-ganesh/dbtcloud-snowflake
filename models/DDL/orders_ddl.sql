CREATE OR REPLACE TABLE orders (
    order_id        INT AUTOINCREMENT PRIMARY KEY,
    customer_id     INT,
    order_date      DATE,
    ship_date       DATE,
    order_status    STRING,
    total_amount    NUMBER(10,2),
    payment_method  STRING,
    shipping_city   STRING,
    shipping_country STRING
);





INSERT INTO orders (
    customer_id, order_date, ship_date, order_status, total_amount, payment_method, shipping_city, shipping_country
) VALUES
(101, '2025-07-01', '2025-07-03', 'Shipped', 250.00, 'Credit Card', 'New York', 'USA'),
(102, '2025-07-02', '2025-07-05', 'Delivered', 480.00, 'PayPal', 'Los Angeles', 'USA'),
(103, '2025-07-03', '2025-07-06', 'Delivered', 325.50, 'Debit Card', 'Chicago', 'USA'),
(104, '2025-07-04', '2025-07-07', 'Shipped', 150.75, 'Credit Card', 'Houston', 'USA'),
(105, '2025-07-05', '2025-07-08', 'Cancelled', 200.00, 'UPI', 'Dallas', 'USA'),
(106, '2025-07-06', '2025-07-09', 'Pending', 175.20, 'Net Banking', 'Austin', 'USA'),
(107, '2025-07-07', '2025-07-10', 'Delivered', 550.00, 'Credit Card', 'San Diego', 'USA'),
(108, '2025-07-08', '2025-07-11', 'Shipped', 320.30, 'PayPal', 'San Jose', 'USA'),
(109, '2025-07-09', '2025-07-12', 'Delivered', 275.10, 'Debit Card', 'Phoenix', 'USA'),
(110, '2025-07-10', '2025-07-13', 'Pending', 610.00, 'Credit Card', 'Philadelphia', 'USA'),
(111, '2025-07-11', '2025-07-14', 'Delivered', 455.00, 'UPI', 'San Antonio', 'USA'),
(112, '2025-07-12', '2025-07-15', 'Shipped', 199.99, 'Credit Card', 'Columbus', 'USA'),
(113, '2025-07-13', '2025-07-16', 'Delivered', 389.49, 'PayPal', 'Charlotte', 'USA'),
(114, '2025-07-14', '2025-07-17', 'Pending', 420.00, 'Net Banking', 'Seattle', 'USA'),
(115, '2025-07-15', '2025-07-18', 'Cancelled', 230.00, 'Credit Card', 'Denver', 'USA'),
(116, '2025-07-16', '2025-07-19', 'Shipped', 310.00, 'Debit Card', 'Detroit', 'USA'),
(117, '2025-07-17', '2025-07-20', 'Delivered', 275.75, 'Credit Card', 'Nashville', 'USA'),
(118, '2025-07-18', '2025-07-21', 'Delivered', 495.60, 'PayPal', 'El Paso', 'USA'),
(119, '2025-07-19', '2025-07-22', 'Shipped', 380.00, 'UPI', 'Boston', 'USA'),
(120, '2025-07-20', '2025-07-23', 'Pending', 505.25, 'Credit Card', 'Baltimore', 'USA');
