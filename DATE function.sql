--Using the GETDATE and the DATEDIFF function
SELECT

GETDATE() AS DateTimeStamp,
Duedate,
Shipdate,
DATEDIFF(day,shipdate,duedate) AS Daysbetweenshppeddateandduedate,
DATEDIFF(hour,shipdate,duedate) AS Hoursbetweenshppeddateandduedate

FROM FactInternetSales