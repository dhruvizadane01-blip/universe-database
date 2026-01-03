-- Create Galaxy table
CREATE TABLE galaxy (
    galaxy_id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    galaxy_type TEXT NOT NULL,
    distance_light_years INT NOT NULL,
    mass NUMERIC NOT NULL,
    is_visible BOOLEAN NOT NULL
);

-- Create Star table
CREATE TABLE star (
    star_id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    galaxy_id INT NOT NULL REFERENCES galaxy(galaxy_id),
    temperature INT NOT NULL,
    luminosity NUMERIC NOT NULL,
    is_main_sequence BOOLEAN NOT NULL
);

-- Create Planet table
CREATE TABLE planet (
    planet_id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    star_id INT NOT NULL REFERENCES star(star_id),
    diameter INT NOT NULL,
    mass NUMERIC NOT NULL,
    has_life BOOLEAN NOT NULL
);

-- Create Moon table
CREATE TABLE moon (
    moon_id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    planet_id INT NOT NULL REFERENCES planet(planet_id),
    radius INT NOT NULL,
    orbital_period NUMERIC NOT NULL,
    is_tidally_locked BOOLEAN NOT NULL
);

-- Create Comet table (extra table to meet requirement of 5 tables)
CREATE TABLE comet (
    comet_id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    tail_length INT NOT NULL,
    speed INT NOT NULL,
    composition TEXT NOT NULL,
    is_periodic BOOLEAN NOT NULL
);
