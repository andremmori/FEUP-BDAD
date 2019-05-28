.mode columns;
.headers on ;
.nullvalue NULL;

-- Lista o numero de seguidores de cada artista

SELECT ARTIST.name, COUNT(FOLLOWARTIST.idUser)
FROM FOLLOWARTIST NATURAL JOIN ARTIST
GROUP BY ARTIST.name