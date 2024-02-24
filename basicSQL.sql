SELECT *
FROM capacity
WHERE date_CET LIKE '2023%'
/* if year is datetime: YEAR(date_CET) = 2023 */
AND country LIKE 'DK'
--GROUP BY date_CET
ORDER BY last_update_time DES;


SELECT price, ROUND(AVG(price),2) AS 'average price'
FROM spotprice;
SELECT SUM(price) AS 'total price';


WITH RankedRecords AS (
  SELECT *,
         ROW_NUMBER() OVER(PARTITION BY id ORDER BY update_time DESC) AS rn
  FROM capacity
)
SELECT *
FROM RankedRecords
WHERE rn = 1;

SELECT id, MAX(update_time) AS latest_update_time
FROM capacity
GROUP BY id;


SELECT country,
  SUM(CASE WHEN type IN ('daily', 'long term') THEN value ELSE 0 END) AS total_value
FROM capacity
WHERE date_CET = 'specific date' -- 'YYYY-MM-DD'
GROUP BY country;
