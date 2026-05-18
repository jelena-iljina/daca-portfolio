--Ühenda müük, kliendid ja veebilogi kanalitega:
SELECT      w.source AS turunduskanal,      COUNT(DISTINCT c.customer_id) AS kliente,      COUNT(DISTINCT o.sale_id) AS tellimusi,      SUM(o.total_price) AS kogukäive,      ROUND(AVG(o.total_price), 2) AS keskmine_tellimus    
FROM sales o    
JOIN customers c ON o.customer_id = c.customer_id    
LEFT JOIN web_logs w ON c.customer_id = w.customer_id    
GROUP BY w.source    
ORDER BY kogukäive DESC;

--Kanali efektiivsus CTE-ga 
SELECT
    p.category,
    SUM(s.quantity) AS muuudud_kokku,
    COUNT(DISTINCT p.product_id) AS toodete_arv,
    ROUND(SUM(s.quantity) * 1.0 / COUNT(DISTINCT p.product_id), 2) AS keskmine_muuudud_toote_kohta
FROM products p
JOIN sales s
    ON p.product_id = s.product_id
GROUP BY p.category
HAVING SUM(s.quantity) > 100
ORDER BY muuudud_kokku DESC;

--Kampaaniate kuised trendid
SELECT
    p.product_name,
    p.category,
    p.retail_price,
    ROW_NUMBER() OVER (
        PARTITION BY p.category
        ORDER BY p.retail_price DESC
    ) AS koht_kategoorias
FROM products p;


LAG(SUM(o.total_price)) OVER (      PARTITION BY w.source      ORDER BY DATE_TRUNC('month', o.sale_date)    ) AS eelmise_kuu_käive 
