CREATE DATABASE RECORD_COMPANY;
USE RECORD_COMPANY;

drop database record_company;

CREATE TABLE BANDS (
  ID INT NOT NULL,
  NAME VARCHAR(255) NOT NULL,
  PRIMARY KEY (ID));

CREATE TABLE ALBUMS (
  ID INT NOT NULL,
  NAME VARCHAR(255) NOT NULL,
  RELEASE_YEAR INT,
  BAND_ID INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (BAND_ID) REFERENCES BANDS(ID));

CREATE TABLE SONGS (
ID INT NOT NULL,
NAME VARCHAR(250) NOT NULL,
LENGTH FLOAT,
ALBUM_ID INT NOT NULL,
PRIMARY KEY (ID),
FOREIGN KEY (ALBUM_ID) REFERENCES ALBUMS(ID));

INSERT INTO BANDS(ID,NAME) VALUES (1,'Seventh Wonder');
INSERT INTO BANDS(ID,NAME) VALUES (2,'Metallica');
INSERT INTO BANDS(ID,NAME) VALUES (3,'The Ocean');
INSERT INTO BANDS(ID,NAME) VALUES (4,'Within Temptation');
INSERT INTO BANDS(ID,NAME) VALUES (5,'Death');
INSERT INTO BANDS(ID,NAME) VALUES (6,'Van Canto');
INSERT INTO BANDS(ID,NAME) VALUES (7,'Dream Theater');

INSERT INTO ALBUMS(ID,NAME,RELEASE_YEAR,BAND_ID) VALUES (1,'Tiara',2018,1);
INSERT INTO ALBUMS(ID,NAME,RELEASE_YEAR,BAND_ID) VALUES (2,'The Great Escape',2010,1);
INSERT INTO ALBUMS(ID,NAME,RELEASE_YEAR,BAND_ID) VALUES (3,'Mercy Falls',2008,1);
INSERT INTO ALBUMS(ID,NAME,RELEASE_YEAR,BAND_ID) VALUES (4,'Master of Puppets',NULL,2);
INSERT INTO ALBUMS(ID,NAME,RELEASE_YEAR,BAND_ID) VALUES (5,'...And Justice for All',1988,2);
INSERT INTO ALBUMS(ID,NAME,RELEASE_YEAR,BAND_ID) VALUES (6,'Death Magnetic',2008,2);
INSERT INTO ALBUMS(ID,NAME,RELEASE_YEAR,BAND_ID) VALUES (7,'Heliocentric',2010,3);
INSERT INTO ALBUMS(ID,NAME,RELEASE_YEAR,BAND_ID) VALUES (8,'Pelagial',2013,3);
INSERT INTO ALBUMS(ID,NAME,RELEASE_YEAR,BAND_ID) VALUES (9,'Anthropocentric',2010,3);
INSERT INTO ALBUMS(ID,NAME,RELEASE_YEAR,BAND_ID) VALUES (10,'Resist',2018,4);
INSERT INTO ALBUMS(ID,NAME,RELEASE_YEAR,BAND_ID) VALUES (11,'The Unforgiving',2011,4);
INSERT INTO ALBUMS(ID,NAME,RELEASE_YEAR,BAND_ID) VALUES (12,'Enter',1997,4);
INSERT INTO ALBUMS(ID,NAME,RELEASE_YEAR,BAND_ID) VALUES (13,'The Sound of Perseverance',1998,5);
INSERT INTO ALBUMS(ID,NAME,RELEASE_YEAR,BAND_ID) VALUES (14,'Individual Thought Patterns',1993,5);
INSERT INTO ALBUMS(ID,NAME,RELEASE_YEAR,BAND_ID) VALUES (15,'Human',1991,5);
INSERT INTO ALBUMS(ID,NAME,RELEASE_YEAR,BAND_ID) VALUES (16,'A Storm to Come',2006,6);
INSERT INTO ALBUMS(ID,NAME,RELEASE_YEAR,BAND_ID) VALUES (17,'Break the Silence',2011,6);
INSERT INTO ALBUMS(ID,NAME,RELEASE_YEAR,BAND_ID) VALUES (18,'Tribe of Force',2010,6);

INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (1,'Arrival',1+(30/60),1);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (2,'The Everones',6+(13/60),1);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (3,'Dream Machines',5+(38/60),1);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (4,'Against the Grain',6+(58/60),1);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (5,'Victorious',4+(55/60),1);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (6,'Tiara''s Song (Farewell Pt. 1)',7+(16/60),1);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (7,'Goodnight (Farewell Pt. 2)',7+(10/60),1);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (8,'Beyond Today (Farewell Pt. 3)',5+(06/60),1);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (9,'The Truth',4+(17/60),1);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (10,'By the Light of the Funeral Pyres',3+(54/60),1);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (11,'Damnation Below',6+(44/60),1);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (12,'Procession',0+(45/60),1);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (13,'Exhale',9+(30/60),1);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (14,'Wiseman',5+(42/60),2);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (15,'Alley Cat',6+(06/60),2);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (16,'The Angelmaker',8+(29/60),2);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (17,'King of Whitewater',7+(20/60),2);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (18,'Long Way Home',4+(26/60),2);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (19,'Move on Through',5+(04/60),2);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (20,'The Great Escape',30+(14/60),2);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (21,'A New Beginning',3+(05/60),3);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (22,'There and Back',3+(02/60),3);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (23,'Welcome to Mercy Falls',5+(11/60),3);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (24,'Unbreakable',7+(19/60),3);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (25,'Tears for a Father',1+(58/60),3);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (26,'A Day Away',3+(43/60),3);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (27,'Tears for a Son',1+(42/60),3);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (28,'Paradise',5+(46/60),3);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (29,'Fall in Line',6+(09/60),3);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (30,'Break the Silence',9+(29/60),3);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (31,'Hide and Seek',7+(46/60),3);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (32,'Destiny Calls',6+(18/60),3);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (33,'One Last Goodbye',4+(21/60),3);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (34,'Back in Time',1+(14/60),3);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (35,'The Black Parade',6+(57/60),3);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (36,'Battery',5+(13/60),4);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (37,'Master of Puppets',8+(35/60),4);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (38,'The Thing That Should Not Be',6+(36/60),4);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (39,'Welcome Home (Sanitarium)',6+(27/60),4);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (40,'Disposable Heroes',8+(17/60),4);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (41,'Leper Messiah',5+(40/60),4);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (42,'Orion',8+(27/60),4);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (43,'Damage Inc.',5+(32/60),4);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (44,'Blackened',6+(41/60),5);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (45,'...And Justice for All',9+(47/60),5);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (46,'Eye of the Beholder',6+(30/60),5);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (47,'One',7+(27/60),5);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (48,'The Shortest Straw',6+(36/60),5);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (49,'Harvester of Sorrow',5+(46/60),5);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (50,'The Frayed Ends of Sanity',7+(44/60),5);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (51,'To Live Is to Die',9+(49/60),5);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (52,'Dyers Eve',5+(13/60),5);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (53,'That Was Just Your Life',7+(08/60),6);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (54,'The End of the Line',7+(52/60),6);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (55,'Broken Beat & Scarred',6+(25/60),6);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (56,'The Day That Never Comes',7+(56/60),6);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (57,'All Nightmare Long',7+(58/60),6);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (58,'Cyanide',6+(40/60),6);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (59,'The Unforgiven III',7+(47/60),6);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (60,'The Judas Kiss',8+(01/60),6);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (61,'Suicide & Redemption',9+(58/60),6);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (62,'My Apocalypse',5+(01/60),6);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (63,'Shamayim',1+(53/60),7);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (64,'Firmament',7+(29/60),7);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (65,'The First Commandment of the Luminaries',6+(47/60),7);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (66,'Ptolemy Was Wrong',6+(28/60),7);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (67,'Metaphysics of the Hangman',5+(41/60),7);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (68,'Catharsis of a Heretic',2+(08/60),7);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (69,'Swallowed by the Earth',4+(59/60),7);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (70,'Epiphany',3+(37/60),7);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (71,'The Origin of Species',7+(23/60),7);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (72,'The Origin of God',4+(33/60),7);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (73,'Epipelagic',1+(12/60),8);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (74,'Mesopelagic: Into the Uncanny',5+(56/60),8);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (75,'Bathyalpelagic I: Impasses',4+(24/60),8);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (76,'Bathyalpelagic II: The Wish in Dreams',3+(18/60),8);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (77,'Bathyalpelagic III: Disequilibrated',4+(27/60),8);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (78,'Abyssopelagic I: Boundless Vasts',3+(27/60),8);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (79,'Abyssopelagic II: Signals of Anxiety',5+(05/60),8);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (80,'Hadopelagic I: Omen of the Deep',1+(07/60),8);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (81,'Hadopelagic II: Let Them Believe',9+(17/60),8);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (82,'Demersal: Cognitive Dissonance',9+(05/60),8);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (83,'Benthic: The Origin of Our Wishes',5+(55/60),8);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (84,'Anthropocentric',9+(24/60),9);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (85,'The Grand Inquisitor I: Karamazov Baseness',5+(02/60),9);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (86,'She Was the Universe',5+(39/60),9);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (87,'For He That Wavereth...',2+(07/60),9);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (88,'The Grand Inquisitor II: Roots & Locusts',6+(33/60),9);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (89,'The Grand Inquisitor III: A Tiny Grain of Faith',1+(56/60),9);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (90,'Sewers of the Soul',3+(44/60),9);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (91,'Wille zum Untergang',6+(03/60),9);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (92,'Heaven TV',5+(04/60),9);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (93,'The Almightiness Contradiction',4+(34/60),9);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (94,'The Reckoning',4+(11/60),10);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (95,'Endless War',4+(09/60),10);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (96,'Raise Your Banner',5+(34/60),10);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (97,'Supernova',5+(34/60),10);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (98,'Holy Ground',4+(10/60),10);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (99,'In Vain',4+(25/60),10);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (100,'Firelight',4+(46/60),10);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (101,'Mad World',4+(57/60),10);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (102,'Mercy Mirror',3+(49/60),10);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (103,'Trophy Hunter',5+(51/60),10);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (104,'Why Not Me',0+(34/60),11);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (105,'Shot in the Dark',5+(02/60),11);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (106,'In the Middle of the Night',5+(11/60),11);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (107,'Faster',4+(23/60),11);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (108,'Fire and Ice',3+(57/60),11);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (109,'Iron',5+(40/60),11);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (110,'Where Is the Edge',3+(59/60),11);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (111,'Sinéad',4+(23/60),11);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (112,'Lost',5+(14/60),11);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (113,'Murder',4+(16/60),11);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (114,'A Demon''s Fate',5+(30/60),11);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (115,'Stairway to the Skies',5+(32/60),11);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (116,'Restless',6+(08/60),12);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (117,'Enter',7+(15/60),12);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (118,'Pearls of Light',5+(15/60),12);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (119,'Deep Within',4+(30/60),12);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (120,'Gatekeeper',6+(43/60),12);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (121,'Grace',5+(10/60),12);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (122,'Blooded',3+(38/60),12);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (123,'Candles',7+(07/60),12);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (124,'Scavenger of Human Sorrow',6+(56/60),13);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (125,'Bite the Pain',4+(29/60),13);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (126,'Spirit Crusher',6+(47/60),13);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (127,'Story to Tell',6+(34/60),13);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (128,'Flesh and the Power It Holds',8+(26/60),13);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (129,'Voice of the Soul',3+(43/60),13);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (130,'To Forgive Is to Suffer',5+(55/60),13);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (131,'A Moment of Clarity',7+(25/60),13);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (132,'Painkiller',6+(02/60),13);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (133,'Overactive Imagination',3+(30/60),14);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (134,'In Human Form',3+(57/60),14);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (135,'Jealousy',3+(41/60),14);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (136,'Trapped in a Corner',4+(14/60),14);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (137,'Nothing Is Everything',3+(19/60),14);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (138,'Mentally Blind',4+(49/60),14);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (139,'Individual Thought Patterns',4+(01/60),14);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (140,'Destiny',4+(06/60),14);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (141,'Out of Touch',4+(22/60),14);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (142,'The Philosopher',4+(13/60),14);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (143,'Flattening of Emotions',4+(28/60),15);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (144,'Suicide Machine',4+(23/60),15);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (145,'Together as One',4+(10/60),15);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (146,'Secret Face',4+(39/60),15);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (147,'Lack of Comprehension',3+(43/60),15);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (148,'See Through Dreams',4+(39/60),15);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (149,'Cosmic Sea',4+(27/60),15);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (150,'Vacant Planets',3+(52/60),15);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (151,'Stora Rövardansen',1+(33/60),16);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (152,'King',3+(44/60),16);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (153,'The Mission',4+(18/60),16);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (154,'Lifetime',4+(49/60),16);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (155,'Rain',4+(03/60),16);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (156,'She''s Alive',4+(12/60),16);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (157,'I Stand Alone',4+(44/60),16);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (158,'Starlight',4+(40/60),16);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (159,'Battery',5+(13/60),16);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (160,'If I Die in Battle',4+(46/60),17);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (161,'The Seller of Souls',3+(24/60),17);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (162,'Primo Victoria',3+(44/60),17);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (163,'Dangers in My Head',4+(05/60),17);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (164,'Black Wings of Hate',4+(41/60),17);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (165,'Bed of Nails',3+(37/60),17);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (166,'Spelled in Waters',4+(26/60),17);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (167,'Neuer Wind',3+(21/60),17);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (168,'The Higher Flight',5+(00/60),17);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (169,'Master of the Wind',6+(09/60),17);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (170,'Lost Forever',4+(44/60),18);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (171,'To Sing a Metal Song',3+(24/60),18);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (172,'One to Ten',4+(06/60),18);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (173,'I Am Human',3+(56/60),18);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (174,'My Voice',5+(30/60),18);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (175,'Rebellion',4+(05/60),18);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (176,'Last Night of the Kings',3+(52/60),18);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (177,'Tribe of Force',3+(17/60),18);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (178,'Water Fire Heaven Earth',3+(32/60),18);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (179,'Master of Puppets',8+(23/60),18);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (180,'Magic Taborea',3+(22/60),18);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (181,'Hearted',4+(00/60),18);
INSERT INTO SONGS(ID,NAME,LENGTH,ALBUM_ID) VALUES (182,'Frodo''s Dream',3+(06/60),18);

-- QUESTION 2: Select only the Names of all the Bands
SELECT NAME FROM BANDS;

-- QUESTION 3: Select the Oldest Album
SELECT * FROM ALBUMS WHERE RELEASE_YEAR IS NOT NULL ORDER BY RELEASE_YEAR LIMIT 1;

-- QUESTION 4: Get all Bands that have Albums
SELECT DISTINCT BANDS.NAME FROM ALBUMS LEFT JOIN BANDS ON ALBUMS.BAND_ID=BANDS.ID;

-- QUESTION 5: Get all Bands that have No Albums
SELECT BANDS.NAME FROM BANDS LEFT JOIN ALBUMS ON ALBUMS.BAND_ID=BANDS.ID WHERE ALBUMS.ID IS NULL;

-- QUESTION 6: Get the Longest Album
SELECT * FROM ALBUMS LEFT JOIN SONGS ON SONGS.ALBUM_ID=ALBUMS.ID;
SELECT ALBUMS.NAME, ALBUMS.RELEASE_YEAR, SUM(SONGS.LENGTH) FROM ALBUMS LEFT JOIN SONGS ON SONGS.ALBUM_ID=ALBUMS.ID
GROUP BY ALBUMS.NAME ORDER BY SUM(SONGS.LENGTH) DESC LIMIT 1;

-- QUESTION 7: Update the Release Year of the Album with no Release Year 
SELECT * FROM ALBUMS;
UPDATE ALBUMS SET RELEASE_YEAR=1986 WHERE ID=4;
SELECT * FROM ALBUMS;

-- QUESTION 8: Insert a record for your favorite Band and one of their Albums
INSERT INTO BANDS(ID, NAME) VALUES (8, 'Favortie Band');
INSERT INTO ALBUMS(ID,NAME,RELEASE_YEAR,BAND_ID) VALUES(19, 'Kavir e Bavar', 1999,8);

-- QUESTION 9: Delete the Band and Album you added in #8
DELETE FROM ALBUMS WHERE ID=19;
DELETE FROM BANDS WHERE ID=8;

-- QUESTION 10: Get the Average Length of all Songs
SELECT AVG(LENGTH) AS 'Average song duration' FROM SONGS;

-- QUESTION 11: Select the longest Song of each Album
SELECT * FROM SONGS LEFT JOIN ALBUMS ON SONGS.ALBUM_ID=ALBUMS.ID;
SELECT ALBUMS.NAME AS 'Album', SONGS.NAME AS 'Song', ALBUMS.RELEASE_YEAR, MAX(SONGS.LENGTH) AS 'Duration' 
FROM SONGS LEFT JOIN ALBUMS ON SONGS.ALBUM_ID=ALBUMS.ID GROUP BY ALBUMS.NAME;

-- QUESTION 12: Get the number of Songs for each Band
SELECT * FROM SONGS LEFT JOIN ALBUMS ON SONGS.ALBUM_ID=ALBUMS.ID LEFT JOIN BANDS ON ALBUMS.BAND_ID=BANDS.ID;
SELECT BANDS.NAME, COUNT(BANDS.NAME) FROM SONGS LEFT JOIN ALBUMS ON SONGS.ALBUM_ID=ALBUMS.ID LEFT JOIN BANDS ON ALBUMS.BAND_ID=BANDS.ID
GROUP BY BANDS.NAME;