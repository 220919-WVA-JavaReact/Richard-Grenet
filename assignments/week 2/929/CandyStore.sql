CREATE TABLE inventory(
	ID int PRIMARY KEY,
	"name" varchar(50),
	price float,
	description varchar(100),
	quantity int
);

INSERT INTO inventory VALUES
	(1001, 'Hershey Bar', 3.45, 'A small chocolate bar', 50),
	(1002, 'Skittles', 3.05, 'A bag of rainbow colored candies', 100),
	(2003, 'Gummy Bears', 5.55, 'A large bag of chewy fruit-flavored bears', 48),
	(2005, 'Sour Gummy Worms', 9.55, 'A very large bag of gelatin worms', 20),
	(3008, 'Lollipop', 2.25, 'A hard candy atop a stick', 268),
	(9007, 'M&Ms', 1.95, 'A bag of small chocolate candies', 58);
	

SELECT * FROM inventory;

UPDATE inventory SET quantity=48 WHERE ID=1001;

SELECT description FROM inventory;

SELECT "name", price FROM inventory;

UPDATE inventory SET description='A very large, delicious bag of worms' WHERE ID=2005;

UPDATE inventory SET quantity=100 WHERE ID=9007;

UPDATE inventory SET price=2.50 WHERE ID=3008;

CREATE TABLE employees(
	ID int PRIMARY KEY,
	"name" varchar(30),
	"favorite_candy" int REFERENCES inventory
);

INSERT INTO employees (ID, "name", favorite_candy) VALUES
	(4001, 'Willy Wonka', 2005),
	(4002, 'Milton Hershey', 1001),
	(4003, 'Franklin Mars', 9007),
	(4004, 'John Cadbury', NULL);

SELECT employees."name", inventory."name" FROM employees LEFT JOIN inventory ON employees.favorite_candy=inventory.ID;

SELECT employees."name", inventory."name" FROM employees RIGHT JOIN inventory ON employees.favorite_candy=inventory.ID;

SELECT quantity*price FROM inventory WHERE ID=9007;

SELECT "name", price FROM inventory WHERE price = (SELECT MIN(price) FROM inventory); 

SELECT "name", quantity FROM inventory WHERE quantity = (SELECT MAX(quantity) FROM inventory);

SELECT * FROM inventory ORDER BY price DESC LIMIT 3;

SELECT SUM(price)/count(*) FROM inventory







