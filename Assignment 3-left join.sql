

select Employee.EmployeeId,Employee.FirstName,Employee.City,EmployeeDetail.Salary,EmployeeDetail.Age,EmployeeDetail.Email 
  from ( Employee left join EmployeeDetail on Employee.EmployeeId = EmployeeDetail.EmployeeId)

  

select Employee.FirstName,Employee.City,Employee.DOB,EmployeeDetail.Age
  from ( Employee left join EmployeeDetail on Employee.EmployeeId = EmployeeDetail.EmployeeId)
  where DOB<'2000-04-30';