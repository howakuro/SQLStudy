SELECT goals.goal_time, players.name
    FROM goals 
    LEFT OUTER JOIN players ON players.id = goals.player_id;
