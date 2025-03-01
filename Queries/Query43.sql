 

-- Query (43)
-- Get Make and Total Number Of Doors Manufactured Per Make
SELECT Makes.Make, SUM(VehicleDetails.NumDoors) AS TotalNumberOfDoors
FROM VehicleDetails
INNER JOIN MAKES ON MAKES.MakeID = VehicleDetails.MakeID
GROUP BY MAKES.MAKE;
