--Manipulting values-conditional columsns
SELECT
    FirstName,
    IIF(MiddleName IS NULL, 'UNKN',MiddleName) MiddleName,--replacing NULL values we can either use this,
    ISNULL(MiddleName, 'UNKN') MiddleName2,--or thisfor simpler codes
    COALESCE(MiddleName, 'UNKN') MiddleName3,--or this for more complexity
    LastName,
    YearlyIncome,
    EmailAddress,
    IIF(YearlyIncome > 5000, 'Above Average', 'Below Average' ) IncomeCategory,
    CASE
        WHEN NumberChildrenAtHome = 0 THEN '0'
        WHEN NumberChildrenAtHome = 1 THEN '1'
        WHEN NumberChildrenAtHome BETWEEN 2 AND 4 THEN '2-4'
        WHEN NumberChildrenAtHome >=5 THEN '5+'
        ELSE 'UNKN'
    END AS NumberChildenCategory,
    NumberChildrenAtHome AS ActualChildren

FROM DimCustomer
WHERE  IIF(YearlyIncome > 5000, 'Above Average', 'Below Average' ) = 'Above Average'