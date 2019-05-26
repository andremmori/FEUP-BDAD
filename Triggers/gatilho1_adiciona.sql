CREATE TRIGGER IF NOT EXISTS AddUser
AFTER INSERT ON USER
FOR EACH ROW
  BEGIN
    INSERT INTO SUBSCRIPTION (idUser, subscriptionType, subscriptionFee, paymentMethod, expirationDate) VALUES (New.idUser, 'F', 0, NULL, NULL);
  END;