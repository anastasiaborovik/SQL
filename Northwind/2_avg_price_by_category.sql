SELECT category_id,
       ROUND(AVG(unit_price)::numeric, 2)
FROM northwind.products
GROUP BY category_id;
