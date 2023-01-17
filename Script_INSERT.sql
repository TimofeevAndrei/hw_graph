INSERT INTO genre (name)
VALUES ('Pop');

INSERT INTO genre (name)
VALUES ('Rap');

INSERT INTO genre (name)
VALUES ('Rock');

INSERT INTO genre (name)
VALUES ('Dance');

INSERT INTO genre (name)
VALUES ('Classic');




INSERT INTO artist (name)
VALUES ('Breatny Spears');

INSERT INTO artist (name)
VALUES ('Eminem');

INSERT INTO artist (name)
VALUES ('Bon Jovi');

INSERT INTO artist (name)
VALUES ('Tiesto');

INSERT INTO artist (name)
VALUES ('Hans Zimmer');

INSERT INTO artist (name)
VALUES ('Snoop Dog');

INSERT INTO artist (name)
VALUES ('Gesaffelstein');

INSERT INTO artist (name)
VALUES ('Madonna');




INSERT into album (name, relese_date)
VALUES ('What You Want', 2019);

INSERT into album (name, relese_date)
VALUES ('Celebration', 2009);

INSERT into album (name, relese_date)
VALUES ('Britney', 2001);

INSERT into album (name, relese_date)
VALUES ('Revival', 2007);

INSERT into album (name, relese_date)
VALUES ('Together', 2018);

INSERT into album (name, relese_date)
VALUES ('Interstellar Tribute', 2022);

INSERT into album (name, relese_date)
VALUES ('Tha Blue Carpet Treatment', 2006);

INSERT into album (name, relese_date)
VALUES ('Aleph', 2020);




INSERT into song (duration, name, album)
VALUES (2.59, 'Front', 9);

INSERT into song (duration, name, album)
VALUES (3.30, 'Main theme', 9);

INSERT into song (duration, name, album)
VALUES (4.10, 'Ops', 10);

INSERT into song (duration, name, album)
VALUES (6.10, 'My life', 10);

INSERT into song (duration, name, album)
VALUES (7.38, 'Rock Star', 11);

INSERT into song (duration, name, album)
VALUES (2.58, 'Frozen', 11);

INSERT into song (duration, name, album)
VALUES (1.47, 'Just dance', 12);

INSERT into song (duration, name, album)
VALUES (4.10, 'Pursuit', 12);

INSERT into song (duration, name, album)
VALUES (3.15, 'Magic', 13);

INSERT into song (duration, name, album)
VALUES (4.32, 'Dragon', 13);

INSERT into song (duration, name, album)
VALUES (5.10, 'Start', 14);

INSERT into song (duration, name, album)
VALUES (7.36, 'I`am', 14);

INSERT into song (duration, name, album)
VALUES (5.14, 'First step', 15);

INSERT into song (duration, name, album)
VALUES (3.11, 'Go!', 15);

INSERT into song (duration, name, album)
VALUES (4.47, 'Hello!', 16);

INSERT into song (duration, name, album)
VALUES (3.51, 'I`am fine', 16);




INSERT into collection (date, name)
VALUES (2009, 'Hits 2009');

INSERT into collection (date, name)
VALUES (2020, 'Hits 2020');

INSERT into collection (date, name)
VALUES (2015, 'Party');

INSERT into collection (date, name)
VALUES (2022, 'Sounds');

INSERT into collection (date, name)
VALUES (2019, 'Summer');

INSERT into collection (date, name)
VALUES (2018, 'New year');

INSERT into collection (date, name)
VALUES (2020, 'Bomba');

INSERT into collection (date, name)
VALUES (2023, 'Mix');



INSERT into genre_list (artist_id, genre_id)
values
	(9, 6),
	(9, 9),
	(10, 7),
	(11, 8),
	(12, 9),
	(13, 10),
	(14, 7),
	(15, 9),
	(16, 6),
	(16, 9)
	
	

INSERT into author_list (artist_id, album_id)
values
	(9, 9),
	(9, 16),
	(10, 10),
	(11, 11),
	(12, 12),
	(13, 13),
	(14, 14),
	(15, 15),
	(16, 16)


	
INSERT into collection_list (collection_id, song_id)
values
	(1, 3),
	(2, 4),
	(3, 5),
	(4, 18),
	(5, 12),
	(6, 13),
	(7, 14),
	(8, 5),
	(1, 9),
	(2, 16),
	(3, 10),
	(4, 11),
	(5, 6),
	(6, 18),
	(7, 5)



