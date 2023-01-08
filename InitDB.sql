DROP SCHEMA IF EXISTS fb CASCADE;
CREATE SCHEMA fb;

CREATE TABLE fb.match(
    id SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    hometeam_id INTEGER NOT NULL,
    awayteam_id INTEGER NOT NULL,
    score1 INTEGER,
    score2 INTEGER,
    stadium_id INTEGER NOT NULL
);

CREATE TABLE fb.team(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    league_id INTEGER NOT NULL,
    --stadium_id INTEGER --pas sûr
);

CREATE TABLE fb.league(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE fb.stadium(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE fb.player(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    team_id INTEGER NOT NULL,
    score INTEGER NOT NULL --à voir
);

CREATE TABLE fb.goal(
    id SERIAL PRIMARY KEY,
    match_id INTEGER NOT NULL,
    player_id INTEGER NOT NULL,
    minute INTEGER NOT NULL --pas nécessaire
);

CREATE TABLE fb.titular(
    id SERIAL PRIMARY KEY,
    match_id INTEGER NOT NULL,
    player_id INTEGER NOT NULL
);