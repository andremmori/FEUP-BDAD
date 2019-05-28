CREATE TRIGGER IF NOT EXISTS AddUser
BEFORE INSERT ON USER
FOR EACH ROW
  BEGIN
    INSERT INTO SUBSCRIPTION (idSubscription, subscriptionType, subscriptionFee, paymentMethod, expirationDate) VALUES ((SELECT max(idSubscription) AS idMax
    FROM (SELECT idSubscription FROM SUBSCRIPTION)) + 1 , 'F', 0, NULL, NULL);
  END;