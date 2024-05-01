USE FootballClubManagement;
GO

-- Create the TournamentStandingsView
CREATE VIEW TournamentStandingsView AS
SELECT
    t.tournament_id,
    c.club_id,
    c.club_name,
    ts.wins,
    ts.losses,
    ts.draws,
    ts.goal_for,
    ts.goal_agains,
    ROW_NUMBER() OVER (PARTITION BY t.tournament_id ORDER BY ts.wins DESC, ts.draws DESC, ts.losses ASC, ts.goal_for DESC, ts.goal_agains ASC) AS rank
FROM
    Tournament t
    INNER JOIN TournamentStandings ts ON t.tournament_id = ts.tournament_id
    INNER JOIN Club c ON ts.club_id = c.club_id;
GO

SELECT * FROM TournamentStandingsView