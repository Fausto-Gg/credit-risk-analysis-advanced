SELECT
    c.customer_id,
    c.age,
    c.MonthlyIncome,
    c.NumberOfDependents,
    l.loan_id,
    l.DebtRatio,
    l.RevolvingUtilizationOfUnsecuredLines,
    h.NumberOfTime30_59DaysPastDueNotWorse,
    h.NumberOfTime60_89DaysPastDueNotWorse,
    h.NumberOfTimes90DaysLate
FROM customers AS c
INNER JOIN loans AS l 
    ON c.customer_id = l.customer_id
INNER JOIN payment_history AS h 
    ON l.loan_id = h.loan_id
WHERE c.age > 18;


--The extracted dataset was then exported 
--and analyzed using Python for feature engineering and risk modeling.