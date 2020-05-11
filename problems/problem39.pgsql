SELECT id, goal_time, (
        SELECT name 
            FROM players AS p
            WHERE p.id=g.player_id
    ) AS name
    FROM goals AS g
    WHERE g.player_id IS NOT NULL;