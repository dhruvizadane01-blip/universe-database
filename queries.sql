-- List all galaxies that are visible
SELECT name FROM galaxy WHERE is_visible = TRUE;

-- Count planets per star
SELECT s.name AS star_name, COUNT(p.planet_id) AS planet_count
FROM star s
LEFT JOIN planet p ON s.star_id = p.star_id
GROUP BY s.name;

-- Find the largest planet in each star system
SELECT s.name AS star_name, p.name AS planet_name, p.diameter
FROM star s
JOIN planet p ON s.star_id = p.star_id
WHERE p.diameter = (
    SELECT MAX(diameter) FROM planet WHERE star_id = s.star_id
);

-- List moons orbiting planets in galaxies visible to the naked eye
SELECT g.name AS galaxy, p.name AS planet, m.name AS moon
FROM galaxy g
JOIN star s ON g.galaxy_id = s.galaxy_id
JOIN planet p ON s.star_id = p.star_id
JOIN moon m ON p.planet_id = m.planet_id
WHERE g.is_visible = TRUE;
