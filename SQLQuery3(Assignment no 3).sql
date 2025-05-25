SELECT 
custid,
orderid,
qty,
qty-LAG(qty)OVER(PARTITION BY custid ORDER BY orderid) AS diffprev,
qty-LEAD(qty)OVER(PARTITION BY custid ORDER BY orderid) AS diffnext
FROM dbo.Orderssss
ORDER BY custid,orderid