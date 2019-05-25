-- TOTAL de playcounts para cada genero

SELECT GENRE.name AS Name, SUM(SONG.playCounts) AS PlayCounts
FROM SONG INNER JOIN (ALBUM INNER JOIN (GENRE INNER JOIN ARTIST ON ARTIST.idGenre = GENRE.idGenre) ON ALBUM.idArtist = ARTIST.idArtist)
ON SONG.idSong = ALBUM.idAlbum
GROUP BY (GENRE.name)
