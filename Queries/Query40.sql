 

-- Query (40)
-- Get all vehicles that has one of the Max 3 Engine CC
SELECT Vehicle_Display_Name FROM VehicleDetails WHERE Engine_CC IN (SELECT DISTINCT TOP 3 Engine_CC FROM VehicleDetails ORDER BY Engine_CC DESC);
