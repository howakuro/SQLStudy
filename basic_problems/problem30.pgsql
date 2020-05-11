SELECT goals.goal_time, players.name
    FROM goals 
    RIGHT OUTER JOIN players ON players.id = goals.player_id;