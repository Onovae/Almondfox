--Manipulating values specific dates

SELECT

MONTH('20201011') AS MonthNumerical,--you can either use this 
MONTH('2020-10-11') AS MonthNumerical-- or this


SET LANGUAGE British
SELECT
DATENAME(month, '02/12/2020') AS MonthNumerical--using this format can introduce unnecessary risk, so stick to the first.


