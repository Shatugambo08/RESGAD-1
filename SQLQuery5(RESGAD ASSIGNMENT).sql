
SELECT empid,
COUNT(CASE WHEN YEAR(orderdate)= 2020 THEN 1 END) AS cnt2020,
COUNT(CASE WHEN YEAR(orderdate)= 2021 THEN 1 END) AS cnt2021,
COUNT(CASE WHEN YEAR(orderdate)= 2022 THEN 1 END) AS cnt2022
FROM dbo.ordersssss
GROUP BY empid


-----The problem is the "WHERE" Clause ,it tried to use the aliias end of the year which is defined in SELECT clause.

----The solution is to repeat the DATEFROMPARTS at the WHERE Clause