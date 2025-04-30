-- In this part of the project we analyze product preference by gender. More treadmills are purchased by males than females (104 male purchases and 76 female purchases). Males tend
-- to prefer the KP281, followed by KP781 and followed closely by KP481. Females tend to prefer the KP281, followed by the KP481 and followed by the KP781. Note that only 2 more males
-- prefer KP781 over KP481 (33 versus 31) while 22 more females prefer KP481 over KP781 (29 versus 7).

SELECT COUNT(*)
FROM Aerofit
WHERE Gender = 'Male';

-- count
--  104

SELECT COUNT(*)
FROM Aerofit
WHERE Gender = 'Female';

-- count
--  76

SELECT COUNT(*)
FROM Aerofit
WHERE Gender = 'Male' AND Product = 'KP281';

-- count
--  40

SELECT COUNT(*)
FROM Aerofit
WHERE Gender = 'Male' AND Product = 'KP481';

-- count
--  31

SELECT COUNT(*)
FROM Aerofit
WHERE Gender = 'Male' AND Product = 'KP781';

-- count
--  33

SELECT COUNT(*)
FROM Aerofit
WHERE Gender = 'Female' AND Product = 'KP281';

-- count
--  40

SELECT COUNT(*)
FROM Aerofit
WHERE Gender = 'Female' AND Product = 'KP481';

-- count
--  29

SELECT COUNT(*)
FROM Aerofit
WHERE Gender = 'Female' AND Product = 'KP781';

-- count
--  7