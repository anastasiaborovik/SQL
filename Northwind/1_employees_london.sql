SELECT category_id,
       ROUND(AVG(unit_price)::numeric, 2) AS avg_price
FROM northwind.products
GROUP BY category_id
ORDER BY avg_price DESC;