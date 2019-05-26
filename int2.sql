.mode columns;
.headers on ;
.nullvalue NULL;

-- Contar todos os utilizadores Premium

SELECT count(*) AS NPremium
FROM USER NATURAL JOIN SUBSCRIPTION 
WHERE (subscriptionType = 'P' OR subscriptionType = 'p')