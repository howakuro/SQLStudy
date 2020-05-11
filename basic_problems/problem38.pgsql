SELECT uniform_num, position, name, height
    FROM players
    WHERE height < (
        SELECT AVG(height)
        FROM players
    );

