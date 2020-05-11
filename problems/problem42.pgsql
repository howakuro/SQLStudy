SELECT position, MAX(p2.height) AS max_height,
    (
        SELECT name
        FROM players AS p1
        WHERE MAX(p2.height)=p1.height AND p2.position=p1.position
    ) AS name
    FROM players AS p2
    GROUP BY position;

