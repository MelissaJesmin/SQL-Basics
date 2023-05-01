--Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)
CREATE TABLE person(
  id SERIAL PRIMARY KEY,
  name VARCHAR(30),
  age INTEGER,
  height FLOAT,
  city VARCHAR(30),
  favorite_color VARCHAR(30));

INSERT INTO person(name,age,height,city,favorite_color)
VALUES('Maria',20,157.48,'NYC','blue'),
('John',40,170.18,'Chicago','red'),
('Amanda',18,165.09,'Seattle','green'),
('Alien',15,162.56, 'Philadelphia','purple'),
('Sam',35,172.72, 'Los Angeles','orange');

--Select all the people in the person table by height from tallest to shortest.
SELECT * FROM person
ORDER BY height DESC;

--Select all the people in the person table by height from shortest to tallest.
SELECT * FROM person
ORDER BY height ASC;

--Select all the people in the person table by age from oldest to youngest.
SELECT * FROM person
ORDER BY age DESC;

--Select all the people in the person table older than age 20.
SELECT * FROM person
WHERE age > 20;

-- Select all the people in the person table that are exactly 18.
SELECT * FROM person
WHERE age = 18;

-- Select all the people in the person table that are less than 20 and older than 30.
SELECT * FROM person
WHERE age < 20
OR age > 30;

-- Select all the people in the person table that are not 27 (use not equals).
SELECT * FROM person
WHERE age <> 27;

-- Select all the people in the person table where their favorite color is not red.
SELECT * FROM person
WHERE favorite_color <> 'red';

-- Select all the people in the person table where their favorite color is not red and is not blue.
SELECT * FROM person
WHERE favorite_color <> 'red'
AND favorite_color <> 'blue';

-- Select all the people in the person table where their favorite color is orange or green.
SELECT * FROM person
WHERE favorite_color = 'green'
OR favorite_color = 'orange';

-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM person
WHERE favorite_color IN ('orange','green','blue');

-- Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT * FROM person
WHERE favorite_color IN ('yellow','purple');
