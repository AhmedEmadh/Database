 

-- Query (21)
-- Get Total Vehicles that number of doors is not specified
SELECT COUNT(*) AS TotalWithNoSpecifiedDoors FROM VehicleDetails 
WHERE NumDoors IS NULL;
