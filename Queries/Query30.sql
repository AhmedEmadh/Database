 

-- Query (30)
-- Get all Vehicle_Display_Name, NumDoors and add extra column to describe number of doors by words, and if door is null display 'Not Set'
/* 
CASES: NULL-0-1-2-3-4-5-6-8
*/

SELECT Vehicle_Display_Name,NumDoors,
CASE 
	WHEN NumDoors = 0 THEN 'No Doors'
	WHEN NumDoors = 1 THEN 'One Door'
	WHEN NumDoors = 2 THEN 'Two Doors'
	WHEN NumDoors = 3 THEN 'Three Doors'
	WHEN NumDoors = 4 THEN 'Four Doors'
	WHEN NumDoors = 5 THEN 'Five Doors'
	WHEN NumDoors = 6 THEN 'Six Doors'
	WHEN NumDoors = 8 THEN 'Eight Doors'
	ELSE 'Unknown'
END AS DoorDescription
FROM VehicleDetails;

