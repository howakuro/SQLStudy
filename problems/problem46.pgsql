SELECT id, position, name, height, weight 
    FROM players
    WHERE height > 195
UNION ALL
SELECT id, position, name, height, weight 
    FROM players
    WHERE weight > 95
ORDER BY id;