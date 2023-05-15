use adlister_db;

CREATE TABLE users (
                       id INT NOT NULL AUTO_INCREMENT,
                       username VARCHAR(255) NOT NULL,
                       email VARCHAR(255) NOT NULL,
                       password VARCHAR(255) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE ads (
                     id INT NOT NULL AUTO_INCREMENT,
                     title VARCHAR(255) NOT NULL,
                     description TEXT NOT NULL,
                     user_id INT NOT NULL,
                     PRIMARY KEY (id),
                     FOREIGN KEY (user_id) REFERENCES users(id)
);

SHOW TABLES;

DESCRIBE ads;
DESCRIBE users;

INSERT INTO users (username, email, password)
VALUES
    ('john', 'john@example.com', 'password123'),
    ('mary', 'mary@example.com', '12345678'),
    ('alice', 'alice@example.com', 'secret'),
    ('bob', 'bob@example.com', 'mypassword'),
    ('sarah', 'sarah@example.com', 'ilovecats');

DESCRIBE users;

SELECT * FROM users;

INSERT INTO ads (user_id, title, description)
VALUES
    (1, 'For Sale: iPhone 12 Pro Max', 'Selling my iPhone 12 Pro Max. It''s in great condition and comes with the original box and accessories.'),
    (2, 'Apartment for Rent', 'Spacious 2-bedroom apartment for rent. Located in a great neighborhood with lots of amenities nearby.'),
    (3, 'Wanted: Roommate for 2BR Apartment', 'Looking for a roommate to share my 2-bedroom apartment. Rent is $800/month and includes all utilities.'),
    (4, 'Guitar Lessons for Beginners', 'Learn how to play guitar with a professional instructor. Lessons are $50/hour and can be scheduled online.'),
    (5, 'Graphic Design Services Available', 'Need a logo or business card designed? I offer professional graphic design services at an affordable price.'),
    (1, 'MacBook Pro for Sale', 'Selling my MacBook Pro. It''s in excellent condition and has been well taken care of. Comes with charger.'),
    (1, 'Graphic Design Services Available', 'Need a new logo or website designed? I offer professional graphic design services at a reasonable price.'),
    (2, 'Car for Sale', 'Selling my Toyota Corolla. It''s in good condition and has low mileage. Asking price is $10,000.'),
    (3, 'Room for Rent in Downtown Apartment', 'I have a room available in my downtown apartment. Rent is $1,200/month and includes all utilities.'),
    (4, 'Personal Training Services', 'Looking to get in shape? I offer one-on-one personal training sessions tailored to your needs and goals.'),
    (5, 'House Cleaning Services Available', 'Need your house cleaned? I offer professional cleaning services at an affordable price.');

DESCRIBE ads;

SELECT * FROM ads;

INSERT INTO users (username, email, password)
VALUES ('jane', 'jane@example.com', 'mypassword123');

SELECT * FROM users;

INSERT INTO ads (user_id, title, description)
VALUES (6, 'Couch for Sale', 'Selling my couch. It''s in great condition and comes from a smoke-free home.'),
       (6, 'Babysitting Services Available', 'Need a babysitter for your little ones? I offer reliable and affordable babysitting services. Contact me for more information.');

SELECT * FROM ads;
