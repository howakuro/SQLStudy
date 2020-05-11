SELECT name, (
        SELECT AVG(height)
        FROM players AS p
        WHERE c.id=p.country_id
    )
FROM countries AS c;