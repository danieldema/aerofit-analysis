-- In this part of the project we analyze product preference by age. We conclude that the largest customer base is those under the age of 30, followed by those between the ages of 30
-- and 40, followed by those over the age of 40, with the median customer age being 26. Customers below the age of 30 prefer the KP281 followed by the KP481 followed by the KP781.
-- Customers between the ages 30 and 40 prefer the KP481 slightly above the KP281, followed by the KP781. Customers above the age of 40 slightly prefer the KP281 followed by equal
-- preference between the KP481 and KP781.


SELECT MIN(Age)
FROM Aerofit;

--"min"
-- 18

SELECT MAX(Age)
FROM Aerofit;

--"min"
-- 50

SELECT COUNT(*)
FROM Aerofit
WHERE Age < 20;

--"count"
--  5

SELECT COUNT(*)
FROM Aerofit
WHERE 20 <= Age AND Age < 30;

--"count"
--  108

SELECT COUNT(*)
FROM Aerofit
WHERE 30 <= Age AND Age < 40;

--"count"
--  50

SELECT COUNT(*)
FROM Aerofit
WHERE 40 <= Age AND Age <= 50;

--"count"
--  17

SELECT ROUND(AVG(Age), 2), PERCENTILE_CONT(0.5) 
WITHIN GROUP (Order By Age) 
FROM Aerofit;

--"round"	"percentile_cont"
-- 28.79	        26

SELECT ROUND(AVG(Age), 2), PERCENTILE_CONT(0.5) 
WITHIN GROUP (Order By Age) 
FROM Aerofit 
WHERE Product = 'KP281';

--"round"	"percentile_cont"
-- 28.55	        26

SELECT ROUND(AVG(Age), 2), PERCENTILE_CONT(0.5) 
WITHIN GROUP (Order By Age) 
FROM Aerofit 
WHERE Product = 'KP481';

--"round"	"percentile_cont"
-- 28.90	        26

SELECT ROUND(AVG(Age), 2), PERCENTILE_CONT(0.5) 
WITHIN GROUP (Order By Age) 
FROM Aerofit 
WHERE Product = 'KP781';

--"round"	"percentile_cont"
-- 29.10	        27

SELECT COUNT(*)
FROM Aerofit
WHERE Age < 30 AND Product = 'KP281';

--"count"
--  53

SELECT COUNT(*)
FROM Aerofit
WHERE Age < 30 AND Product = 'KP481';

--"count"
--  33

SELECT COUNT(*)
FROM Aerofit
WHERE Age < 30 AND Product = 'KP781';

--"count"
--  27

SELECT COUNT(*)
FROM Aerofit
WHERE Age >= 30 AND Age < 40 AND Product = 'KP281';

--"count"
--  20

SELECT COUNT(*)
FROM Aerofit
WHERE Age >= 30 AND Age < 40 AND Product = 'KP481';

--"count"
--  22

SELECT COUNT(*)
FROM Aerofit
WHERE Age >= 30 AND Age < 40 AND Product = 'KP781';

--"count"
--  8

SELECT COUNT(*)
FROM Aerofit
WHERE Age >= 40 AND Product = 'KP281';

--"count"
--  7

SELECT COUNT(*)
FROM Aerofit
WHERE Age >= 40 AND Product = 'KP481';

--"count"
--  5

SELECT COUNT(*)
FROM Aerofit
WHERE Age >= 40 AND Product = 'KP781';

--"count"
--  5