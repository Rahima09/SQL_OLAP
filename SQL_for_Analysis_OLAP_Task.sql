-- 1 - task
SELECT prod_category, SUM(amount_sold) AS total_sales_amount
FROM sh.sales
INNER JOIN sh.products ON sh.sales.prod_id = sh.products.prod_id
WHERE time_id BETWEEN '1998-01-30' AND '1998-03-10'
GROUP BY sh.products.prod_category;

-- 2 - task

SELECT country_region AS particular_region, AVG(quantity_sold) AS average_sales_quantity
FROM sh.sales
INNER JOIN sh.customers ON sh.sales.cust_id = sh.customers.cust_id
INNER JOIN sh.products ON sh.sales.prod_id = sh.products.prod_id
INNER JOIN sh.countries ON sh.customers.country_id = sh.countries.country_id
WHERE prod_name = 'Standard Mouse'
GROUP BY country_region;

-- 3 - task
SELECT sh.sales.cust_id, SUM(amount_sold) AS total_sales_amount
FROM sh.sales
INNER JOIN sh.customers ON sh.sales.cust_id = sh.customers.cust_id
GROUP BY sh.sales.cust_id
ORDER BY total_sales_amount DESC
LIMIT 5;




