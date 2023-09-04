--Create a list of product cost group by invoice number, write a query to return InvoiceNumber and TotalProductCost from the FactInternetSales table and return only invoices that have a total product cost perinvoice Number > 2000
SELECT 
SalesOrderNumber AS InvoiceNumber,
SUM(TotalProductCost) AS TotalProductCost

FROM FactInternetSales
Group BY SalesOrderNumber

HAVING SUM(TotalProductCost) > 2000
ORDER BY TotalProductCost DESC
