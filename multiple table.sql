USE my_database;
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    subscription_id INTEGER,
    purchase_date DATE
);

INSERT INTO orders (order_id, customer_id, subscription_id, purchase_date) VALUES
(1, 3, 2, '2017-01-10'),
(2, 2, 4, '2017-01-09'),
(3, 3, 4, '2017-01-26'),
(4, 9, 9, '2017-01-04'),
(5, 7, 5, '2017-01-25'),
(6, 8, 2, '2017-01-18'),
(7, 5, 8, '2017-01-11'),
(8, 9, 5, '2017-01-26'),
(9, 4, 4, '2017-01-25'),
(10, 1, 7, '2017-01-26');

CREATE TABLE subscriptions (
    subscription_id INTEGER PRIMARY KEY,
    description TEXT,
    price_per_month REAL,
    subscription_length TEXT
);

INSERT INTO subscriptions (subscription_id, description, price_per_month, subscription_length) VALUES
(1, 'Politics Magazine', 10, '12 months'),
(2, 'Politics Magazine', 11, '6 months'),
(3, 'Politics Magazine', 12, '3 months'),
(4, 'Fashion Magazine', 15, '12 months'),
(5, 'Fashion Magazine', 17, '6 months'),
(6, 'Fashion Magazine', 19, '3 months'),
(7, 'Sports Magazine', 11, '12 months'),
(8, 'Sports Magazine', 12, '6 months'),
(9, 'Sports Magazine', 13, '3 months');

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name TEXT,
    address TEXT
);

INSERT INTO customers (customer_id, customer_name, address) VALUES
(1, 'Allie Rahaim', '123 Broadway'),
(2, 'Jacquline Diddle', '456 Park Ave.'),
(3, 'Lizabeth Letsche', '789 Main St.'),
(4, 'Jessia Butman', '1 Columbus Ave.'),
(5, 'Inocencia Goyco', '12 Amsterdam Ave.'),
(6, 'Bethann Schraub', '29 Monticello'),
(7, 'Janay Priolo', '81 Harrisburg'),
(8, 'Ophelia Sturdnant', '31 Deerfield Ave.'),
(9, 'Eryn Vilar', '56 Morton St.'),
(10, 'Jina Farraj', '100 Bryan Ave.');

SELECT * FROM orders;
SELECT * FROM subscriptions;
SELECT * FROM customers;

SELECT *
FROM orders
JOIN subscriptions
  ON orders.subscription_id = subscriptions.subscription_id;


SELECT *
FROM orders
JOIN subscriptions
  ON orders.subscription_id = subscriptions.subscription_id
WHERE subscriptions.description	 = 'Fashion Magazine';

SELECT COUNT(*)
FROM orders;

SELECT COUNT(*)
FROM orders
JOIN customers
  ON orders.customer_id = customers.customer_id;

SELECT *
FROM orders
LEFT JOIN subscriptions
  ON orders.subscription_id = subscriptions.subscription_id;
  

SELECT *
FROM orders
UNION
SELECT *
FROM subscriptions;