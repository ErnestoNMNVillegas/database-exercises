USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(75) NOT NULL,
                        name  VARCHAR(75) NOT NULL,
                        release_date  INT NOT NULL,
                        sales FLOAT UNSIGNED NOT NULL,
                        genre VARCHAR(75) NOT NULL,
                        PRIMARY KEY (id)
);
