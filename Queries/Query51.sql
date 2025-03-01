 
-- Query (51)
-- Get all employees that have manager along with Manager's name.
/* Solution 1 */
select E1.Name,E1.ManagerID,E1.Salary,E2.Name AS ManagerName from Employees E1
INNER JOIN Employees E2 ON E1.ManagerID = E2.EmployeeID
/* Solution2 */
select Employees.Name,Employees.ManagerID,Employees.Salary,Managers.Name AS ManagerName from Employees
INNER JOIN Employees AS Managers ON Employees.ManagerID = Managers.EmployeeID;
