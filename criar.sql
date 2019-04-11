DROP TABLE IF EXISTS TOP;

CREATE TABLE IF NOT EXISTS TOP(
    idPlaylist INTEGER REFERENCES PLAYLIST(idPlaylist),
    dateCreation DATE,
    CONSTRAINT PLAYLIST_PK PRIMARY KEY (idPlaylist)
);

DROP TABLE IF EXISTS PLAYLIST;

CREATE TABLE IF NOT EXISTS PLAYLIST(
    idUser INTEGER REFERENCES USER(idUser),
    name STRING NOT NULL,
    coverImage BLOB,
    description STRING,
    CONSTRAINT PLAYLIST_PK PRIMARY KEY (idUser)
);

DROP TABLE IF EXISTS PLAYLIST;

CREATE TABLE IF NOT EXISTS PLAYLIST(
    idUser INTEGER REFERENCES USER(idUser),
    name STRING NOT NULL,
    coverImage BLOB,
    description STRING,
    CONSTRAINT PLAYLIST_PK PRIMARY KEY (idUser)
);


DROP TABLE IF EXISTS SONG;

CREATE TABLE IF NOT EXISTS SONG(
    idAlbum INTEGER REFERENCES ALBUM(idAlbum),
    name STRING NOT NULL,
    length TIME,
    playCounts INTEGER,
    CONSTRAINT SONG_PK PRIMARY KEY (idAlbum)
);


DROP TABLE IF EXISTS ALBUM;

CREATE TABLE IF NOT EXISTS ALBUM (
    idAlbum   INTEGER,
    idArtist    INTEGER REFERENCES ARTIST (idArtist),
    name     STRING NOT NULL,
    numberSongs INTEGER,
    year DATE,
    label STRING NOT NULL,
    coverPicture BLOB,
    CONSTRAINT ALBUM_PK PRIMARY KEY (
        idAlbum
    )
);

DROP TABLE IF EXISTS CONCERT;

CREATE TABLE IF NOT EXISTS CONCERT (
    idConcert   INTEGER,
    idLocation  INTEGER REFERENCES LOCATION (idLocation),
    idArtist    INTEGER REFERENCES ARTIST (idArtist),
    idUser      INTEGER REFERENCES USER (idUser),
    dateConcert DATE,
    CONSTRAINT CONCERT_PK PRIMARY KEY (
        idConcert
    )
);

DROP TABLE IF EXISTS ARTIST;

CREATE TABLE IF NOT EXISTS ARTIST (
    idArtist       INTEGER,
    idLocation     INTEGER REFERENCES LOCATION (idLocation),
    idGenre        INTEGER REFERENCES GENRE (idGenre),
    name           STRING  NOT NULL,
    profilePicture BLOB,
    coverPicture   BLOB,
    bio            STRING
);

DROP TABLE IF EXISTS GENRE;

CREATE TABLE IF NOT EXISTS GENRE (
    idGenre    INTEGER,
    name        STRING  NOT NULL,
    description STRING  NOT NULL,
    CONSTRAINT GENRE_PK PRIMARY KEY (idGenre)
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
    idLocation     INTEGER REFERENCES LOCATION (idLocation),
    name           STRING  NOT NULL,
    email          STRING  NOT NULL,
    profilePicture BLOB,
    age            INTEGER,
    CONSTRAINT USER_PK PRIMARY KEY (
        idUser
    )
);
