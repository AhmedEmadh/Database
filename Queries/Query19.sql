 

-- Query (19)
-- Get total vehicles per DriveTypeName Per Make then filter only results with total > 10,000
/* With using Having */
SELECT DriveTypes.DriveTypeName, MAKES.Make, COUNT(*) AS TotalVehicles FROM VehicleDetails
JOIN DriveTypes ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
JOIN MAKES ON MAKES.MakeID = VehicleDetails.MakeID
GROUP BY DriveTypes.DriveTypeName,MAKES.Make
HAVING COUNT(*) > 10000
ORDER BY Make ASC, TotalVehicles DESC;

/* Without using Having */
SELECT * FROM
(
SELECT DriveTypes.DriveTypeName, MAKES.Make, COUNT(*) AS TotalVehicles FROM VehicleDetails
JOIN DriveTypes ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
JOIN MAKES ON MAKES.MakeID = VehicleDetails.MakeID
GROUP BY DriveTypes.DriveTypeName,MAKES.Make
)R1
WHERE TotalVehicles > 10000
ORDER BY MAKE ASC,TotalVehicles DESC;
