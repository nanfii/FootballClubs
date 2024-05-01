USE FootballClubManagement;

GO
CREATE VIEW PlayerStatisticsView AS
SELECT
    p.person_id,
    p.first_name,
    p.last_name,
    p.date_of_birth,
    p.gender,
    pl.player_name,
    pl.player_position,
    c.club_name,
    COUNT(DISTINCT m.match_id) AS total_matches,
    COUNT(g.player_id) AS total_goals,
    p.salary,
    t.transfer_type,
    t.transfer_date,
    o.club_name AS original_club,
    n.club_name AS new_club
FROM
    Person p
    INNER JOIN Player pl ON p.person_id = pl.person_id
    INNER JOIN Club c ON pl.club_id = c.club_id
    LEFT JOIN Match_ m ON pl.person_id = m.clubA_id OR pl.person_id = m.clubB_id
    LEFT JOIN Goal g ON pl.person_id = g.player_id AND m.match_id = g.match_id
    LEFT JOIN Transfer t ON pl.person_id = t.player_id
    LEFT JOIN Club o ON t.original_club_id = o.club_id
    LEFT JOIN Club n ON t.new_club_id = n.club_id
GROUP BY
    p.person_id,
    p.first_name,
    p.last_name,
    p.date_of_birth,
    p.gender,
    pl.player_name,
    pl.player_position,
    c.club_name,
    p.salary,
    t.transfer_type,
    t.transfer_date,
    o.club_name,
    n.club_name;
GO
