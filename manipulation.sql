CREATE DATABASE my_database;
USE my_database;
CREATE TABLE celebs (
    id INT PRIMARY KEY, 
    name VARCHAR(50),    
    age INT             
);

INSERT INTO celebs (id, name, age) VALUES
(1, 'Justin Bieber', 29),
(2, 'Beyonce Knowles', 42),
(3, 'Jeremy Lin', 35),
(4, 'Taylor Swift', 33);

SELECT * FROM celebs;
SELECT name FROM celebs;

ALTER TABLE celebs
ADD COLUMN twitter_handle TEXT;

 UPDATE celebs
 SET twitter_handle = '@taylorswift13'
 WHERE id = 4;


