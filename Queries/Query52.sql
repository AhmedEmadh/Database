-- Query (52)
-- Get all employees that have manager or does not have manager along with Manager's name, incase no manager name show null
select Employees.Name,Employees.ManagerID,Employees.Salary,Managers.Name AS ManagerName from Employees
LEFT JOIN Employees AS Managers ON Employees.ManagerID = Managers.EmployeeID;
