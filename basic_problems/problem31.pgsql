SELECT g.goal_time, p.name, c.name
    FROM goals AS g
        LEFT OUTER JOIN players AS p ON p.id=g.player_id
        LEFT OUTER JOIN countries AS c ON c.id=p.country_id;


