--Manipulating values-Server property
SELECT CONVERT(varchar(256), SERVERPROPERTY ('collation'))--returns the collation properties of your Database Instance



SELECT*
FROM DimProduct
WHERE color='silver'


SELECT*
FROM DimProduct
WHERE color='Silver'--shows that our database is not case sensitive
