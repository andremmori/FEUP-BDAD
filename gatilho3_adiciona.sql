CREATE TRIGGER IF NOT EXISTS AddSong
AFTER INSERT ON ALBUM
FOR EACH ROW
    BEGIN
    UPDATE ALBUM
    SET numberSongs = numberSongs + 1
    WHERE New.idSong = ALBUM.idAlbum;
    END;
    