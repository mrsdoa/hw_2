CREATE TABLE IF NOT EXISTS Genre (
genre_id SERIAL PRIMARY KEY,
name VARCHAR(40) UNIQUE NOT NULL
);
CREATE TABLE IF NOT EXISTS Singer (
singer_id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL
);
CREATE TABLE IF NOT EXISTS GenreSinger(
genre_id INTEGER REFERENCES Genre(genre_id),
singer_id INTEGER REFERENCES Singer(singer_id),
CONSTRAINT pk PRIMARY KEY(genre_id, singer_id)
);
CREATE TABLE IF NOT EXISTS Album(
album_id SERIAL PRIMARY KEY,
name VARCHAR(80) NOT NULL,
release_year INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS Song(
song_id SERIAL PRIMARY KEY,
name VARCHAR(80) NOT NULL,
lenght INTEGER,
album_id INTEGER REFERENCES Album(album_id)
);
CREATE TABLE IF NOT EXISTS Sbornik(
sbornik_id SERIAL PRIMARY KEY,
name VARCHAR(60) NOT NULL,
release_year INTEGER
);
CREATE TABLE IF NOT EXISTS AlbumSinger(
album_id INTEGER REFERENCES Album(album_id),
singer_id INTEGER REFERENCES Singer(singer_id),
CONSTRAINT pk2 PRIMARY KEY(album_id, singer_id) 
);
CREATE TABLE IF NOT EXISTS SbornikSong(
sbornik_id INTEGER REFERENCES Sbornik(sbornik_id),
song_id INTEGER REFERENCES Song(song_id),
CONSTRAINT pk3 PRIMARY KEY(sbornik_id, song_id)
);
