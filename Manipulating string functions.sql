--Manipulating String functiions- CONCAT,LEN,UPPER,LOWER,REPLACE,LEFT and RIGHT
SELECT
EnglishProductName AS EnglishProductName,
EnglishDescription AS ProductDiscription,
CONCAT(EnglishProductName, '-',EnglishDescription) AS ProductNameandDescription,--joins the two columns to make one
LEN(EnglishDescription) AS DescriptionLenght,--shows the length of the description
UPPER(EnglishProductName) AS UpperProductName,--returns values in capital letters
LOWER(EnglishProductName) AS LowerProductName,--returns values in lower letters
REPLACE(EnglishProductName,'Front', 'Ultra durable Front') AS EnglishProductNameReplace,--replaces a value with another
LEFT(ProductAlternateKey,2) AS ProductShort,--returns 2 characters from the left
RIGHT(ProductAlternateKey, LEN(ProductAlternateKey)-3) AS ProductAlternateKey2--extracts 3 characters from the ProductAlternateKey


FROM DimProduct
WHERE ProductKey =555