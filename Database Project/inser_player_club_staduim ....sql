USE FootballClubManagement;


INSERT INTO Club (club_name, motto, logo, date_of_eastablishment, office_adress)
VALUES
    ('Saint George FC', 'Victory through Unity', 'saint_george_logo.png', '1935-01-01', 'Addis Ababa'),
    ('Coffee FC', 'The Pride of Ethiopia', 'coffee_logo.png', '1976-01-01', 'Addis Ababa'),
    ('Mekelle City FC', 'Rise to the Top', 'mekelle_city_logo.png', '2011-01-01', 'Mekelle'),
    ('Jimma Aba Jifar FC', 'Unite and Succeed', 'jimma_aba_jifar_logo.png', '2009-01-01', 'Jimma'),
    ('Adama City FC', 'Strength in Unity', 'adama_city_logo.png', '1997-01-01', 'Adama'),
    ('Hawassa City FC', 'The Spirit of Hawassa', 'hawassa_city_logo.png', '2001-01-01', 'Hawassa'),
    ('Wolkite Ketema FC', 'Rise Above', 'wolkite_ketema_logo.png', '2005-01-01', 'Wolkite'),
    ('Dire Dawa City FC', 'Forward Together', 'dire_dawa_city_logo.png', '1959-01-01', 'Dire Dawa'),
    ('Fasil Kenema FC', 'Pride and Determination', 'fasil_kenema_logo.png', '1999-01-01', 'Gondar'),
    ('Ethiopian Coffee SC', 'Tradition and Excellence', 'ethiopian_coffee_logo.png', '1957-01-01', 'Addis Ababa');
	
--insert in to players


-- Insert  players
INSERT INTO Player (person_id, player_name, player_position, club_id, height, weight_kg, jersey_number, market_value, preferred_foot)
VALUES
    (1, 'Player 1', 'GoalKeeper', 1, 180, 75, 1, 1000000, 'Right'),
    (2, 'Player 2', 'Defender', 1, 185, 80, 4, 2000000, 'Right'),
    (3, 'Player 3', 'MidFielder', 1, 175, 70, 7, 3000000, 'Left'),
    (4, 'Player 4', 'Forward', 1, 180, 75, 9, 4000000, 'Right'),
    (5, 'Player 5', 'GoalKeeper', 1, 190, 85, 12, 1500000, 'Right'),
    (6, 'Player 6', 'MidFielder', 1, 170, 65, 14, 2500000, 'Left'),
    (7, 'Player 7', 'Defender', 1, 180, 75, 17, 3500000, 'Right'),
    (17, 'Player 8', 'MidFielder', 2, 175, 70, 2, 1200000, 'Left'),
    (18, 'Player 9', 'Forward', 2, 180, 75, 5, 2200000, 'Right'),
    (19, 'Player 10', 'GoalKeeper', 2, 185, 80, 8, 3200000, 'Right'),
    (20, 'Player 11', 'Defender', 2, 190, 85, 10, 4200000, 'Left'),
    (21, 'Player 12', 'MidFielder', 2, 170, 65, 13, 1800000, 'Right'),
    (22, 'Player 13', 'Defender', 2, 175, 70, 15, 2800000, 'Right'),
    (23, 'Player 14', 'Forward', 2, 180, 75, 18, 3800000, 'Left'),
    (24, 'Player 15', 'MidFielder', 3, 180, 75, 3, 1100000, 'Right'),
    (25, 'Player 16', 'GoalKeeper', 3, 185, 80, 6, 2100000, 'Right'),
    (26, 'Player 17', 'Forward', 3, 190, 85, 11, 3100000, 'Left');




INSERT INTO Player (person_id, player_name, player_position, club_id, height, weight_kg, jersey_number, market_value, preferred_foot)
VALUES

    (28, 'Player 19', 'Defender', 4, 190, 85, 23, 2600000, 'Right'),
    (29, 'Player 20', 'MidFielder', 4, 170, 65, 26, 3600000, 'Left'),
    (30, 'Player 21', 'Forward', 4, 175, 70, 29, 4600000, 'Right'),
    (31, 'Player 22', 'GoalKeeper', 4, 180, 75, 32, 1300000, 'Right'),
    (32, 'Player 23', 'MidFielder', 4, 185, 80, 35, 2300000, 'Left'),
    (33, 'Player 24', 'Defender', 4, 190, 85, 38, 3300000, 'Right'),
    (34, 'Player 25', 'Forward', 4, 170, 65, 41, 4300000, 'Right'),
    (35, 'Player 26', 'MidFielder', 5, 175, 70, 44, 1500000, 'Left'),
    (36, 'Player 27', 'GoalKeeper', 5, 180, 75, 47, 2500000, 'Right'),
    (37, 'Player 28', 'Defender', 5, 185, 80, 50, 3500000, 'Right'),
    (38, 'Player 29', 'MidFielder', 5, 190, 85, 53, 4500000, 'Left'),
    (39, 'Player 30', 'Forward', 5, 170, 65, 56, 1400000, 'Right'),
    (40, 'Player 31', 'GoalKeeper', 5, 175, 70, 59, 2400000, 'Right'),
    (41, 'Player 32', 'MidFielder', 5, 180, 75, 62, 3400000, 'Left'),
    (42, 'Player 33', 'Defender', 6, 185, 80, 65, 4400000, 'Right'),
    (43, 'Player 34', 'Forward', 6, 190, 85, 68, 1600000, 'Right'),
    (44, 'Player 35', 'MidFielder', 6, 170, 65, 71, 2600000, 'Left'),
    (45, 'Player 36', 'GoalKeeper', 6, 175, 70, 74, 3600000, 'Right'),
    (46, 'Player 37', 'Defender', 6, 180, 75, 77, 4600000, 'Right'),
    (47, 'Player 38', 'MidFielder', 6, 185, 80, 80, 1300000, 'Left');

INSERT INTO Stadium (stadium_id, stadium_name, club_id, stadium_capacity, stadium_location, latitude, longitude)
VALUES
    (1, 'Addis Ababa Stadium', 1, 50000, 'Addis Ababa', 9.0146, 38.7468),
    (2, 'Abebe Bikila Staduim', 2, 40000, 'Dire Dawa', 9.5931, 41.8724),
    (3, 'MEkele Stadium', 3, 35000, 'Bahir Dar', 11.5880, 37.3904),
    (4, 'Jimma Stadium', 4, 30000, 'Hawassa', 7.0560, 38.4763),
    (5, 'Hawassa Stadium', 5, 45000, 'Mekelle', 13.4967, 39.4750),
    (6, 'Wolkite Stadium', 6, 32000, 'Jimma', 7.6761, 36.8345),
    (7, 'Diredawa Stadium', 7, 28000, 'Dessie', 11.1335, 39.6297),
    (8, 'Fasil Stadium', 8, 23000, 'Gondar', 12.6115, 37.4528),
    (9, 'Adey abeba Stadium', 9, 38000, 'Adama', 8.5400, 39.2695);

INSERT INTO Tournament (tournament_id, tournament_name, tournament_type, start_date, end_date)
VALUES (1, 'Ethiopian Premier League', 'League', '2024-01-01', '2024-06-30');
INSERT INTO Tournament (tournament_id, tournament_name, tournament_type, start_date, end_date)
VALUES (2, 'Ethiopian Champions League', 'Cup', '2024-02-01', '2024-05-31');



-- Insert tournament participation entries for club IDs 1 to 10 and tournament IDs 1 and 2
INSERT INTO TournametParticipants(club_id, tournament_id)
VALUES
    -- Tournament ID 1 (Ethiopian Premier League)
    (1, 1), (2, 1), (3, 1), (4, 1), (5, 1), (6, 1), (7, 1), (8, 1), (9, 1), (10, 1),
    -- Tournament ID 2 (Ethiopian Champions League)
    (1, 2), (2, 2), (3, 2), (4, 2), (5, 2), (6, 2), (7, 2), (8, 2), (9, 2), (10, 2);
	
INSERT INTO TournamentStandings (tournament_id, club_id, goal_agains, goal_for, wins, losses, draws)
SELECT t.tournament_id, c.club_id, 0, 0, 0, 0, 0
FROM (VALUES (1), (2)) AS t(tournament_id)
CROSS JOIN (VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10)) AS c(club_id);


--insert in toi matches
-- Match 1
INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (1, 1, 2, '2024-01-29', '19:00:00', 1);

-- Match 2
INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (2, 1, 3, '2024-01-30', '20:00:00', 1);

-- Match 3
INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (1, 1, 4, '2024-01-31', '21:00:00', 1);

-- Match 4
INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (2, 1, 5, '2024-02-01', '22:00:00', 1);

-- Match 5
INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (1, 1, 6, '2024-02-02', '23:00:00', 1);

-- Match 6
INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (2, 1, 7, '2024-02-03', '00:00:00', 1);

-- Match 7
INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (1, 1, 8, '2024-02-04', '01:00:00', 1);

-- Match 8
INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (2, 1, 9, '2024-02-05', '02:00:00', 1);

-- Match 9
INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (1, 1, 10, '2024-02-06', '03:00:00', 1);

-- Match 10
INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (2, 2, 3, '2024-02-07', '04:00:00', 1);

-- Match 11
INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (1, 2, 4, '2024-02-08', '05:00:00', 1);

-- Match 12
INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (2, 2, 5, '2024-02-09', '06:00:00', 1);

-- Match 13
INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (1, 2, 6, '2024-02-10', '07:00:00', 1);

-- Match 14
INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (2, 2, 7, '2024-02-11', '08:00:00', 1);

-- Match 15
INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (1, 2, 8, '2024-02-12', '09:00:00', 1);

-- Match 16
INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (2, 2, 9, '2024-02-13', '10:00:00', 1);

-- Match 17
INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (1, 2, 10, '2024-02-14', '11:00:00', 1);



INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (1, 3, 4, '2024-02-15', '12:00:00', 1);

-- Match 19
INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (2, 3, 5, '2024-02-16', '13:00:00', 1);

-- Match 20
INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (1, 3, 6, '2024-02-17', '14:00:00', 1);

-- Match 21
INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (2, 3, 7, '2024-02-18', '15:00:00', 1);


INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (1, 3, 8, '2024-02-19', '16:00:00', 1);


INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (2, 3, 9, '2024-02-20', '17:00:00', 1);

INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (1, 3, 10, '2024-02-21', '18:00:00', 1);

INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (2, 4, 5, '2024-02-22', '19:00:00', 1);


INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (1, 4, 6, '2024-02-23', '20:00:00', 1);


INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (2, 4, 7, '2024-02-24', '21:00:00', 1);

INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (1, 4, 8, '2024-02-25', '22:00:00', 1);

INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (2, 4, 9, '2024-02-26', '23:00:00', 1);

INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (1, 4, 10, '2024-02-27', '00:00:00', 1);


INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (2, 5, 6, '2024-02-28', '01:00:00', 1);


INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (1, 5, 7, '2024-02-29', '02:00:00', 1);


INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (2, 5, 8, '2024-03-01', '03:00:00', 1);


INSERT INTO Match_ (tournament_id, clubA_id, clubB_id, match_date, match_time, stadium_id)
VALUES (1, 5, 9, '2024-03-02', '04:00:00', 1);


SELECT * FROM Match_