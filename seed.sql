DROP TABLE IF EXISTS meme;

CREATE TABLE meme (
	id SERIAL PRIMARY KEY,
	title VARCHAR,
	description TEXT,
	url VARCHAR,
	genre VARCHAR
);


INSERT INTO meme (title, description, url, genre) VALUES ('Bruno Mars - The Lazy Song', 'description 1', 'fLexgOxsZu0', 'music video');
INSERT INTO meme (title, description, url, genre) VALUES ('Rihanna - Diamonds', 'description', 'HnImthnsU7w', 'music video');

