--Manipulating avalues-Logical operators
select
EnglishProductName,
EnglishDescription,
Color,
[Status],
Class

FROM DimProduct
WHERE (Class <> 'H'OR Class IS NULL) and [Status] IS NOT NULL