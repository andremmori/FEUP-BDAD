.mode columns;
.headers on ;
.nullvalue NULL;

-- Numero de albums produzidos por cada Label em ordem crescente

SELECT ALBUM.label AS Label, count(ALBUM.label) AS NAlbums
FROM ALBUM
GROUP BY ALBUM.label
ORDER BY NAlbums ASC