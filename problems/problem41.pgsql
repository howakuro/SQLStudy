SELECT p1.position, p1.max_height, p2.name, p2.club
    FROM (
        SELECT position, MAX(height) AS max_height
        FROM players
        GROUP BY position
    ) AS p1
    INNER JOIN players AS p2 
        ON p2.height=p1.max_height AND p2.position=p1.position;