--simple examples of Case functions
    
	SELECT
    SalesAmount,
    CAST(SalesAmount AS INT) SalesAmountCast,--changes datatype from float to int
    OrderDate,
    CAST(OrderDate AS DATE) OrderDateCast--change date type from a datetime to date

    FROM FactInternetSales


