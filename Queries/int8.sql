.mode columns;
.headers on ;
.nullvalue NULL;

-- Lista datas em que playlists tornaram-se tops

SELECT TOP.dateCreation AS Data, USER.name AS Nome
FROM USER INNER JOIN (TOP INNER JOIN PLAYLIST ON TOP.idTop = PLAYLIST.idPlaylist) ON USER.idUser = PLAYLIST.idPlaylist
ORDER BY USER.name