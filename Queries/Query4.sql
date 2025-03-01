 
-- Query (4)
-- Get number vehicles made between 1950 and 2000 per make and order them by Number Of Vehicles Descending
select Makes.Make, count(*) as NumberOfVehicles from VehicleDetails inner join Makes on Makes.MakeID = VehicleDetails.MakeID group by Makes.Make order by NumberOfVehicles Desc;
