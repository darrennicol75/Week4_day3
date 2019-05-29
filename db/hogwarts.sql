DROP TABLE students;

CREATE TABLE students(
  id serial4 PRIMARY KEY,
  first_name VARCHAR (255),
  second_name VARCHAR (255),
  house VARCHAR (255),
  age INT2
  house_id INT4 REFERENCES houses(id)
);

CREATE TABLE houses(
  id serial4 PRIMARY KEY,
  name VARCHAR (255),
  url VARCHAR (255),
);
