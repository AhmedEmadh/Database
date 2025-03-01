 

-- Query (36)
-- Get all vehicles that have Engin_CC below average
SELECT VehicleDetails.Vehicle_Display_Name FROM VehicleDetails WHERE VehicleDetails.Engine_CC < (SELECT AVG(Engine_CC) FROM VehicleDetails);
