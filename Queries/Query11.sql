 

-- Query (11)
-- Get Total Makes that runs with GAS

SELECT count(*) as TotalMakesRunsOnGas from
(
SELECT distinct Makes.Make, FuelTypes.FuelTypeName FROM VehicleDetails
JOIN FuelTypes on VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
Join Makes on Makes.MakeID = VehicleDetails.MakeID
where FuelTypeName = N'GAS'
)R1;

