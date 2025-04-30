-- In this part of the project we analyze product preference by marital status. More customers are partnered than are single (107 versus 73). Both partnered and single customers 
-- prefer KP281, followed by KP481, followed by KP781.

SELECT COUNT(*)
FROM Aerofit
WHERE MaritalStatus = 'Single';

-- count
--  73

SELECT COUNT(*)
FROM Aerofit
WHERE MaritalStatus = 'Partnered';

-- count
--  107

SELECT COUNT(*)
FROM Aerofit
WHERE MaritalStatus = 'Single' AND Product = 'KP281';

-- count
--  32

SELECT COUNT(*)
FROM Aerofit
WHERE MaritalStatus = 'Single' AND Product = 'KP481';

-- count
--  24

SELECT COUNT(*)
FROM Aerofit
WHERE MaritalStatus = 'Single' AND Product = 'KP781';

-- count
--  17

SELECT COUNT(*)
FROM Aerofit
WHERE MaritalStatus = 'Partnered' AND Product = 'KP281';

-- count
--  48

SELECT COUNT(*)
FROM Aerofit
WHERE MaritalStatus = 'Partnered' AND Product = 'KP481';

-- count
--  36

SELECT COUNT(*)
FROM Aerofit
WHERE MaritalStatus = 'Partnered' AND Product = 'KP781';

-- count
--  23