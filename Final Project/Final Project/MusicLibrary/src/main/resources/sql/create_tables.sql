CREATE TABLE IF NOT EXISTS artist (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS genre (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS album (
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(255),
artist_id INT,
FOREIGN KEY (artist_id) REFERENCES artist(id)
);

CREATE TABLE IF NOT EXISTS song (
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(255),
artist_id INT,
album_id INT,
FOREIGN KEY (artist_id) REFERENCES artist(id),
FOREIGN KEY (album_id) REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS song_genre (
song_id INT,
genre_id INT,
PRIMARY KEY (song_id, genre_id),
FOREIGN KEY (song_id) REFERENCES song(id),
FOREIGN KEY (genre_id) REFERENCES genre(id)
);

CREATE TABLE IF NOT EXISTS album_genre (
album_id INT,
genre_id INT,
PRIMARY KEY (album_id, genre_id),
FOREIGN KEY (album_id) REFERENCES album (id),
FOREIGN KEY (genre_id) REFERENCES genre (id)
);

CREATE TABLE IF NOT EXISTS user (
id INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(255),
password VARCHAR(255),
email VARCHAR(255),
first_name VARCHAR(255),
last_name VARCHAR(255),
created_at TIMESTAMP,
updated_at TIMESTAMP
);