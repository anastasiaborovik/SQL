SELECT first_name,
       last_name
FROM northwind.employees
WHERE city = 'London'
  AND home_phone LIKE '%8';
