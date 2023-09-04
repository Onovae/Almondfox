--Basic query as part of SQL Fundamentals course including a Top and Filter
SELECT TOP(10) PERCENT
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