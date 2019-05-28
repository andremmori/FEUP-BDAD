.mode columns;
.headers on ;
.nullvalue NULL;

-- Lista artistas e seus albuns por ordem alfabetica com playcounts totais das musicas

SELECT ARTIST.name, ALBUM.name, SUM(SONG.playCounts)
FROM ARTIST INNER JOIN (ALBUM INNER JOIN SONG ON ALBUM.idAlbum = SONG.idAlbum) ON ARTIST.idArtist = ALBUM.idArtist
GROUP BY ARTIST.name
