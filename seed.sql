DROP TABLE IF EXISTS meme;

CREATE TABLE meme (
	id SERIAL PRIMARY KEY,
	title VARCHAR,
	description TEXT,
	url VARCHAR,
	genre VARCHAR
);


INSERT INTO meme (title, description, url, genre) VALUES ('title 1', 'description 1', 'url 1', 'genre 1');
INSERT INTO meme (title, description, url, genre) VALUES ('title 2', 'description 2', 'url 2', 'genre 2');

