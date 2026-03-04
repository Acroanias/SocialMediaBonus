DROP DATABASE IF EXISTS SocialMediaDB;
CREATE DATABASE SocialMediaDB;
USE SocialMediaDB;


-- CREATE TABLE Users (
--     username VARCHAR(50) PRIMARY KEY,
--     password VARCHAR(255) NOT NULL
-- );

-- INSERT INTO Users (username, password)
-- VALUES ('tisha', '12345');

-- INSERT INTO Users (username, password)
-- VALUES ('student1', 'pass123');

-- CREATE TABLE UserDetails (
--     username VARCHAR(50) PRIMARY KEY,
--     full_name VARCHAR(100),
--     email VARCHAR(100),
--     city VARCHAR(50),
--     FOREIGN KEY (username) REFERENCES Users(username)
-- );

-- INSERT INTO UserDetails (username, full_name, email, city)
-- VALUES ('tisha', 'Sirazum Tisha', 'tisha@email.com', 'Orlando');

-- INSERT INTO UserDetails (username, full_name, email, city)
-- VALUES ('student1', 'John Miller', 'john@email.com', 'Miami');


-- select * from Users, UserDetails where Users.username = UserDetails.username;

-- -- natural join
-- select * from Users natural join UserDetails;

-- -- catersian
-- select * from Users, UserDetails;

-- -- inner join/ join

-- select * from Users join UserDetails on Users.username=UserDetails.username;
--  








-- SELECT * FROM Users Natural JOIN UserDetails;

-- SELECT * FROM Users JOIN UserDetails using (username);

-- SELECT * FROM Users JOIN UserDetails ON Users.username = UserDetails.username;

CREATE TABLE Users (
    username VARCHAR(50) PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    created_at DATE
);

INSERT INTO Users (username, password,created_at)
VALUES ('tisha', '12345','2024-01-01');

INSERT INTO Users (username, password,created_at)
VALUES ('student1', 'pass123','2024-02-01');

CREATE TABLE UserDetails (
    username VARCHAR(50) PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50),
    created_at DATE,
    FOREIGN KEY (username) REFERENCES Users(username)
);

INSERT INTO UserDetails (username, full_name, email, city,created_at)
VALUES ('tisha', 'Sirazum Tisha', 'tisha@email.com', 'Orlando','2024-01-01');

INSERT INTO UserDetails (username, full_name, email, city,created_at)
VALUES ('student1', 'John Miller', 'john@email.com', 'Miami','2024-02-01');

Select * from Users join UserDetails on Users.username=UserDetails.username;

-- using 
Select * from Users inner join UserDetails using (username);


