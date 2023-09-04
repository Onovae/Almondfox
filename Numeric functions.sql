--Manipulating data---Numeric functions
SELECT TOP(10) PERCENT
SalesOrderNumber AS InvoiceNumber,
OrderDate,

SUM(SalesAmount) AS InvoiceSubtotal,
ROUND(SUM(SalesAmount),1) AS InvoiceSubtotalRounded,

SUM(TaxAmt)AS TaxAmount,
FLOOR(SUM(TaxAmt))AS TaxAmountFloor,

SUM(OrderQuantity) AS TotalQuantity,

SUM(SalesAmount) + SUM(TaxAmt) AS InvoiceTotal

FROM FactInternetSales
WHERE SalesTerritorykey = 6

GROUP BY SalesOrderNumber, OrderDate
HAVING SUM(SalesAmount) > 1000

ORDER BY Invoicesubtotal DESC