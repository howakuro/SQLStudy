SELECT group_name, MAX(ranking) AS Bottom, MIN(ranking) AS Top
    FROM countries
    GROUP BY group_name
    HAVING MAX(ranking)-MIN(ranking)>50;