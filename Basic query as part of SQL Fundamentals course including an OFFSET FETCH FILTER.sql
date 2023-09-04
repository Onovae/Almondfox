--Basic query as part of SQL Fundamentals course including an OFFSET FETCH FILTER
SELECT
SalesOrderNumber AS InvoiceNumber,
OrderDate,
SUM(SalesAmount)AS InvoiceSubtotal,
SUM(TaxAmt)AS TaxAmount,
SUM(OrderQuantity) AS TotalQuantity,
SUM(SalesAmount) + SUM(TaxAmt) AS InvoiceTotal

FROM FactInternetSales
WHERE SalesTerritorykey = 6

GROUP BY SalesOrderNumber, OrderDate
HAVING SUM(SalesAmount) > 1000

ORDER BY Invoicesubtotal DESC

OFFSET 2 ROWS FETCH NEXT 10 ROWS ONLY--To use the offset fetch statement you must use thr order by statement
--the offset fetch alows you to achieve a similar result to the top end but also allows you to skip rows