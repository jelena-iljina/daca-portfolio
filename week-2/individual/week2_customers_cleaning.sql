CREATE TABLE test_customers AS
SELECT * FROM customers

--Dublikaatsed email
SELECT email, COUNT (*) AS koopiate_arv
FROM test_customers
GROUP BY email
HAVING COUNT (*)  > 1
ORDER BY koopiate_arv DESC;

SELECT COUNT(*) AS duplicate_email_count
FROM (
  SELECT email
  FROM test_customers
  WHERE email IS NOT NULL
  GROUP BY email
  HAVING COUNT(*) > 1
  ) t;

--Puuduvad nimed
SELECT COUNT(*) FILTER (WHERE first_name IS NULL OR first_name = '') AS null_eesnimi,
COUNT(*) FILTER (WHERE last_name IS NULL OR last_name = '') AS null_perenimi
FROM test_customers;

--Linnade nimetus kas on korrektne voi ei 
SELECT city, COUNT(*) AS arv
FROM test_customers
GROUP BY city
ORDER BY city;

--Kontrolli kontaktandmeid
SELECT COUNT(*) FILTER (WHERE phone IS NULL OR phone = '') AS null_telefon,
COUNT(*) FILTER (WHERE email IS NULL OR email = '') AS null_email
FROM test_customers;

-- Asenda NULL nimed
UPDATE test_customers
SET first_name = 'Tundmatu'
WHERE first_name IS NULL OR first_name = '';


-- Ühtlusta linnanimed INITCAP + TRIM abil
UPDATE test_customers
SET city = INITCAP(TRIM(city))
WHERE city != INITCAP(TRIM(city));


-- Standardiseeri e-mailid väiketähtedeks
UPDATE test_customers
SET email = LOWER(TRIM(email))
WHERE email != LOWER(TRIM(email));

