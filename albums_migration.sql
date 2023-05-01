USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    album_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(35) NOT NULL,
    name VARCHAR(65) NOT NULL,
    release_date INT NOT NULL,
    sales FLOAT NOT NULL,
    genre VARCHAR(65) NOT NULL,
    PRIMARY KEY (album_id)
)