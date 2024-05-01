USE FootballClubManagement;

GO
CREATE TRIGGER trg_UpdatePlayerClub
ON PlayerTransfer
AFTER INSERT
AS
BEGIN
    UPDATE Player
    SET club_id = i.new_club_id
    FROM Player INNER JOIN inserted i ON Player.person_id = i.player_id;
END;


