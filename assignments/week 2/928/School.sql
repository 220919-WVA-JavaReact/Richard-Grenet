CREATE TABLE topics (
	topicid serial PRIMARY KEY,
	"name" varchar(10)
);

CREATE TABLE courses (
	title varchar(30) PRIMARY KEY,
	coursenumber int,
	currentteacher int REFERENCES teachers UNIQUE,
	generaltopic int REFERENCES topics
);

CREATE TABLE teachers (
	teacherid serial PRIMARY KEY,
	"name" varchar(30),
	phonenumber varchar(11),
	email varchar(30)
);

CREATE TABLE students (
	id serial PRIMARY KEY,
	"name" varchar(30),
	phonenumber varchar(11),
	email varchar(30),
	gradeavg int,
	bestclass varchar(30) REFERENCES courses
);

CREATE TABLE student_courses (
	studentid int REFERENCES students,
	coursetitle varchar(30) REFERENCES courses
);

INSERT INTO topics ("name") VALUES ('Math'),('History'),('English'),('Science');
INSERT INTO teachers ("name", phonenumber, email) VALUES 
	('Matthew Math', 0101010101, 'MatthewMath@fdkas.com'),
	('2ndteacher', 5555555555, 'ranoutofideas@gmail.com'),
	('Question Mark', 7777777777, 'MarkQuestion@outlook.com'),
	('sssssssssssss', 4914914914, 'sssssssssssss@snake.net');



INSERT INTO courses VALUES
	('Math 104', 104, 1, 1),
	('History 435', 435, 2, 2),
	('English 68', 68, 3, 3);

INSERT INTO students ("name", phonenumber, email, gradeavg, bestclass) VALUES 
	('charles lastname', '3040339999', 'charlesL@gmail.com', 85, 'Math 104'),
	('Guy Second', '1112222222', 'secondguy@gmail.com', 88, 'Math 104'),
	('Third Student', '1111115555', 'studentT@gmail.com', 93, 'History 435'),
	('Fourth Student', '0193815555', 'FourthThe@gmail.com', 91, 'English 68'),
	('Fives Numero', '1601893555', 'FivesNumbero@gmail.com', 79, 'Math 104')
	;
INSERT INTO student_courses VALUES
	(1,'Math 104'),
	(2,'Math 104'),
	(3,'History 435'),
	(4,'English 68'),
	(5,'Math 104'),
	(1,'History 435'),
	(2,'English 68'),
	(3,'English 68'),
	(4,'Math 104'),
	(5,'English 68');


ALTER TABLE teachers ALTER COLUMN phonenumber TYPE varchar;	


