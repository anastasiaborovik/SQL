WITH ord_fltr AS
  (SELECT customer_id
   FROM northwind.orders
   WHERE EXTRACT(YEAR FROM order_date) = 1997
   GROUP BY customer_id
   HAVING COUNT(order_id) > 5)

SELECT ct.company_name
FROM northwind.customers AS ct
JOIN ord_fltr ON ct.customer_id = ord_fltr.customer_id
ORDER BY ct.company_name DESC;