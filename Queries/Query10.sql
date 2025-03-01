 
-- Query (10)
-- Get all Makes that runs with GAS

SELECT distinct Makes.Make, FuelTypes.FuelTypeName FROM VehicleDetails
JOIN FuelTypes on VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
Join Makes on Makes.MakeID = VehicleDetails.MakeID
where FuelTypeName = N'GAS';
