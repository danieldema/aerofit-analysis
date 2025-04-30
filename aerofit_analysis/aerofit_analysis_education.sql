-- In this part of the project we analyze product preference by years of education. Customers that purchase KP281 and KP481 have a similar mean and median years of education
-- (respectively mean 15.04 and median 16 versus mean 15.12 and median 16) while customers that purchase KP781 have mean 17.33 years of education and median 18 years of education.

SELECT MIN(Education)
FROM Aerofit;

--"min"
-- 12

SELECT MAX(Education)
FROM Aerofit;

--"min"
-- 21

SELECT ROUND(AVG(Education), 2) AS mean,
PERCENTILE_CONT(0.5) 
WITHIN GROUP (Order By Education)
AS median 
FROM Aerofit;

--"mean"	    "median"
-- 15.57	       16

SELECT ROUND(AVG(Education), 2) AS mean,
PERCENTILE_CONT(0.5) 
WITHIN GROUP (Order By Education)
AS median
FROM Aerofit
WHERE Product = 'KP281';

--"mean"	    "median"
-- 15.04	       16

SELECT ROUND(AVG(Education), 2) AS mean,
PERCENTILE_CONT(0.5) 
WITHIN GROUP (Order By Education)
AS median
FROM Aerofit
WHERE Product = 'KP481';

--"mean"	    "median"
-- 15.12	       16

SELECT ROUND(AVG(Education), 2) AS mean,
PERCENTILE_CONT(0.5) 
WITHIN GROUP (Order By Education)
AS median
FROM Aerofit
WHERE Product = 'KP781';

--"mean"	    "median"
-- 17.33	       18