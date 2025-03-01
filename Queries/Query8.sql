 
-- Query (8)
-- Get Make, FuelTypeName and Number of Vehicles per FuelType per Make

select Makes.Make,FuelTypes.FuelTypeName,count(*) as NumberOfVehicles 
from VehicleDetails 
join Makes on VehicleDetails.MakeID = Makes.MakeID 
inner join FuelTypes on FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID 
group by Makes.Make,FuelTypes.FuelTypeName 
order by Makes.Make;
