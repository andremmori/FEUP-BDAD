CREATE TRIGGER IF NOT EXISTS SongLen
BEFORE UPDATE OF length ON SONG
WHEN length <= 0
    BEGIN
        SELECT RAISE(ABORT, "Duração da música inválida.");
    END;