-- Analyze revenue and number of transactions by sales location

SELECT store_location,
       SUM(total_price) AS revenue,
       COUNT(*) AS transactions
FROM sales
GROUP BY store_location
ORDER BY revenue DESC;

--Analyze stock levels across product categories

SELECT p.category,
       SUM(i.quantity_available) AS quantity
FROM inventory i
JOIN products p ON i.product_id = p.product_id
GROUP BY p.category
ORDER BY quantity DESC;
