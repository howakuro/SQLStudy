SELECT group_name AS Group, MIN(ranking) AS Top, MAX(ranking) AS Bottom
FROM countries
GROUP BY group_name; 