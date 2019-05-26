--.mode columns;
--.headers on ;
--.nullvalue NULL;


-- Listar todos os Albums lançados no ano 2000
SELECT ALBUM.name AS Album
FROM ALBUM 
WHERE ALBUM.year = 2000
