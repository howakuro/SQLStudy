SELECT 1980 AS birth_year, COUNT(id)
    FROM players
    WHERE '1980-01-01' <= birth AND birth < '1981-01-01'
UNION 
SELECT 1981 AS birth_year, COUNT(id)
    FROM players
    WHERE '1981-01-01' <= birth AND birth < '1982-01-01';

/*別解*/
SELECT 1980 AS birth_year, COUNT(id)
    FROM players
    WHERE birth BETWEEN '1980-01-01' AND '1981-01-01'
UNION 
SELECT 1981 AS birth_year, COUNT(id)
    FROM players
    WHERE birth BETWEEN '1981-01-01' AND '1982-01-01';