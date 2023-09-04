We need a detail list of invoices and invoice line number where the currency key is 100, write a query to return InvoiceNumber, InvoiceLineNumber and SaleAmount from the FactInternetSales Table.
SELECT
SalesOrderNumber AS InvoiceNumber,
SalesOrderLineNumber AS InvoiceLineNumber,
SalesAmount

FROM FactInternetSales
WHERE CurrencyKey =100

ORDER BY InvoiceLineNumber 