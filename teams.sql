create database nfl;

use nfl;

show tables;

create table teams (
	id INT auto_increment,
    location varchar(255),
    mascot varchar(255),
    abbreviation varchar(255),
    conference enum('AFC', 'NFC'),
    division ENUM('north', 'East', 'South', 'West'),
    createdAT datetime default current_timestamp,
    updatedAT datetime default current_timestamp on update current_timestamp,
    deletedAT datetime default current_timestamp,
    primary key(id)
);

INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Buffalo', 'Bills', 'BUF', 'AFC', 'East');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Miami', 'Dolphins', 'MIA', 'AFC', 'East');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('New England', 'Patriots', 'NE', 'AFC', 'East');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('New York', 'Jets', 'NYJ', 'AFC', 'East');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Baltimore', 'Ravens', 'BAL', 'AFC', 'North');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Cincinnati', 'Bengals', 'CIN', 'AFC', 'North');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Cleveland', 'Browns', 'CLE', 'AFC', 'North');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Pittsburgh', 'Steelers', 'PIT', 'AFC', 'North');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Houston', 'Texans', 'HOU', 'AFC', 'South');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Indianapolis', 'Colts', 'IND', 'AFC', 'North');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Jacksonville', 'Jaguars', 'JAX', 'AFC', 'North');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Tennessee', 'Titans', 'TEN', 'AFC', 'North');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Denver', 'Broncos', 'DEN', 'AFC', 'West');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Kansas City', 'Chiefs', 'KC', 'AFC', 'West');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Los Angeles', 'Chargers', 'LAC', 'AFC', 'West');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Oakland', 'Raiders', 'OAK', 'AFC', 'West');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Dallas', 'Cowboys', 'DAL', 'NFC', 'East');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('New York', 'Giants', 'NYG', 'NFC', 'East');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Philadelphia', 'Eagles', 'PHI', 'NFC', 'East');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Washington', 'Redskins', 'WSH', 'NFC', 'East');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Chicago', 'Bears', 'CHI', 'NFC', 'North');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Detriot', 'Lions', 'DET', 'NFC', 'North');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Green Bay', 'Packers', 'GB', 'NFC', 'North');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Minnesota', 'Vikings', 'MIN', 'NFC', 'North');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Atlanta', 'Falcons', 'ATL', 'NFC', 'South');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Carolina', 'Panthers', 'CAR', 'NFC', 'South');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('New Orleans', 'Saints', 'NO', 'NFC', 'South');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Tampa Bay', 'Buccaneers', 'TB', 'NFC', 'South');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Arizona', 'Cardinals', 'ARI', 'NFC', 'West');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Los Angeles', 'Rams', 'LAR', 'NFC', 'West');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('San Francisco', '49ers', 'SF', 'NFC', 'West');
INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES('Seattle', 'Seahawks', 'SEA', 'NFC', 'West');