USE codeup_test_db;


-- The name of all albums by Pink Floyd.
-- Example given:  SELECT name AS 'Albums by Pink Floyd' FROM albums WHERE artist = 'Pink Floyd';
SELECT name 'Albums by Pink Floyd' FROM albums WHERE artist = 'Pink Floyd';
-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date 'Year Sgt. Pepper''s Lonely Hearts Club Band was released' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
-- The genre for Nevermind (Note:  Instructions asked to enter 1st two tables (over 30 mil).  Nirvana in 3rd table.)
SELECT genre 'The genre for Nevermind-See Note' FROM albums WHERE name = 'Nevermind';
-- Which albums were released in the 1990s
SELECT name 'Albums released in the 1990s' FROM albums WHERE release_date BETWEEN 1990 AND 1999;
-- Which albums had less than 20 million certified sales
SELECT name 'Albums that had less then 20mil certified sales' FROM albums WHERE sales < 20;
-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT name 'All albums with genre of Rock' FROM albums WHERE genre = 'Rock';