 
-- Query (18)
-- Get total vehicles per DriveTypeName Per Make and order them per make asc then per total Desc

SELECT Makes.Make, DriveTypes.DriveTypeName,COUNT(*) AS TotalVehicles FROM VehicleDetails
JOIN DriveTypes ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
JOIN Makes ON MAKES.MakeID = VehicleDetails.MakeID
GROUP BY DriveTypeName,MAKES.Make
ORDER BY MAKE ASC,TotalVehicles DESC;
