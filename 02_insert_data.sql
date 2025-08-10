INSERT INTO customers (first_name, last_name, email, join_date, city, country) VALUES
('John', 'Doe', 'john@example.com', '2023-01-15', 'London', 'UK'),
('Jane', 'Smith', 'jane@example.com', '2023-02-10', 'Birmingham', 'UK'),
('Alice', 'Brown', 'alice@example.com', '2023-03-20', 'Manchester', 'UK');

INSERT INTO products (product_name, category, price, cost) VALUES
('Laptop Pro 15"', 'Electronics', 1200.00, 800.00),
('Wireless Mouse', 'Electronics', 25.00, 10.00),
('Office Chair', 'Furniture', 200.00, 120.00);


INSERT INTO stores (store_name, city, region) VALUES
('Tech Store London', 'London', 'South East'),
('Tech Store Birmingham', 'Birmingham', 'West Midlands');


INSERT INTO sales (customer_id, product_id, store_id, quantity, sale_date) VALUES
(1, 1, 1, 1, '2023-04-01'),
(2, 2, 2, 2, '2023-04-03'),
(3, 3, 1, 1, '2023-04-05'),
(1, 2, 1, 1, '2023-05-01');
.........................................................................................


