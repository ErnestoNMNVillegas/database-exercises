USE codeup_test_db;

-- Write SELECT statements for:
-- Albums released after 1991
SELECT name 'Let us delete albums released after 1991' FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;
-- Albums with the genre 'disco'
SELECT name 'Let us delete albums with the genre disco' FROM albums WHERE genre = 'disco';
DELETE FROM albums WHERE genre = 'disco';
-- Albums by 'Whitney Houston' (...oexitr maybe an artist of your choice)
SELECT name 'Let us delete albums from the Eagles' FROM albums WHERE artist = 'Eagles';
DELETE FROM albums WHERE artist = 'Eagles';



-- SELECT 'Let''s delete the albums from before 1991!';