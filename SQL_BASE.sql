CREATE DATABASE student_examination_sys;

SHOW DATABASES;

USE student_examination_sys;

CREATE TABLE student (
	id INT,
	name VARCHAR(10),
	age int,
	sex VARCHAR(1),
	PRIMARY KEY (id)
);

CREATE TABLE subject (
	id INT,
	subject VARCHAR(10),
	teacher VARCHAR(10),
	description VARCHAR(50),
	PRIMARY KEY (id)
);

CREATE TABLE score (
	id INT,
	student_id INT,
	subject_id INT,
	score FLOAT,
	PRIMARY KEY (id),
	FOREIGN KEY (student_id) REFERENCES student(id),
	FOREIGN KEY (subject_id) REFERENCES subject(id)
);

INSERT INTO student VALUES
	(001, '张三', 18, '男'),
	(002, '李四', 20, '女');
	
INSERT INTO subject VALUES
	(1001, '语文', '王老师', '本次考试比较简单'),
	(1002, '数学', '刘老师', '本次考试比较难');
	
INSERT INTO score VALUES
	(1, 1, 1001, 80),
	(2, 1, 1002, 60),
	(3, 1, 1001, 70),
	(4, 1, 1002, 60.5);
	
SELECT * FROM student;
SELECT * FROM subject;
SELECT * FROM score;