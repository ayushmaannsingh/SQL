CREATE DATABASE instagram;

USE instagram;  

CREATE TABLE user (
   id INT,
   age INT,
   name VARCHAR(30) NOT NULL,
   email VARCHAR(50) UNIQUE,
   followers INT DEFAULT 0,
   following INT ,
   CONSTRAINT CHECK (age >= 13),
   PRIMARY KEY (id)
);

  
  INSERT INTO user 
  (id, age, name, email, followers, following)
  VALUES
  (1, 20, "Ayush", "ayush@gmail.com", 500, 50),
  (2, 21, "Suman", "suman@gmail.com", 400, 80),
  (3, 19, "Ashutosh", "ashu@gmail.com", 450, 70),
  (4, 18, "Harsh", "harsh@gmail.com", 350 , 200),
  (5, 22, "Prince", "prince@gmail.com", 300, 250);
  
  SELECT * FROM user;
  
  
  
CREATE TABLE post (
  id INT PRIMARY KEY,
  content VARCHAR(100),
  user_id INT,
  FOREIGN KEY (user_id) REFERENCES user(id)
  );