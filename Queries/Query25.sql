 

-- Query (25)
-- Get make and vehicles that the engine contains 'OHV' and have Cylinders = 4
SELECT * FROM VehicleDetails
INNER JOIN Makes ON VehicleDetails.MakeID = Makes.MakeID
WHERE VehicleDetails.Engine LIKE '%OHV%' AND VehicleDetails.Engine_Cylinders = 4;
