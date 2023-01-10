CREATE TABLE IF NOT EXISTS genre (
	genre_id INTEGER PRIMARY KEY,
	name VARCHAR(80) UNIQUE NOT NULL,
);

CREATE TABLE IF NOT EXISTS artist (
	artist_id INTEGER PRIMARY KEY,
	genre VARCHAR(80) NOT NULL,
);

CREATE TABLE IF NOT EXISTS album (
	album_id INTEGER PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	relese_date VARCHAR(80) NOT NULL,
);

CREATE TABLE IF NOT EXISTS song (
	song_id INTEGER PRIMARY KEY,
	duration VARCHAR(80) NOT NULL,
	album VARCHAR(80) FOREIGN KEY REFERENCES album(album_id) NOT NULL,
);

CREATE TABLE IF NOT EXISTS collection (
	collection_id INTEGER PRIMARY KEY,
	date VARCHAR(80) NOT NULL,
	name VARCHAR(80) NOT NULL,
);

CREATE TABLE IF NOT EXISTS collection_list (
	song_id INTEGER FOREIGN KEY REFERENCES song(song_id),
	collection_id INTEGER FOREIGN KEY REFERENCES collection(collection_id),
	constraint id PRIMARY KEY (song_id, collection_id)
);

CREATE TABLE IF NOT EXISTS author_list (
	artist_id INTEGER FOREIGN KEY REFERENCES artist(artist_id),
	album_id INTEGER FOREIGN KEY REFERENCES album(album_id),
	constraint id PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS genre_list (
	artist_id INTEGER FOREIGN KEY REFERENCES artist(artist_id),
	genre_id INTEGER FOREIGN KEY REFERENCES genre(genre_id),
	constraint id PRIMARY KEY (artist_id, genre_id)
);