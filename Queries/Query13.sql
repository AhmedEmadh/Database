 
-- Query (13)
-- Get all Makes/Count Of Vehicles that manufactures more than 20K Vehicles

SELECT Makes.Make,count(*) as NumberOfVehicles FROM VehicleDetails
INNER JOIN Makes on Makes.MakeID = VehicleDetails.MakeID
GROUP BY Makes.Make
HAVING count(*)  > 20000
ORDER BY NumberOfVehicles DESC;
