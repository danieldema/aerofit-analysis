-- In this part of the project we analyze product preference by self-rated fitness on a 1-5 scale, where 1 is poor shape and 5 is excellent shape (labelled "fitness"). The mean fitness
-- is 3.31 and median fitness is 3. Customers that purchase KP281 and KP481 have a similar mean and median fitness (respectively, mean 2.96 and median 3 versus mean 2.90 and median 3).
-- Customers that purchase KP781 have a mean fitness of 4.63 and median fitness of 5.

SELECT MIN(Fitness)
FROM Aerofit;

--"min"
--  1

SELECT MAX(Fitness)
FROM Aerofit;

--"min"
--  5

SELECT ROUND(AVG(Fitness), 2) AS mean,
PERCENTILE_CONT(0.5) 
WITHIN GROUP (Order By Fitness)
AS median 
FROM Aerofit;

--"mean"	    "median"
-- 3.31	           3

SELECT ROUND(AVG(Fitness), 2) AS mean,
PERCENTILE_CONT(0.5) 
WITHIN GROUP (Order By Fitness)
AS median 
FROM Aerofit
WHERE Product = 'KP281';

--"mean"	    "median"
-- 2.96	           3

SELECT ROUND(AVG(Fitness), 2) AS mean,
PERCENTILE_CONT(0.5) 
WITHIN GROUP (Order By Fitness)
AS median 
FROM Aerofit
WHERE Product = 'KP481';

--"mean"	    "median"
-- 2.90	           3

SELECT ROUND(AVG(Fitness), 2) AS mean,
PERCENTILE_CONT(0.5) 
WITHIN GROUP (Order By Fitness)
AS median 
FROM Aerofit
WHERE Product = 'K781';

--"mean"	    "median"
-- 4.63	           5