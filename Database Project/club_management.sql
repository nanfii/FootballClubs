CREATE DATABASE ClubsManagement;

USE ClubsManagement;

CREATE TABLE Person (
    person_id INT NOT NULL IDENTITY,
    first_name VARCHAR(255),
    middle_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    gender VARCHAR(255) CHECK (gender IN ('Male', 'Female')),
    age INT,
    salary REAL,
    date_of_joining DATE,
    date_of_birth DATE,
    phone_number VARCHAR(255),
    city VARCHAR(255),
    street VARCHAR(255),
    house_number INT,
    pobox VARCHAR(255),
    PRIMARY KEY (person_id)
);

CREATE TABLE Club  (
 club_id int NOT NULL IDENTITY,
 club_name varchar(255) UNIQUE NOT NULL,
 motto varchar(255),
 logo varchar(255),
 date_of_eastablishment date,
 office_adress varchar(255),
 PRIMARY KEY (club_id),
);

CREATE TABLE Player (
    person_id INT,
    player_name VARCHAR(255),
    player_position VARCHAR(255) CHECK (player_position IN ('GoalKeeper', 'Defender', 'MidFielder', 'Forward')),
	club_id INT,
    height INT,
    weight_kg INT,
    jersey_number INT,
    market_value REAL,
    preferred_foot VARCHAR(255) CHECK (preferred_foot IN ('Right', 'Left')),
    PRIMARY KEY (person_id),
    CONSTRAINT fk_Player_Person FOREIGN KEY (person_id) REFERENCES Person(person_id),
    CONSTRAINT fk_Player_Club FOREIGN KEY (club_id) REFERENCES Club(club_id)
);

CREATE TABLE ClubManager (
    person_id INT,
    club_id INT,
    coaching_license_number VARCHAR(255),
    experience_years INT,
    coach_category VARCHAR(255),
    PRIMARY KEY (person_id, club_id),
    CONSTRAINT fk_ClubManager_Person FOREIGN KEY (person_id) REFERENCES Person(person_id),
    CONSTRAINT fk_ClubManager_Club FOREIGN KEY (club_id) REFERENCES Club(club_id),
	CONSTRAINT chk_ClubManager_CoachCategory CHECK (coach_category IN ('Tactical', 'Head', 'TeamDevelopment', 'GoalKeeper', 'Defender', 'MidFielder', 'Forward'))
);

CREATE TABLE Department(
    department_id INT,
    department_name VARCHAR(255),
    club_id int,
    PRIMARY KEY (department_id),
    CONSTRAINT fk_Department_Club FOREIGN KEY (club_id) REFERENCES Club(club_id)
)

CREATE TABLE Staff(
    person_id INT,
	department_id int,
    club_id INT,
    position VARCHAR(255),
    PRIMARY KEY (person_id, club_id),
    CONSTRAINT fk_Staff_Department FOREIGN KEY (department_id) REFERENCES Department(department_id),
    CONSTRAINT fk_Staff_Person FOREIGN KEY (person_id) REFERENCES Person(person_id),
    CONSTRAINT fk_Staff_Club FOREIGN KEY (club_id) REFERENCES Club(club_id)
)

CREATE TABLE ClubOwner(
    person_id INT,
    club_id INT,
	ownershipPercentage Float,
    PRIMARY KEY (person_id, club_id),
    CONSTRAINT fk_ClubOwner_Person FOREIGN KEY (person_id) REFERENCES Person(person_id),
    CONSTRAINT fk_ClubOwner_Club FOREIGN KEY (club_id) REFERENCES Club(club_id)
)

CREATE TABLE Stadium(
    stadium_id INT,
    stadium_name VARCHAR(255),
    club_id INT,
    stadium_capacity INT,
    stadium_location VARCHAR(255),
    latitude REAL,
    longitude REAL,
    PRIMARY KEY (stadium_id),
    CONSTRAINT fk_Stadium_Club FOREIGN KEY (club_id) REFERENCES Club(club_id)
)

CREATE TABLE Tournament (
    tournament_id INT,
    tournament_name VARCHAR(255),
    tournament_type VARCHAR(255) CHECK (tournament_type IN ('League', 'Cup')),
    start_date DATE,
    end_date DATE,
    PRIMARY KEY (tournament_id),
)

CREATE TABLE TournametParticipants (
    club_id INT,
    tournament_id INT,
    PRIMARY KEY (club_id, tournament_id),
    CONSTRAINT fk_TournamentParticipants_Person FOREIGN KEY (club_id) REFERENCES Club(club_id),
    CONSTRAINT fk_TournamentParticipants_Tournament FOREIGN KEY (tournament_id) REFERENCES Tournament(tournament_id)
)

CREATE TABLE Match_ (
	match_id INT IDENTITY PRIMARY KEY,
    tournament_id INT,
    clubA_id INT,
    clubB_id INT,
    match_date DATE,
    match_time Time,
    stadium_id INT,
    CONSTRAINT fk_TournamentSchedule_Tournament FOREIGN KEY (tournament_id) REFERENCES Tournament(tournament_id),
    CONSTRAINT fk_TournamentSchedule_ClubA FOREIGN KEY (clubA_id) REFERENCES Club(club_id),
    CONSTRAINT fk_TournamentSchedule_ClubB FOREIGN KEY (clubB_id) REFERENCES Club(club_id),
    CONSTRAINT fk_TournamentSchedule_Stadium FOREIGN KEY (stadium_id) REFERENCES Stadium(stadium_id)
)

CREATE TABLE Goal(
    player_id INT,
    match_id INT,
    goal_time Time,
    isOwnGoal INT DEFAULT 0 CHECK (isOwnGoal IN (0, 1)),
    PRIMARY KEY (player_id, match_id),
    CONSTRAINT fk_Goal_Player FOREIGN KEY (player_id) REFERENCES Player(person_id),
    CONSTRAINT fk_Goal_Match FOREIGN KEY (match_id) REFERENCES Match_(match_id)
)

CREATE TABLE MatchStatistics(
    match_id INT,
    scoreA INT,
    scoreB INT,
    description VARCHAR(255),
    PRIMARY KEY (match_id),
    CONSTRAINT fk_MatchStatistics_Match FOREIGN KEY (match_id) REFERENCES Match_(match_id)
)

CREATE TABLE TournamentStandings(
    tournament_id INT,
    club_id INT,
    goal_agains INT,
    goal_for INT,
    wins INT, 
    losses INT,
    draws INT,
    PRIMARY KEY (tournament_id, club_id),
    CONSTRAINT fk_TournamentStandings_Tournament FOREIGN KEY (tournament_id) REFERENCES Tournament(tournament_id),
    CONSTRAINT fk_TournamentStandings_Club FOREIGN KEY (club_id) REFERENCES Club(club_id)
)

	CREATE TABLE PlayerTransfer(
    transfer_id INT,
    player_id INT,
    original_club_id INT,
    new_club_id INT,
    transfer_date DATE,
    transfer_fee REAL,
    transfer_type VARCHAR(255) CHECK (transfer_type IN ('Free', 'Permanent', 'Loan')),
    PRIMARY KEY (transfer_id),
    CONSTRAINT Transfer_Player FOREIGN KEY (player_id) REFERENCES Player(person_id),
    CONSTRAINT Original_Club FOREIGN KEY (original_club_id) REFERENCES Club(club_id),
    CONSTRAINT New_Club FOREIGN KEY (new_club_id) REFERENCES Club(club_id)
)



