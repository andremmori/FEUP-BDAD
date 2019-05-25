-- Listar os artistas de Metal que sao de New York, USA

SELECT ARTIST.name AS Name
FROM (ARTIST INNER JOIN GENRE ON GENRE.idGenre = ARTIST.idGenre) NATURAL JOIN LOCATION
WHERE LOCATION.city = 'NEW YORK' AND LOCATION.country = 'U.S.A.' AND GENRE.name = 'METAL'