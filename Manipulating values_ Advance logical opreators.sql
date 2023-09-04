--manipulating values-Advance logical operators
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




SELECT 
FirstName,
EmailAddress

FROM DimCustomer

WHERE FirstName LIKE 'R%'--returns first name beginning with R.



SELECT 
FirstName,
EmailAddress

FROM DimCustomer

WHERE FirstName LIKE 'R__'--returns first name beginning with R and two other alphabet.


SELECT 
FirstName,
EmailAddress

FROM DimCustomer

WHERE FirstName LIKE '_R__'--returns first name beginning with other alphabet before R and two other alphabet.


SELECT 
FirstName,
EmailAddress

FROM DimCustomer

WHERE FirstName LIKE '_R%'--returns first name beginning with other alphabet before R and any other alphabets.
