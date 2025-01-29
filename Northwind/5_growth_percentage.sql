WITH years AS
  (SELECT EXTRACT(YEAR FROM order_date) AS creation_year,
          COUNT(order_id) AS orders_count
   FROM northwind.orders
   WHERE EXTRACT(YEAR FROM order_date) BETWEEN 1996 AND 1998
   GROUP BY creation_year)

SELECT creation_year,
       orders_count,
       ROUND((orders_count::numeric / LAG(orders_count) OVER (ORDER BY creation_year)) * 100 - 100) AS growth_percentage
FROM years;