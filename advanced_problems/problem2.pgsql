SELECT AVG(height) AS height_avg, AVG(weight) AS weight_avg 
    FROM players 
    WHERE position = 'GK';