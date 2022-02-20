
select * from Employee

select * from EmployeeDetail

select Employee.EmployeeId,Employee.FirstName,Employee.City,Employee.DOB,EmployeeDetail.Salary,EmployeeDetail.Age,EmployeeDetail.Email 
  from ( Employee inner join EmployeeDetail on Employee.EmployeeId = EmployeeDetail.EmployeeId)

  select Employee.EmployeeId,Employee.FirstName,Employee.City,Employee.DOB,EmployeeDetail.Salary,EmployeeDetail.Age,EmployeeDetail.Email 
  from ( Employee inner join EmployeeDetail on Employee.EmployeeId = EmployeeDetail.EmployeeId)
  where Salary>=40000 or City='Pune'; 