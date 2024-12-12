#1. Get all the names of students in the database
 SELECT name FROM students;


#2. Get all the data of students above 30 years old
 SELECT * FROM students WHERE Age>30;

#3. Get the names of the females who are 30 years old
SELECT Name FROM students WHERE Gender='F'  and Age>30;

#4. Get the number of Points of **Alex**
SELECT Points FROM students WHERE Name='Alex';

#5. Add yourself as a new student (your name, your age...)
INSERT Into students VALUES (NULL , 'Nour' , '19' ,'F' , 500);

#6. Increase the points of **Basma** because she solved a new exercice
UPDATE students  Set  Points=Points+50 Where Name='Basma';


#7. Decrease the points of **Alex** because he's late today
UPDATE students  Set  Points=Points-50 Where Name='Alex';
