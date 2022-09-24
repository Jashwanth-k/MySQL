CREATE Database ecommerce;
use ecommerce;

CREATE table products (
	id BIGINT auto_increment NOT NULL,
    `name` varchar(255) NOT NULL, 
    category varchar(255) NOT NULL,
    price BIGINT NOT NULL,
    createdAt DATETIME default now(),
    primary key(id)
);

CREATE table users (
	id BIGINT auto_increment NOT NULL,
    email varchar(255) NOT NULL,
    `password` varchar(255) NOT NULL,
    createdAt DATETIME default now(),
    Primary Key(id)
);

CREATE table orders (
	id BIGINt auto_increment NOT NULL,
    productID BIGINT NOT NULL,
    userID BIGINT NOT NULL,
    quantity int NOT NULL,
    createAt datetime default now(),
    payment FLOAT NOT NULL default 0,
    primary key (id),
    foreign key (productID) references products(id),
    foreign key (userID) references users(id)
);

INSERT INTO users (email,`password`)
VALUES ("abc@gmail.com","abcPassword"),
("zyx@gmail.com","xyzPassword"),
("mno@gmail.com","mnoPassword"),
("srk@gmail.com","srkPassword"),
("relevel@gmail.com","relevelPassword");

INSERT INTO products (`name`,category,price) 
VALUES ("Pixel 4a","MobilePhone",30000),
("Pixel 4","MobilePhone",34000),
("Sony Bravia","Television",40000),
("Dell","Laptop",50000),
("Lenova","Laptop",35000),
("Samsung s7","MobilePhone",70000);

INSERT INTO orders (productID,userID,quantity) 
VALUES (1,1,2),
(3,1,3),
(4,3,2),
(5,2,1),
(2,4,2);

INSERT INTO orders (productID,userID,quantity) 
VALUES (2,4,10);

-- DELETE FROM orders WHERE id = 5;
-- UPDATE orders
-- SET quantity = 10 WHERE id = 5;

-- problem 3
SELECT `password` from users 
WHERE email = "relevel@gmail.com";

-- problem 4
SELECT category,COUNT(*) as count,MAX(price) as price from products
group by category;

-- problem 5
SELECT * from products
WHERE price = (SELECT MAX(price) from products WHERE category = "MobilePhone");

-- problem 6
SELECT products.`name`,users.email,products.category,orders.quantity from users 
INNER JOIN (products,orders) ON users.id = orders.userID AND products.id = orders.productID;

-- problem 7
-- SELECT u.email,SUM(o.quantity * p.price) as totalPrice from orders o
-- INNER join (users u,products p) WHERE u.id = o.userID AND p.id = o.productID group by email;

SELECT email,MAX(totalPrice) from (SELECT u.email,SUM(o.quantity * p.price) as totalPrice from orders o
INNER join (users u,products p) WHERE u.id = o.userID AND p.id = o.productID group by u.id) as newtable;

-- problem 8
UPDATE oreders
SET quantity = quantity+1;

-- problem 9
SELECT category,COUNT(category) as count from products
group by category order by count;

-- problem 11
DELETE from orders;
DROP table orders;

SELECT * from users;
SELECT * from products;
SELECT * from orders;
 