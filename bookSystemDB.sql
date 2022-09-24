CREATE database bookSystem;
use bookSystem;
DROP table booksystem;
SELECT * from bookSystem;

CREATE TABLE bookSystem (
	id int NOT null AUTO_INCREMENT,
    email varchar(250),
    `password` varchar(250),
    `name` varchar(250),
    PRIMARY KEY (id)
);

DELETE FROM booksystem 
WHERE id is NULL;

INSERT INTO bookSystem (email,`password`,`name`)
VALUES ("jonas@gmail.com","jonas123","jonas"),
("robert@gmail.com","robert123","robert"),
("robb@gmail.com","robb123","robb"),
("stepen@gmail.com","stepen123","stepen");
