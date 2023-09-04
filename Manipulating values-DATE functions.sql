--Manipulating values Using DATE function
SELECT

GETDATE() AS DateTimeStamp,
Duedate,
Shipdate,

DATEDIFF(day,Shipdate,Duedate) AS DaysBetweenShippeddateandDuedate,
DATEDIFF(hour,Shipdate,Duedate) AS HoursBetweenShippedateandDuedate,
DATEADD(day,10,Duedate) AS DuedatePlusTenDays,--Useful to calculate for the end of some specific days
DATEADD(day,-10,Duedate) AS TenDaysBeforeDuedate--this gives 10 days before the due date

FROM FactInternetSales