 
-- Query (28)
-- Get all vehicles that their body is 'Coupe' or 'Hatchback' or 'Sedan' and manufactured in year 2008 or 2020 or 2021
SELECT Bodies.BodyName,VehicleDetails.* FROM VehicleDetails
INNER JOIN Bodies ON Bodies.BodyID = VehicleDetails.BodyID
WHERE Bodies.BodyName IN ('Coupe','Hatchback','Sedan')
AND VehicleDetails.Year IN (2008,2020,2021);
