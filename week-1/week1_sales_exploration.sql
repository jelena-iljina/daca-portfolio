-- Mitu rida on sales tabelis?
Select count (*) AS ridade_arv
FROM sales

-- Millised veerud ja andmed tabelis on? 
select * FROM sales LIMIT 10

-- Tallinna kaupluse müügid
select *
from sales
where store_location = 'Tallinn' 
order by sale_date DESC 
LIMIT 15

-- 10 suurimat tehingut
SELECT *
FROM sales 
ORDER BY total_price DESC 
LIMIT 10;

-- 10 väikseimat tehingut 
SELECT *
FROM sales
ORDER BY total_price asc
LIMIT 10


-- Mitu rida, kus kliendi info on puudu? NULL
SELECT COUNT(*) - COUNT(customer_id) AS puuduv_klient
FROM sales;

SELECT *
FROM sales
WHERE customer_id IS NULL
LIMIT 10;

-- Kõik unikaalsed müügikanalid
SELECT DISTINCT channel FROM sales;

-- Kokku tehingute arv iga kaupluse kohta
SELECT store_location, COUNT(*) AS tehinguid  
FROM sales  
GROUP BY store_location   
ORDER BY tehinguid DESC;

-- Tehingud, kus summa on üle 100 EUR JA kauplus on Tallinnas
SELECT *
FROM sales   
WHERE total_price > 100 AND store_location = 'Tallinn'   
ORDER BY total_price DESC;
