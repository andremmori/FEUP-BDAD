.mode columns;
.headers on ;
.nullvalue NULL;

-- Lista de concertos que ocorreram nos primeiros 6 meses do ano de 2015

SELECT ARTIST.name AS Name, CONCERT.dateConcert AS Date
FROM ARTIST INNER JOIN CONCERT ON ARTIST.idArtist = CONCERT.idArtist
WHERE CONCERT.dateConcert BETWEEN '2015-01-01' AND '2015-06-30'