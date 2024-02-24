SELECT *
FROM capacity
WHERE date_CET LIKE '2023%'
AND country LIKE 'DK'
GROUP BY date_CET
ORDER BY last_update_time DES


SELECT price, ROUND(avg(price),2) AS 'average price'
