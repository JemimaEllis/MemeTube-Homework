DROP TABLE IF EXISTS meme;

CREATE TABLE meme (
	id SERIAL PRIMARY KEY,
	title VARCHAR,
	description TEXT,
	url VARCHAR,
	genre VARCHAR
);


INSERT INTO meme (title, description, url, genre) VALUES ('The Lazy Song', 'By Bruno Mars, released in 2010', 'fLexgOxsZu0', 'music video');
INSERT INTO meme (title, description, url, genre) VALUES ('Rihanna - Diamonds', 'description 2', 'HnImthnsU7w', 'music video');

