SELECT product_name
FROM northwind.products
WHERE unit_price >
    (SELECT AVG(unit_price)
     FROM northwind.products);