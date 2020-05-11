SELECT p.kickoff, c1.name, c2.name 
    FROM pairings AS p
        INNER JOIN countries AS c1 ON c1.id = p.my_country_id
        INNER JOIN countries AS c2 ON c2.id = p.enemy_country_id;