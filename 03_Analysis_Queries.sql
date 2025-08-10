Analysis...(1-9)

1... TOP 5 PRODUCTS BY REVENUE

SELECT p.product_name, SUM(s.quantity * p.price) AS total_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC
LIMIT 5;


2....MONTHLY SALES TREND

SELECT DATE_FORMAT(s.sale_date, '%Y-%m') AS month, SUM(s.quantity * p.price) AS monthly_revenue
FROM sales s
JOIN products p 
ON s.product_id = p.product_id
GROUP BY month
ORDER BY month;

3.... CUSTOMER LIFETIME VALUE

SELECT c.first_name, c.last_name, SUM(s.quantity * p.price) AS lifetime_value
FROM customers c
JOIN sales s ON c.customer_id = s.customer_id
JOIN products p ON s.product_id = p.product_id
GROUP BY c.customer_id
ORDER BY lifetime_value DESC;

4.... RUNNING TOTAL SALES 

SELECT S.sale_id, S.sale_date, SUM(S.quantity * P.price) OVER (ORDER BY S.sale_date) AS running_total
FROM sales S
JOIN products P
ON S.product_id = P.product_id;

5...PRODUCT NEVER SOLD

SELECT p.product_name
FROM products p
LEFT JOIN sales s ON p.product_id = s.product_id
WHERE s.sale_id IS NULL;

6.... CATEGORIZE SALES QUANTITY PER SALE

SELECT
  sale_id,
  quantity,
  CASE
    WHEN quantity = 1 THEN 'Single item'
    WHEN quantity BETWEEN 2 AND 4 THEN 'Small batch'
    WHEN quantity >= 5 THEN 'Large batch'
    ELSE 'Unknown'
  END AS quantity_category
FROM sales;

7....CASE WHEN
CUSTOMERS SEGMENT BY LIFETIME VALUE

SELECT
  c.customer_id,
  c.first_name,
  c.last_name,
  SUM(s.quantity * p.price) AS lifetime_value,
  CASE
    WHEN SUM(s.quantity * p.price) > 2000 THEN 'Premium Customer'
    WHEN SUM(s.quantity * p.price) BETWEEN 1000 AND 2000 THEN 'Regular Customer'
    ELSE 'New / Low Value Customer'
  END AS customer_segment
FROM customers c
JOIN sales s ON c.customer_id = s.customer_id
JOIN products p ON s.product_id = p.product_id
GROUP BY c.customer_id
ORDER BY lifetime_value DESC;

8....DISTINCT: GET A LIST OF UNIQUE CITIES WHERE CUSTOMER LIVE

Select Distinct city
from Customers ;

9...UNION: combined unique cities from customers and stores

SELECT city 
FROM customers
UNION
SELECT city 
FROM stores;