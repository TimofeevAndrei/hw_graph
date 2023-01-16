CREATE TABLE IF NOT EXISTS genre (
	genre_id SERIAL PRIMARY key,
	name VARCHAR(80) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS artist (
	artist_id SERIAL PRIMARY key,
	name VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS album (
	album_id SERIAL PRIMARY key,
	name VARCHAR(80) NOT null,
	relese_date INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS song (
	song_id SERIAL PRIMARY key,
	duration NUMERIC(3,2) NOT null,
	name VARCHAR(80) NOT null,
	album INTEGER REFERENCES album(album_id) NOT NULL
);

CREATE TABLE IF NOT EXISTS collection (
	collection_id SERIAL PRIMARY key,
	date INTEGER NOT null,
	name VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS collection_list (
	collection_id INTEGER REFERENCES collection(collection_id),
	song_id INTEGER REFERENCES song(song_id),
	constraint id_coll PRIMARY KEY (song_id, collection_id)
);

CREATE TABLE IF NOT EXISTS author_list (
	artist_id INTEGER REFERENCES artist(artist_id),
	album_id INTEGER REFERENCES album(album_id),
	constraint id_author PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS genre_list (
	artist_id INTEGER REFERENCES artist(artist_id),
	genre_id INTEGER REFERENCES genre(genre_id),
	constraint id_genlist PRIMARY KEY (artist_id, genre_id)
);
