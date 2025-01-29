SELECT EXTRACT(YEAR FROM ord.order_date) AS order_year,
       SUM(od.unit_price * od.quantity * (1 - od.discount)) AS total_price
FROM northwind.orders AS ord
JOIN northwind.order_details AS od ON ord.order_id = od.order_id
GROUP BY order_year
ORDER BY total_price DESC;
