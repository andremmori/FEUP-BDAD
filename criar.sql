DROP TABLE IF EXISTS ARTIST;

CREATE TABLE IF NOT EXISTS ARTIST(
        idArtist INTEGER,
        idLocation INTEGER REFERENCES LOCATION(idLocation),
        name STRING NOT NULL,
        profilePicture BLOB,
        coverPicture BLOB,
        bio STRING
);

DROP TABLE IF EXISTS GENRE;

CREATE TABLE IF NOT EXISTS GENRE(
    
);


DROP TABLE IF EXISTS LOCATION;

CREATE TABLE IF NOT EXISTS LOCATION (
    idLocation INTEGER,
    city       STRING  NOT NULL,
    country    STRING  NOT NULL,
    CONSTRAINT LOCATION_PK PRIMARY KEY (
        idLocation
    )
);

DROP TABLE IF EXISTS SUBSCRIPTION;

CREATE TABLE IF NOT EXISTS SUBSCRIPTION (
    idUser           INTEGER REFERENCES USER (userId),
    subscriptionType CHAR    NOT NULL,
    subscriptionFee  DOUBLE,
    paymentMethod    STRING  NOT NULL,
    expirationDate   DATE
);

DROP TABLE IF EXISTS USER;

CREATE TABLE IF NOT EXISTS USER (
    idUser         INTEGER,
    idLocation     INTEGER REFERENCES LOCATION(idLocation),
    name           STRING  NOT NULL,
    email          STRING  NOT NULL,
    profilePicture BLOB,
    age            INTEGER,
    CONSTRAINT USER_PK PRIMARY KEY (
        idUser
    )
);
