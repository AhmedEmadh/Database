-- Query (53)
-- Get all employees that have manager or does not have manager along with Manager's name, incase no manager name the same employee name as manager to himself
select Employees.Name,Employees.ManagerID,Employees.Salary,(
															CASE
															WHEN Managers.Name IS NOT NULL THEN Managers.Name
															ELSE Employees.Name
															END
															) AS ManagerName from Employees
LEFT JOIN Employees AS Managers ON Employees.ManagerID = Managers.EmployeeID;
