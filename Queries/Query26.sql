 

-- Query (26)
-- Get all vehicles that their body is 'Sport Utility' and Year > 2020
SELECT BodyName,VehicleDetails.* FROM VehicleDetails
INNER JOIN Bodies ON VehicleDetails.BodyID = Bodies.BodyID
WHERE BODIES.BodyName = 'Sport Utility';
