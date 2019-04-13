PRAGMA foreign_keys = ON;

INSERT INTO LOCATION (idLocation, city, country) VALUES (1, 'PORTO', 'PORTUGAL');
INSERT INTO LOCATION (idLocation, city, country) VALUES (2, 'SAO PAULO', 'BRAZIL');
INSERT INTO LOCATION (idLocation, city, country) VALUES (3, 'NEW YORK', 'U.S.A.');


INSERT INTO GENRE (idGenre, name, description) VALUES (1, 'METAL', 'Heavy metal.');
INSERT INTO GENRE (idGenre, name, description) VALUES (2, 'K-POP', 'Korean pop music.');
INSERT INTO GENRE (idGenre, name, description) VALUES (3, 'BLUES', 'The blues form is a cyclic musical form in which a repeating progression of chords mirrors the call and response scheme commonly found in African and African-American music');


INSERT INTO USER (idUser, idLocation, name, email, profilePicture, age) VALUES (1,1,'CHESTER BENNINGTON','chester@linkinpark.com', NULL, 43);
INSERT INTO USER (idUser, idLocation, name, email, profilePicture, age) VALUES (2,2,'TONY STARK','tonystark@starkinc.com', 'https://cdn.vox-cdn.com/thumbor/UjJJtbVjzjURf6oiXSa0SomaEfU=/0x0:3000x1779/1200x800/filters:focal(1204x216:1684x696)/cdn.vox-cdn.com/uploads/chorus_image/image/59606327/ktokatitmir0.0.jpg', 42);
INSERT INTO USER (idUser, idLocation, name, email, profilePicture, age) VALUES (3,3,'CHANDLER M. BING','chandler.m.bing@friends.com', 'https://img.huffingtonpost.com/asset/5c37971b2200001a0ae08c29.jpeg?ops=1200_630', 51);


INSERT INTO SUBSCRIPTION (idUser, subscriptionType, subscriptionFee, paymentMethod, expirationDate) VALUES (1,'P',15.00, 'PAYPAL', '24/12/2020');
INSERT INTO SUBSCRIPTION (idUser, subscriptionType, subscriptionFee, paymentMethod, expirationDate) VALUES (2,'P',12.90, 'DEBIT', '24/12/2021');
INSERT INTO SUBSCRIPTION (idUser, subscriptionType, subscriptionFee, paymentMethod, expirationDate) VALUES (3,'F',0, NULL, NULL);


INSERT INTO PLAYLIST (idPlaylist, name, coverImage, description) VALUES (1, 'METAL GODS', NULL, 'The best playlist to headbang.');
INSERT INTO PLAYLIST (idPlaylist, name, coverImage, description) VALUES (2, 'EDM GODS', NULL, 'My playlist.');
INSERT INTO PLAYLIST (idPlaylist, name, coverImage, description) VALUES (3, 'GOTHIC GODESS', NULL, 'Women in metal.');


INSERT INTO TOP (idTop, dateCreation) VALUES (1, '13/09/2013');
INSERT INTO TOP (idTop, dateCreation) VALUES (2, '17/12/2018');
INSERT INTO TOP (idTop, dateCreation) VALUES (3, '05/04/2019');


INSERT INTO ARTIST (idArtist, idLocation, idGenre, name, profilePicture, coverPicture, bio) VALUES (1,1,1,'AMY LEE', NULL, NULL, 'Great.');
INSERT INTO ARTIST (idArtist, idLocation, idGenre, name, profilePicture, coverPicture, bio) VALUES (2,2,2,'BTS', NULL, NULL, 'Not very good.');
INSERT INTO ARTIST (idArtist, idLocation, idGenre, name, profilePicture, coverPicture, bio) VALUES (3,3,3,'STEVIE RAY VAUGHAN', NULL, NULL, 'Good.');


INSERT INTO ALBUM (idAlbum, idArtist, name, numberSongs, year, label, coverPicture) VALUES (1,1,'METEORA', 13, 1997, 'SONY', NULL);
INSERT INTO ALBUM (idAlbum, idArtist, name, numberSongs, year, label, coverPicture) VALUES (2,1,'HYBRID THEORY', 5, 1997, 'WBR', NULL);
INSERT INTO ALBUM (idAlbum, idArtist, name, numberSongs, year, label, coverPicture) VALUES (3,1,'MINUTES TO MIDNIGHT', 18, 1997, 'MARVEL', NULL);


INSERT INTO SONG (idSong, name, length, playCounts) VALUES (1, 'NUMB', 3, 463879205);
INSERT INTO SONG (idSong, name, length, playCounts) VALUES (2, 'IN THE END', 3, 4634569205);
INSERT INTO SONG (idSong, name, length, playCounts) VALUES (3, 'WHAT IVE DONE', 3, 2363879205);


INSERT INTO CONCERT (idConcert, idLocation, idArtist, dateConcert) VALUES (1, 1, 1, '12/12/2006');
INSERT INTO CONCERT (idConcert, idLocation, idArtist, dateConcert) VALUES (2, 2, 2, '13/12/2019');
INSERT INTO CONCERT (idConcert, idLocation, idArtist, dateConcert) VALUES (3, 3, 3, '14/12/2018');