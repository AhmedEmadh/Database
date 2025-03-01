 

-- Query (37)
-- Get total vehicles that have Engin_CC above average
SELECT VehicleDetails.Vehicle_Display_Name FROM VehicleDetails WHERE VehicleDetails.Engine_CC > (SELECT AVG(Engine_CC) FROM VehicleDetails);
