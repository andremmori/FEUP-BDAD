DROP TABLE IF EXISTS TOP;

CREATE TABLE IF NOT EXISTS TOP(
    idTop INTEGER REFERENCES PLAYLIST(idPlaylist),
    dateCreation DATE
);

DROP TABLE IF EXISTS PLAYLIST;

CREATE TABLE IF NOT EXISTS PLAYLIST(
    idPlaylist INTEGER PRIMARY KEY REFERENCES USER(idUser),
    name STRING NOT NULL,
    coverImage BLOB,
    description STRING
);


DROP TABLE IF EXISTS SONG;

CREATE TABLE IF NOT EXISTS SONG(
    idSong INTEGER REFERENCES ALBUM(idAlbum),
    name STRING NOT NULL,
    length INTEGER,
    playCounts INTEGER CHECK (playCounts > 0)
);


DROP TABLE IF EXISTS ALBUM;

CREATE TABLE IF NOT EXISTS ALBUM (
    idAlbum   INTEGER PRIMARY KEY,
    idArtist    INTEGER REFERENCES ARTIST (idArtist),
    name     STRING NOT NULL,
    numberSongs INTEGER CHECK (numberSongs > 0),
    year INTEGER CHECK (year > 1900),
    label STRING NOT NULL,
    coverPicture BLOB
);

DROP TABLE IF EXISTS CONCERT;

CREATE TABLE IF NOT EXISTS CONCERT (
    idConcert   INTEGER PRIMARY KEY,
    idLocation  INTEGER REFERENCES LOCATION (idLocation),
    idArtist    INTEGER REFERENCES ARTIST (idArtist),
    dateConcert DATE
);

DROP TABLE IF EXISTS ARTIST;

CREATE TABLE IF NOT EXISTS ARTIST (
    idArtist       INTEGER PRIMARY KEY,
    idLocation     INTEGER REFERENCES LOCATION (idLocation),
    idGenre        INTEGER REFERENCES GENRE (idGenre),
    name           STRING  NOT NULL,
    profilePicture BLOB,
    coverPicture   BLOB,
    bio            STRING
);

DROP TABLE IF EXISTS GENRE;

CREATE TABLE IF NOT EXISTS GENRE (
    idGenre    INTEGER PRIMARY KEY,
    name        STRING  NOT NULL,
    description STRING  NOT NULL
);

DROP TABLE IF EXISTS LOCATION;

CREATE TABLE IF NOT EXISTS LOCATION (
    idLocation INTEGER PRIMARY KEY,
    city       STRING  NOT NULL,
    country    STRING  NOT NULL
);

DROP TABLE IF EXISTS SUBSCRIPTION;

CREATE TABLE IF NOT EXISTS SUBSCRIPTION (
    idUser           INTEGER REFERENCES USER (idUser),
    subscriptionType CHAR    CHECK (subscriptionType == 'F' OR subscriptionType == 'f' OR subscriptionType == 'P' OR subscriptionType == 'p'),
    subscriptionFee  DOUBLE,
    paymentMethod    STRING,
    expirationDate   DATE
);

DROP TABLE IF EXISTS USER;

CREATE TABLE IF NOT EXISTS USER (
    idUser         INTEGER PRIMARY KEY,
    idLocation     INTEGER REFERENCES LOCATION (idLocation),
    name           STRING  NOT NULL,
    email          STRING  NOT NULL,
    profilePicture BLOB,
    age            INTEGER CHECK (age > 0)
);
