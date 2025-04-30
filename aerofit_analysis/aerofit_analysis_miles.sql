-- In this part of the project we analyze product preference by the average number of miles the customer expects to walk/run each week (labeled "miles"). The mean is 103 miles and
-- median is 94 miles. For customers of KP781, the mean is 167 miles and median is 160 miles. For customers of KP481, the mean is 88 miles and median is 85 miles. For customers
-- of KP281, the mean is 83 miles and median is 85 miles.

SELECT MIN(Miles)
FROM Aerofit;

-- min
-- 21

SELECT MAX(Miles)
FROM Aerofit;

-- max
-- 360

SELECT ROUND(AVG(Miles)) AS mean,
ROUND(PERCENTILE_CONT(0.5)
WITHIN GROUP (Order By Miles))
AS median
FROM Aerofit;

--"mean"	    "median"
-- 103	           94

SELECT ROUND(AVG(Miles)) AS mean,
ROUND(PERCENTILE_CONT(0.5)
WITHIN GROUP (Order By Miles))
AS median
FROM Aerofit
WHERE Product = 'KP281';

--"mean"	    "median"
-- 83	           85

SELECT ROUND(AVG(Miles)) AS mean,
ROUND(PERCENTILE_CONT(0.5)
WITHIN GROUP (Order By Miles))
AS median
FROM Aerofit
WHERE Product = 'KP481';

--"mean"	    "median"
-- 88	           85

SELECT ROUND(AVG(Miles)) AS mean,
ROUND(PERCENTILE_CONT(0.5)
WITHIN GROUP (Order By Miles))
AS median
FROM Aerofit
WHERE Product = 'KP781';

--"mean"	    "median"
-- 167	           160