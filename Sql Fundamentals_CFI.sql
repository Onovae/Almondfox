SELECT CustomerKey as CustomerID, SUM(SalesAmount) as SalesAmount
FROM FactInternetSales
WHERE year(OrderDate) > 2010
GROUP BY CustomerKey
HAVING SUM(SalesAmount) > 10000
ORDER BY SalesAmount DESC




SELECT TOP(10) PERCENT --Shows the Top 10% of thr rows in a column
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