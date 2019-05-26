CREATE TRIGGER IF NOT EXISTS SongLen
BEFORE INSERT ON SONG
WHEN New.length <= 0
    BEGIN
        SELECT RAISE(ABORT, "Duração da música inválida.");
    END;