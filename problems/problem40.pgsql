SELECT g.id, g.goal_time, p.name 
    FROM goals AS g
    INNER JOIN players AS p ON p.id=g.player_id;