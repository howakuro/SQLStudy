SELECT p.kickoff, c1.name AS my_country, c2.name AS enemy_country,
       c1.ranking AS my_ranking, c2.ranking AS enemy_ranking,
       (
            SELECT COUNT(id)
            FROM goals AS g
            WHERE g.pairing_id=p.id
        ) AS my_goal,
        (
            SELECT COUNT(g.id)
            FROM goals AS g
            LEFT OUTER JOIN pairings AS p_sub ON g.pairing_id = p_sub.id
            WHERE p_sub.my_country_id = p.enemy_country_id 
                AND p.kickoff=p_sub.kickoff
        ) AS enemy_goal,
        (
            (
                SELECT COUNT(id) 
                FROM goals AS g 
                WHERE g.pairing_id=p.id
            ) 
            - 
            (
                SELECT COUNT(g.id)
                FROM goals AS g
                LEFT OUTER JOIN pairings AS p_sub ON g.pairing_id = p_sub.id
                WHERE p_sub.my_country_id = p.enemy_country_id 
                AND p.kickoff=p_sub.kickoff
            )
        ) AS goal_diff
    FROM pairings AS p
    LEFT OUTER JOIN countries AS c1 ON c1.id=p.my_country_id
    LEFT OUTER JOIN countries AS c2 ON c2.id=p.enemy_country_id
    WHERE c1.group_name='C' AND c2.group_name='C'
    ORDER BY p.kickoff, c1.ranking;
