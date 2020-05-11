SELECT countries.name, players.name, uniform_num
    FROM players 
    INNER JOIN countries ON countries.id = players.country_id;