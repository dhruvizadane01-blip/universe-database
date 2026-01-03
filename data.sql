-- Galaxies
INSERT INTO galaxy (name, galaxy_type, distance_light_years, mass, is_visible) VALUES
('Milky Way', 'Spiral', 0, 1.5e12, TRUE),
('Andromeda', 'Spiral', 2500000, 1.23e12, TRUE),
('Triangulum', 'Spiral', 3000000, 5.0e10, FALSE),
('Sombrero', 'Elliptical', 29000000, 8.0e11, FALSE),
('Large Magellanic Cloud', 'Irregular', 163000, 1.0e10, TRUE),
('Messier 87', 'Elliptical', 53000000, 2.7e12, FALSE);

-- Stars
INSERT INTO star (name, galaxy_id, temperature, luminosity, is_main_sequence) VALUES
('Sun', 1, 5778, 1.0, TRUE),
('Proxima Centauri', 1, 3042, 0.0017, TRUE),
('Sirius', 1, 9940, 25.4, TRUE),
('Betelgeuse', 1, 3500, 126000, FALSE),
('Rigel', 1, 12100, 120000, TRUE),
('Alpha Andromedae', 2, 13800, 200, TRUE);

-- Planets
INSERT INTO planet (name, star_id, diameter, mass, has_life) VALUES
('Earth', 1, 12742, 5.97e24, TRUE),
('Mars', 1, 6779, 6.39e23, FALSE),
('Jupiter', 1, 139820, 1.90e27, FALSE),
('Venus', 1, 12104, 4.87e24, FALSE),
('Mercury', 1, 4879, 3.30e23, FALSE),
('Neptune', 1, 49244, 1.02e26, FALSE),
('Uranus', 1, 50724, 8.68e25, FALSE),
('Saturn', 1, 116460, 5.68e26, FALSE),
('Proxima b', 2, 12000, 1.27e25, FALSE),
('Sirius b Planet', 3, 15000, 2.0e25, FALSE),
('Betelgeuse b', 4, 20000, 3.0e25, FALSE),
('Rigel b', 5, 25000, 4.0e25, FALSE);

-- Moons
INSERT INTO moon (name, planet_id, radius, orbital_period, is_tidally_locked) VALUES
('Moon', 1, 1737, 27.3, TRUE),
('Phobos', 2, 11, 0.3, TRUE),
('Deimos', 2, 6, 1.3, TRUE),
('Io', 3, 1821, 1.8, TRUE),
('Europa', 3, 1560, 3.5, TRUE),
('Ganymede', 3, 2634, 7.1, TRUE),
('Callisto', 3, 2410, 16.7, TRUE),
('Titan', 8, 2575, 16.0, TRUE),
('Rhea', 8, 764, 4.5, TRUE),
('Iapetus', 8, 734, 79.3, TRUE),
('Dione', 8, 561, 2.7, TRUE),
('Tethys', 8, 531, 1.9, TRUE),
('Enceladus', 8, 252, 1.4, TRUE),
('Mimas', 8, 198, 0.9, TRUE),
('Triton', 6, 1353, 5.9, TRUE),
('Oberon', 7, 761, 13.5, TRUE),
('Titania', 7, 788, 8.7, TRUE),
('Umbriel', 7, 584, 4.1, TRUE),
('Ariel', 7, 579, 2.5, TRUE),
('Miranda', 7, 235, 1.4, TRUE);

-- Comets
INSERT INTO comet (name, tail_length, speed, composition, is_periodic) VALUES
('Halley', 24000, 70, 'Ice and Dust', TRUE),
('Hale-Bopp', 40000, 50, 'Ice and Gas', FALSE),
('Encke', 15000, 60, 'Dust and Ice', TRUE);
