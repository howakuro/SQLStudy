SELECT p.kickoff, c1.name AS my_country, c2.name AS enemy_country,
       c1.ranking AS my_ranking, c2.ranking AS enemy_ranking,
       COUNT(g.id) AS my_goal
    FROM pairings AS p
    LEFT OUTER JOIN countries AS c1 ON c1.id=p.my_country_id
    LEFT OUTER JOIN countries AS c2 ON c2.id=p.enemy_country_id
    LEFT OUTER JOIN goals AS g ON g.pairing_id = p.id
    WHERE c1.group_name='C' AND c2.group_name='C'
    GROUP BY p.kickoff, c1.name, c2.name,c1.ranking,c2.ranking
    ORDER BY p.kickoff, c1.ranking;