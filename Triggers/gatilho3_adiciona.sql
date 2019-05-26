CREATE TRIGGER IF NOT EXISTS AddSong
AFTER INSERT ON SONG
FOR EACH ROW
    BEGIN
        UPDATE ALBUM
        SET numberSongs = numberSongs + 1
        WHERE idAlbum = New.idSong;
    END;
    