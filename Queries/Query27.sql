 

-- Query (27)
-- Get all vehicles that their Body is 'Coupe' or 'Hatchback' or 'Sedan'
SELECT Bodies.BodyName,VehicleDetails.* FROM VehicleDetails
INNER JOIN Bodies ON VehicleDetails.BodyID = Bodies.BodyID
WHERE Bodies.BodyName IN ('Coupe','Hatchback','Sedan');
