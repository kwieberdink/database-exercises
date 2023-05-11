use ad_lister_db;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(70),
    password VARCHAR(70),
    PRIMARY KEY (id)
);

INSERT INTO users (email,password)
VALUES
    ('john.doe@example.com', 'abc123'),
    ('jane.doe@example.com', 'def456'),
    ('bob.smith@example.com', 'ghi789'),
    ('sarah.jones@example.com', 'jkl012'),
    ('alex.wang@example.com', 'mno345'),
    ('emma.liu@example.com', 'pqr678'),
    ('david.chen@example.com', 'stu901'),
    ('sophia.garcia@example.com', 'vwx234'),
    ('jackson.wilson@example.com', 'yz567'),
    ('anna.nguyen@example.com', '123abc'),
    ('max.taylor@example.com', '456def'),
    ('kate.harris@example.com', '789ghi'),
    ('andrew.miller@example.com', '012jkl'),
    ('lily.jackson@example.com', '345mno'),
    ('oliver.brown@example.com', '678pqr');

DROP TABLE IF EXISTS advert;

CREATE TABLE advert (
       id INT NOT NULL AUTO_INCREMENT,
       title VARCHAR(70),
       description VARCHAR(200),
       category VARCHAR(70),
       user_id INT NOT NULL,
       PRIMARY KEY (id),
       CONSTRAINT advert_users_fk FOREIGN KEY (id) REFERENCES users(id),
       CONSTRAINT advert_categories_fk FOREIGN KEY (id) REFERENCES categories(id)
);

CREATE TABLE categories (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(70),
    PRIMARY KEY (id)
);