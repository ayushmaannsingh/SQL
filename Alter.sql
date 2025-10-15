CREATE DATABASE insta;

USE insta;  

CREATE TABLE insta (
   id INT,
   age INT,
   name VARCHAR(30) NOT NULL,
   email VARCHAR(50) UNIQUE,
   followers INT DEFAULT 0,
   following INT ,
   CONSTRAINT CHECK (age >= 13),
   PRIMARY KEY (id)
);

 INSERT INTO insta 
  (id, age, name, email, followers, following)
  VALUES
  (1, 20, "Akash", "akash@gmail.com", 500, 50),
  (2, 21, "Golu", "golu@gmail.com", 400, 80),
  (3, 19, "Bholu", "bholu@gmail.com", 450, 70),
  (4, 18, "Raj", "raj@gmail.com", 350 , 200);
  

ALTER TABLE insta
ADD COLUMN city VARCHAR(25) DEFAULT "Bhopal";

ALTER TABLE insta 
DROP COLUMN age;

ALTER TABLE instaUSER
RENAME TO insta;

ALTER TABLE insta
CHANGE COLUMN followers subscribe INT DEFAULT 0;

ALTER TABLE insta
MODIFY subscribe INT DEFAULT 5;

  INSERT INTO insta 
  (id, name, email, following)
  VALUES
  (8,  "saurav", "saurav@gmail.com",  300);

SELECT * FROM insta;