use EMP

create table EmployeeDetail
(
 EmployeeDetailId int IDENTITY(1,1) Primary key,
 EmployeeId int,
 Salary int NOT NULL,
 Age int NOT NULL,
 Email nvarchar(50) NOT NULL
 FOREIGN KEY (EmployeeId)
 REFERENCES Employee(EmployeeId)
);

Select * from EmployeeDetail

Insert into EmployeeDetail Values (1,25000,22,'ankita@gmail.com');

select top 10 * from Employee

select top 10 * from EmployeeDetail

select count (Distinct Salary) from EmployeeDetail

select * from EmployeeDetail where EmployeeId=10 AND Age=21;

select * from EmployeeDetail where EmployeeId=4 OR Salary=30000

select Age, Salary from EmployeeDetail where EXISTS (select FirstName from Employee where state='Maharashtra') 

select DISTINCT * from EmployeeDetail ORDER BY EmployeeDetailId DESC

select MIN (Salary) from EmployeeDetail

select MIN(Age) from EmployeeDetail
 

select MIN(Salary),EmployeeId from EmployeeDetail GROUP BY EmployeeId

select MIN(Salary),EmployeeId from EmployeeDetail GROUP BY EmployeeId Having MIN(Salary)=30000

select MAX(Age) from EmployeeDetail

select MAX(Salary) from EmployeeDetail
 

select MAX(Salary),EmployeeId from EmployeeDetail GROUP BY EmployeeId

select MAX(Salary),EmployeeId from EmployeeDetail GROUP BY EmployeeId Having MAX(Salary)>=60000

SELECT * FROM Employee WHERE FirstName LIKE '%a';

SELECT * FROM Employee WHERE LastName LIKE '%a';

SELECT * FROM Employee WHERE FirstName LIKE 'a%a';

SELECT COUNT(Age) FROM EmployeeDetail;

SELECT AVG(Age) FROM EmployeeDetail;

SELECT SUM(Salary) FROM EmployeeDetail;

SELECT FirstName, City, DOB
FROM Employee
ORDER BY
(CASE
    WHEN City IS NULL THEN FirstName
    ELSE City
END);

SELECT EmployeeDetailId, Salary, Age,
CASE
    WHEN Age > 30 THEN 'Age is greater than 30'
    WHEN Age = 30 THEN 'Age is 30'
    ELSE 'The age is under 30'
END AS AgeRemark
FROM EmployeeDetail;




