 
-- Query (12)
-- Count Vehicles by make and order them by NumberOfVehicles from high to low

SELECT Makes.Make,count(*) AS NumberOfVehicles 
FROM VehicleDetails
JOIN Makes on VehicleDetails.MakeID = Makes.MakeID
group by Makes.Make
order by NumberOfVehicles Desc;
