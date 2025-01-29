WITH empl_rank AS
  (SELECT employee_id,
          COUNT(order_id) AS total_orders,
          RANK() OVER (ORDER BY COUNT(order_id) DESC) AS employee_rank
   FROM northwind.orders
   GROUP BY employee_id)

SELECT employee_rank,
       last_name,
       first_name,
       total_orders
FROM empl_rank
JOIN northwind.employees AS empl ON empl_rank.employee_id = empl.employee_id
ORDER BY employee_rank;
