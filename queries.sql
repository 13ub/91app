CREATE TABLE movies (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    genre TEXT,
    year INTEGER,
    imdb_rating REAL
);

SELECT * FROM movies;

INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES
(1, 'Avatar', 'action', 2009, 7.9),
(2, 'Jurassic World', 'action', 2015, 7.3),
(3, 'The Avengers', 'action', 2012, 8.1),
(4, 'The Dark Knight', 'action', 2008, 9.0),
(5, 'Star Wars: Episode I - The Phantom Menace', 'action', 1999, 6.6),
(6, 'Star Wars', 'action', 1977, 8.7),
(7, 'Avengers: Age of Ultron', 'action', 2015, 7.9),
(8, 'The Dark Knight Rises', 'action', 2012, 8.5),
(9, 'Pirates of the Caribbean: Dead Mans Chest', 'action', 2006, 7.3),
(10, 'Iron Man 3', 'action', 2013, 7.3);

INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES
(11, 'Inception', 'action', 2010, 8.8),
(12, 'The Matrix', 'action', 1999, 8.7),
(13, 'Interstellar', 'drama', 2014, 8.6),
(14, 'The Lion King', 'drama', 1994, 8.5),
(15, 'Toy Story', 'comedy', 1995, 8.3),
(16, 'Frozen', 'comedy', 2013, 7.6),
(17, 'The Conjuring', 'horror', 2013, 7.5),
(18, 'The Shining', 'horror', 1980, 8.4),
(19, 'Titanic', 'romance', 1997, 7.8),
(20, 'Forrest Gump', 'romance', 1994, 8.8);


SELECT name, genre ,year
FROM movies;

SELECT DISTINCT year 
FROM movies;

SELECT * 
FROM movies 
WHERE year > 2014 ;

SELECT * 
FROM movies
WHERE name LIKE 'The %';

SELECT *
FROM movies
WHERE year BETWEEN 1970 AND 1979;

SELECT *
FROM movies
WHERE year < 1985
  AND genre = 'horror';
  
SELECT *
FROM movies
WHERE genre = 'romance'
   OR genre = 'comedy';
   
SELECT name, year , imdb_rating
FROM movies
ORDER BY imdb_rating DESC;

SELECT *
FROM movies
ORDER BY imdb_rating DESC
LIMIT 3;

SELECT name,
 CASE
  WHEN genre = 'romance' THEN 'Chill'
  WHEN genre = 'comedy'  THEN 'Chill'
  ELSE 'Intense'
 END AS 'Mood'
FROM movies;


