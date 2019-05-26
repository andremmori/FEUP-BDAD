PRAGMA foreign_keys = ON;

INSERT INTO LOCATION (idLocation, city, country) VALUES (1, 'PORTO', 'PORTUGAL');
INSERT INTO LOCATION (idLocation, city, country) VALUES (2, 'SAO PAULO', 'BRAZIL');
INSERT INTO LOCATION (idLocation, city, country) VALUES (3, 'NEW YORK', 'U.S.A.');
INSERT INTO LOCATION (idLocation, city, country) VALUES (4, 'BARCELONA', 'SPAIN');
INSERT INTO LOCATION (idLocation, city, country) VALUES (5, 'PARIS', 'FRANCE');


INSERT INTO GENRE (idGenre, name, description) VALUES (1, 'METAL', 'Heavy metal.');
INSERT INTO GENRE (idGenre, name, description) VALUES (2, 'K-POP', 'Korean pop music.');
INSERT INTO GENRE (idGenre, name, description) VALUES (3, 'BLUES', 'The blues form is a cyclic musical form in which a repeating progression of chords mirrors the call and response scheme commonly found in African and African-American music');
INSERT INTO GENRE (idGenre, name, description) VALUES (4, 'EDM', 'Electronic Dance Music.');
INSERT INTO GENRE (idGenre, name, description) VALUES (5, 'ROCK', 'Classic Rock N Roll.');


INSERT INTO USER (idUser, idLocation, name, email, profilePicture, age) VALUES (1,1,'CHESTER BENNINGTON','chester@linkinpark.com', NULL, 43);
INSERT INTO USER (idUser, idLocation, name, email, profilePicture, age) VALUES (2,2,'TONY STARK','tonystark@starkinc.com', 'https://cdn.vox-cdn.com/thumbor/UjJJtbVjzjURf6oiXSa0SomaEfU=/0x0:3000x1779/1200x800/filters:focal(1204x216:1684x696)/cdn.vox-cdn.com/uploads/chorus_image/image/59606327/ktokatitmir0.0.jpg', 42);
INSERT INTO USER (idUser, idLocation, name, email, profilePicture, age) VALUES (3,3,'CHANDLER M. BING','chandler.m.bing@friends.com', 'https://img.huffingtonpost.com/asset/5c37971b2200001a0ae08c29.jpeg?ops=1200_630', 51);
INSERT INTO USER (idUser, idLocation, name, email, profilePicture, age) VALUES (4,4,'WILL SMITH','will.smith@tv.com', 'https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=2ahUKEwjznILgw7niAhWXAWMBHWCBDpoQjRx6BAgBEAU&url=https%3A%2F%2Fpt.wikipedia.org%2Fwiki%2FWill_Smith&psig=AOvVaw0iahf47EMcrnFDMNNO6Fft&ust=1558971555746002', 51);
INSERT INTO USER (idUser, idLocation, name, email, profilePicture, age) VALUES (5,2,'TOMMY WISEAU','wiseau@films.com', 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Tommy-Wiseau-1.jpg', 23);
INSERT INTO USER (idUser, idLocation, name, email, profilePicture, age) VALUES (6,5,'LEONARDO DICAPRIO','dicaprio@titanic.com', 'https://upload.wikimedia.org/wikipedia/commons/2/21/Leonardo_DiCaprio_October_2016.jpg', 15);
INSERT INTO USER (idUser, idLocation, name, email, profilePicture, age) VALUES (7,1,'SHELDON COOPER','sheldon@bigbang.com', 'https://the-big-bang-theory.com/images/uploads/5/rs_3463ec66edb459bd1dd.jpg', 18);
INSERT INTO USER (idUser, idLocation, name, email, profilePicture, age) VALUES (8,4,'CHARLIE HARPER','charlie@twoandahalf.com', 'https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters/p-two-and-a-half-men-charlie-sheen.jpg', 98);
INSERT INTO USER (idUser, idLocation, name, email, profilePicture, age) VALUES (9,5,'DRAKE BELL','drakeandjosh@nick.com', 'https://media1.s-nbcnews.com/j/newscms/2015_52/1351041/151222-jared-drake-bell-648p_67d8c968bf4784d74d8627750ce7c157.fit-2000w.jpg', 34);
INSERT INTO USER (idUser, idLocation, name, email, profilePicture, age) VALUES (10,3,'RYAN REYNOLDS','deadpool@marvel.com', 'https://upload.wikimedia.org/wikipedia/commons/1/14/Deadpool_2_Japan_Premiere_Red_Carpet_Ryan_Reynolds_%28cropped%29.jpg', 66);


INSERT INTO SUBSCRIPTION (idUser, subscriptionType, subscriptionFee, paymentMethod, expirationDate) VALUES (1,'P',15.00, 'PAYPAL', '24/12/2020');
INSERT INTO SUBSCRIPTION (idUser, subscriptionType, subscriptionFee, paymentMethod, expirationDate) VALUES (2,'P',12.90, 'DEBIT', '24/12/2021');
INSERT INTO SUBSCRIPTION (idUser, subscriptionType, subscriptionFee, paymentMethod, expirationDate) VALUES (3,'F',0, NULL, NULL);
INSERT INTO SUBSCRIPTION (idUser, subscriptionType, subscriptionFee, paymentMethod, expirationDate) VALUES (4,'P',17.99, 'DEBIT', '12/1/1998');
INSERT INTO SUBSCRIPTION (idUser, subscriptionType, subscriptionFee, paymentMethod, expirationDate) VALUES (5,'F',0, NULL, NULL);
INSERT INTO SUBSCRIPTION (idUser, subscriptionType, subscriptionFee, paymentMethod, expirationDate) VALUES (6,'F',0, NULL, NULL);
INSERT INTO SUBSCRIPTION (idUser, subscriptionType, subscriptionFee, paymentMethod, expirationDate) VALUES (7,'P',0, 'PAYPAL', '12/1/1998');
INSERT INTO SUBSCRIPTION (idUser, subscriptionType, subscriptionFee, paymentMethod, expirationDate) VALUES (8,'F',0, NULL, NULL);
INSERT INTO SUBSCRIPTION (idUser, subscriptionType, subscriptionFee, paymentMethod, expirationDate) VALUES (9,'P',0, 'PAYPAL', '6/11/2019');
INSERT INTO SUBSCRIPTION (idUser, subscriptionType, subscriptionFee, paymentMethod, expirationDate) VALUES (10,'P',0, 'CREDIT', '1/4/2023');


INSERT INTO PLAYLIST (idPlaylist, name, coverImage, description) VALUES (1, 'METAL GODS', NULL, 'The best playlist to headbang.');
INSERT INTO PLAYLIST (idPlaylist, name, coverImage, description) VALUES (2, 'EDM GODS', NULL, 'My playlist.');
INSERT INTO PLAYLIST (idPlaylist, name, coverImage, description) VALUES (3, 'GOTHIC GODESS', NULL, 'Women in metal.');
INSERT INTO PLAYLIST (idPlaylist, name, coverImage, description) VALUES (5, 'HAPPY SONGS', NULL, 'So happy.');
INSERT INTO PLAYLIST (idPlaylist, name, coverImage, description) VALUES (8, 'ROCK N ROLL', NULL, 'Rock babe.');
INSERT INTO PLAYLIST (idPlaylist, name, coverImage, description) VALUES (10, 'NEW STUFF', NULL, 'New songs.');


INSERT INTO TOP (idTop, dateCreation) VALUES (1, '13/09/2013');
INSERT INTO TOP (idTop, dateCreation) VALUES (3, '17/12/2018');
INSERT INTO TOP (idTop, dateCreation) VALUES (8, '05/04/2019');


INSERT INTO ARTIST (idArtist, idLocation, idGenre, name, profilePicture, coverPicture, bio) VALUES (1,3,1,'AMY LEE', NULL, NULL, 'Great.');
INSERT INTO ARTIST (idArtist, idLocation, idGenre, name, profilePicture, coverPicture, bio) VALUES (2,2,2,'BTS', NULL, NULL, 'Not very good.');
INSERT INTO ARTIST (idArtist, idLocation, idGenre, name, profilePicture, coverPicture, bio) VALUES (3,1,3,'STEVIE RAY VAUGHAN', NULL, NULL, 'Good.');
INSERT INTO ARTIST (idArtist, idLocation, idGenre, name, profilePicture, coverPicture, bio) VALUES (4,4,4,'MARTIN GARRIX', NULL, NULL, 'Very good.');
INSERT INTO ARTIST (idArtist, idLocation, idGenre, name, profilePicture, coverPicture, bio) VALUES (5,5,5,'AC/DC', NULL, NULL, 'Classic.');
INSERT INTO ARTIST (idArtist, idLocation, idGenre, name, profilePicture, coverPicture, bio) VALUES (6,3,1,'SLIPKNOT', NULL, NULL, 'Excelent.');
INSERT INTO ARTIST (idArtist, idLocation, idGenre, name, profilePicture, coverPicture, bio) VALUES (7,2,2,'EXO', NULL, NULL, 'Not good.');
INSERT INTO ARTIST (idArtist, idLocation, idGenre, name, profilePicture, coverPicture, bio) VALUES (8,1,3,'BB KING', NULL, NULL, 'Good.');
INSERT INTO ARTIST (idArtist, idLocation, idGenre, name, profilePicture, coverPicture, bio) VALUES (9,4,4,'ALOK', NULL, NULL, 'Awesome.');
INSERT INTO ARTIST (idArtist, idLocation, idGenre, name, profilePicture, coverPicture, bio) VALUES (10,5,5,'THE WHO', NULL, NULL, 'CSI opening songs.');


INSERT INTO ALBUM (idAlbum, idArtist, name, numberSongs, year, label, coverPicture) VALUES (1,1,'METEORA', 13, 1980, 'SONY', NULL);
INSERT INTO ALBUM (idAlbum, idArtist, name, numberSongs, year, label, coverPicture) VALUES (2,2,'HYBRID THEORY', 5, 1997, 'WBR', NULL);
INSERT INTO ALBUM (idAlbum, idArtist, name, numberSongs, year, label, coverPicture) VALUES (3,3,'IN SESSION', 18, 2003, 'MARVEL', NULL);
INSERT INTO ALBUM (idAlbum, idArtist, name, numberSongs, year, label, coverPicture) VALUES (4,4,'SCARED TO BE LONELY', 18, 2010, 'SONY', NULL);
INSERT INTO ALBUM (idAlbum, idArtist, name, numberSongs, year, label, coverPicture) VALUES (5,5,'BACK IN BLACK', 18, 2018, 'MARVEL', NULL);
INSERT INTO ALBUM (idAlbum, idArtist, name, numberSongs, year, label, coverPicture) VALUES (6,6,'ALL HOPE IS GONE', 18, 1997, 'SONY', NULL);
INSERT INTO ALBUM (idAlbum, idArtist, name, numberSongs, year, label, coverPicture) VALUES (7,7,'DONT KNOW', 18, 2000, 'MARVEL', NULL);
INSERT INTO ALBUM (idAlbum, idArtist, name, numberSongs, year, label, coverPicture) VALUES (8,8,'RIDING WITH THE KING', 18, 1995, 'MARVEL', NULL);
INSERT INTO ALBUM (idAlbum, idArtist, name, numberSongs, year, label, coverPicture) VALUES (9,9,'HEAR ME NOW', 18, 2000, 'WBR', NULL);
INSERT INTO ALBUM (idAlbum, idArtist, name, numberSongs, year, label, coverPicture) VALUES (10,10,'WHO ARE YOU', 18, 1970, 'WBR', NULL);


INSERT INTO SONG (idSong, name, length, playCounts) VALUES (1, 'NUMB', 3, 463879205);
INSERT INTO SONG (idSong, name, length, playCounts) VALUES (2, 'IN THE END', 4, 244687);
INSERT INTO SONG (idSong, name, length, playCounts) VALUES (3, 'PRIDE AND JOY', 3, 767653);
INSERT INTO SONG (idSong, name, length, playCounts) VALUES (4, 'SCARED', 3, 123123);
INSERT INTO SONG (idSong, name, length, playCounts) VALUES (5, 'HELLS BELLS', 2, 2363879205);
INSERT INTO SONG (idSong, name, length, playCounts) VALUES (6, 'PSYCHOSOCIAL', 12, 1245);
INSERT INTO SONG (idSong, name, length, playCounts) VALUES (7, 'DONT KNOW', 5, 43634523);
INSERT INTO SONG (idSong, name, length, playCounts) VALUES (8, 'TEXAS FLOOD', 7, 12);
INSERT INTO SONG (idSong, name, length, playCounts) VALUES (9, 'HEAR ME NOW', 8, 42142);
INSERT INTO SONG (idSong, name, length, playCounts) VALUES (10, 'PINBALL WIZARD', 1, 12312);


INSERT INTO CONCERT (idConcert, idLocation, idArtist, dateConcert) VALUES (1, 1, 1, '12/12/2006');
INSERT INTO CONCERT (idConcert, idLocation, idArtist, dateConcert) VALUES (2, 2, 2, '14/2/2015');
INSERT INTO CONCERT (idConcert, idLocation, idArtist, dateConcert) VALUES (3, 3, 3, '22/5/2015');
INSERT INTO CONCERT (idConcert, idLocation, idArtist, dateConcert) VALUES (4, 4, 4, '14/12/2013');
INSERT INTO CONCERT (idConcert, idLocation, idArtist, dateConcert) VALUES (5, 5, 5, '14/12/2018');