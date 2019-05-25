SELECT count (*) AS 'Num Utilizador.id = 21'
FROM USER
WHERE USER.idUser = 21;

SELECT count (*) AS 'Num Inscricao.idUser = 21'
FROM SUBSCRIPTION
WHERE SUBSCRIPTION.idUser = 21;

INSERT INTO USER (idUser, idLocation, name, email, profilePicture, age) VALUES (21,1,'RACHEL GREEN','green@friends.com', NULL, 36);


SELECT USER.idUser AS 'Utilizador ID'
FROM USER
INNER JOIN SUBSCRIPTION
ON SUBSCRIPTION.idUser = USER.idUser AND SUBSCRIPTION.idUser = 21
