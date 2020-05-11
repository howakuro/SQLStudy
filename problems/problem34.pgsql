SELECT countries.name, players.name, goals.goal_time
    FROM goals 
    INNER JOIN players ON players.id = goals.player_id 
    INNER JOIN countries ON countries.id=players.country_id;
