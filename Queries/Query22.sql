 

-- Query (22)
-- Get percentage of vehicles that has no doors specified
SELECT 
(
	CAST( (SELECT COUNT(*) FROM VehicleDetails 
	WHERE NumDoors IS NULL) AS FLOAT)
	/
	CAST( (SELECT COUNT(*) FROM VehicleDetails) AS FLOAT)
) 
AS PercOfNoSpecifiedDoors;
