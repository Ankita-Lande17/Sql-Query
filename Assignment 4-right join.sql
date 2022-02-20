

select Employee.EmployeeId,Employee.FirstName,EmployeeDetail.Salary,EmployeeDetail.Age
  from ( Employee right join EmployeeDetail on Employee.EmployeeId = EmployeeDetail.EmployeeId)


  select Employee.EmployeeId,Employee.FirstName,EmployeeDetail.Salary,EmployeeDetail.Age
  from ( Employee right join EmployeeDetail on Employee.EmployeeId = EmployeeDetail.EmployeeId)
  ORDER BY Salary 

