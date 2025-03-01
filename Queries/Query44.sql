 
-- Query (44)
-- Get Total Number Of Doors Manufactured by 'Ford'
SELECT DISTINCT Make , SUM(VehicleDetails.NumDoors) AS TotalNumberOfDoors
FROM VehicleDetails
INNER JOIN MAKES ON MAKES.MakeID = VehicleDetails.MakeID
GROUP BY MAKES.Make
HAVING MAKES.Make = 'Ford';
