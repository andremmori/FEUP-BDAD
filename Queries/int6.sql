.mode columns;
.headers on ;
.nullvalue NULL;

-- Listar as 5 musicas mais ouvidas na plataforma

SELECT SONG.name AS Name, SONG.playCounts as PlayCounts
FROM SONG
ORDER BY SONG.playCounts DESC
LIMIT 5