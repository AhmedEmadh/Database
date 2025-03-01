-- Query (54)
-- Get All Employees managed by 'Mohammed'
select Employees.Name,Employees.ManagerID,Employees.Salary,Managers.Name AS ManagerName from Employees
INNER JOIN Employees AS Managers ON Employees.ManagerID = Managers.EmployeeID
WHERE Managers.Name = 'Mohammed';
