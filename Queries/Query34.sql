 
-- Query (34)
-- Get all vehicles that have the minimum Engine_CC
SELECT * FROM VehicleDetails WHERE VehicleDetails.Engine_CC = (SELECT MIN(Engine_CC) FROM VehicleDetails)

