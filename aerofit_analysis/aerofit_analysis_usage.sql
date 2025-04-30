-- In this part of the project we analyze product preference by the average number of times the customer plans to use the treadmill each week (labelled "usage"). The mean usage is
-- 3.46 and median usage is 3. Customers that purchase KP281 and KP481 have a similar mean and median usage (respectively, mean 3.09 and median 3 versus mean 3.07 and median 3).
-- Customers that purchase KP781 have a mean usage of 4.78 and median usage of 5.

SELECT MIN(Usage)
FROM Aerofit;

--"min"
--  2

SELECT MAX(Usage)
FROM Aerofit;

--"min"
--  7

SELECT ROUND(AVG(Usage), 2) AS mean,
PERCENTILE_CONT(0.5) 
WITHIN GROUP (Order By Usage)
AS median 
FROM Aerofit;

--"mean"	    "median"
-- 3.46	           3

SELECT ROUND(AVG(Usage), 2) AS mean,
PERCENTILE_CONT(0.5) 
WITHIN GROUP (Order By Usage)
AS median 
FROM Aerofit
WHERE Product = 'KP281';

--"mean"	    "median"
-- 3.09	           3

SELECT ROUND(AVG(Usage), 2) AS mean,
PERCENTILE_CONT(0.5) 
WITHIN GROUP (Order By Usage)
AS median 
FROM Aerofit
WHERE Product = 'KP481';

--"mean"	    "median"
-- 3.07	           3

SELECT ROUND(AVG(Usage), 2) AS mean,
PERCENTILE_CONT(0.5) 
WITHIN GROUP (Order By Usage)
AS median 
FROM Aerofit
WHERE Product = 'KP781';

--"mean"	    "median"
-- 4.78	           5