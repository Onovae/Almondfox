--Advance logical operators
select
EnglishProductName,
EnglishDescription,
Color,
[Status],
Class,
SafetyStockLevel

FROM DimProduct
WHERE SafetyStockLevel BETWEEN 500 AND 1000 AND [Status] IS NOT NULL--BETWEEN is inclusive of both ends,

WHERE (SafetyStockLevel >=500 AND SafetyStockLevel<=1000) AND [Status] IS NOT NULL


WHERE color IN ('Black', 'silver','white','yellow')
