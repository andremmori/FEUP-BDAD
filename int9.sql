--.mode columns;
--.headers on ;
--.nullvalue NULL;

-- Listar Artistas e utilizadores com suas Localidades em ordem alfabetica do país

SELECT USER.name as Name, LOCATION.city as City, LOCATION.country as Country
FROM USER NATURAL JOIN LOCATION
UNION 
SELECT ARTIST.name as Name, LOCATION.city as City, LOCATION.country as Country
FROM ARTIST NATURAL JOIN LOCATION
ORDER BY LOCATION.country
