#1. Get all the names of students in the database
 SELECT name FROM students;


#2. Get all the data of students above 30 years old
 SELECT * FROM students WHERE Age>30;

#3. Get the names of the females who are 30 years old
SELECT Name FROM students WHERE Gender='F'  and Age>30;

#4. Get the number of Points of **Alex**
SELECT Points FROM students WHERE Name='Alex';

#5. Add yourself as a new student (your name, your age...)
INSERT Into students VALUES (NULL , 'Nour' , '19' ,'F' , 600);

#6. Increase the points of **Basma** because she solved a new exercice
UPDATE students  Set  Points=Points+50 Where Name='Basma';


#7. Decrease the points of **Alex** because he's late today
UPDATE students  Set  Points=Points-50 Where Name='Alex';

### Creating Table
CREATE TABLE graduates (
   ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
   Name TEXT NOT NULL UNIQUE,
   Age INTEGER,
   Gender TEXT,
   Points INTEGER,
   Graduation TEXT
);

#10. Copy Layal's data from **students** to **graduates**

INSERT INTO graduates (ID, Name,  Age,Gender, Points)
SELECT ID, Name,  Age,Gender, Points
FROM students
WHERE name="Layal";

#11. Add the graduation date previously mentioned to Layal's record in **graduates**
UPDATE graduates
SET Graduation = '2018/09/18'
WHERE Graduation IS NULL;

#12. Remove Layal's record from **students**
DELETE FROM students
WHERE Name = 'Layal';

### Joins
#14. Produce a table that contains, for each employee, his/her name, company name, and company date.
SELECT 
  employees.ID,
  employees.Name,
  companies.Name,
  companies.Date
FROM 
   employees
 JOIN 
    companies
ON 
    employees.Company = companies.Name;

 #15. Find the name of **employees** that work in companies made before 2000.  
   SELECT 
    employees.Name 
FROM 
    employees
JOIN 
    companies 
ON 
    employees.Company = companies.Name
WHERE 
    companies.Date < 2000;

 #16. Find the name of company that has a graphic designer.
 SELECT 
    companies.Name
FROM 
    companies
JOIN 
    employees 
ON 
    employees.Company = companies.Name
WHERE 
    employees.Role="Graphic Designer";


  
