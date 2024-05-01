CREATE TRIGGER trg_UpdateScoreboard
ON MatchStatistics
AFTER INSERT
AS
BEGIN
    -- Update the tournament standings for the affected match
    UPDATE TournamentStandings
    SET goal_for = goal_for + i.scoreA,
        goal_agains = goal_agains + i.scoreB,
        wins = CASE
                   WHEN i.scoreA > i.scoreB THEN wins + 1
                   ELSE wins
               END,
        losses = CASE
                     WHEN i.scoreA < i.scoreB THEN losses + 1
                     ELSE losses
                 END,
        draws = CASE
                    WHEN i.scoreA = i.scoreB THEN draws + 1
                    ELSE draws
                END
    FROM TournamentStandings ts
    JOIN Match_ m ON ts.tournament_id = m.tournament_id
    JOIN inserted i ON m.match_id = i.match_id
    WHERE i.scoreA IS NOT NULL AND i.scoreB IS NOT NULL
      AND ts.club_id = m.clubA_id;

    -- Update the tournament standings for the opposing club
    UPDATE TournamentStandings
    SET goal_for = goal_for + i.scoreB,
        goal_agains = goal_agains + i.scoreA,
        wins = CASE
                   WHEN i.scoreB > i.scoreA THEN wins + 1
                   ELSE wins
               END,
        losses = CASE
                     WHEN i.scoreB < i.scoreA THEN losses + 1
                     ELSE losses
                 END,
        draws = CASE
                    WHEN i.scoreB = i.scoreA THEN draws + 1
                    ELSE draws
                END
    FROM TournamentStandings ts
    JOIN Match_ m ON ts.tournament_id = m.tournament_id
    JOIN inserted i ON m.match_id = i.match_id
    WHERE i.scoreA IS NOT NULL AND i.scoreB IS NOT NULL
      AND ts.club_id = m.clubB_id;
END;