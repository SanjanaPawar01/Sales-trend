-- Task 6: Sales Trend Analysis Using Aggregations

CREATE TABLE online_sales (
    order_id INTEGER,
    order_date TEXT,
    amount REAL,
    product_id INTEGER
);

INSERT INTO online_sales (order_id, order_date, amount, product_id)
VALUES 
(1, '2023-01-10', 150.00, 101),
(2, '2023-01-15', 200.00, 102),
(3, '2023-02-10', 180.00, 103),
(4, '2023-02-25', 220.00, 101),
(5, '2023-03-05', 170.00, 104);

SELECT 
  strftime('%Y', order_date) AS year,
  strftime('%m', order_date) AS month,
  SUM(amount) AS total_revenue,
  COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY year, month
ORDER BY year, month;
