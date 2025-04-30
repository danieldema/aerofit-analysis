-- In this part of the project we analyze product preference by income. The mean income is $53720 and median income is $50596. The product with customers with the highest mean and
-- median income is KP781 at mean $75442 and median $76568, followed by KP481 with mean $48974 and median $49460, followed by KP281 with mean $46418 and median $46617.

SELECT MIN(Income)
FROM Aerofit;

-- min
-- 29562

SELECT MAX(Income)
FROM Aerofit;

-- max
-- 104581

SELECT ROUND(AVG(Income)) AS mean,
ROUND(PERCENTILE_CONT(0.5)
WITHIN GROUP (Order By Income))
AS median
FROM Aerofit;

--"mean"	    "median"
-- 53720	     50596

SELECT ROUND(AVG(Income)) AS mean,
ROUND(PERCENTILE_CONT(0.5)
WITHIN GROUP (Order By Income))
AS median
FROM Aerofit
WHERE Product = 'KP281';

--"mean"	    "median"
-- 46418	     46617

SELECT ROUND(AVG(Income)) AS mean,
ROUND(PERCENTILE_CONT(0.5)
WITHIN GROUP (Order By Income))
AS median
FROM Aerofit
WHERE Product = 'KP481';

--"mean"	    "median"
-- 48974	     49460

SELECT ROUND(AVG(Income)) AS mean,
ROUND(PERCENTILE_CONT(0.5)
WITHIN GROUP (Order By Income))
AS median
FROM Aerofit
WHERE Product = 'KP781';

--"mean"	    "median"
-- 75442	     76568