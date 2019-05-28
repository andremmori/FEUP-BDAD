INSERT INTO USER (idUser, idSubscription, idLocation, name, email, profilePicture, age) VALUES (21,(SELECT max(idSubscription) AS idMax
    FROM (SELECT idSubscription FROM SUBSCRIPTION)),1,'RACHEL GREEN','green@friends.com', NULL, 36);


SELECT USER.idUser AS 'Utilizador ID'
FROM USER
INNER JOIN SUBSCRIPTION
ON SUBSCRIPTION.idSubscription = USER.idSubscription AND SUBSCRIPTION.idSubscription = (SELECT max(idSubscription) AS idMax
    FROM (SELECT idSubscription FROM SUBSCRIPTION))
