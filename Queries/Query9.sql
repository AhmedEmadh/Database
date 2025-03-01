 
-- Query (9)
-- Get all vehicles that runs with GAS

select VehicleDetails.*,FuelTypes.FuelTypeName from VehicleDetails
JOIN FuelTypes on VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
where FuelTypes.FuelTypeName = N'GAS';
