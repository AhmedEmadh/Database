 

-- Query (38)
-- Get all unique Engin_CC and sort them Desc
SELECT Engine_CC FROM VehicleDetails
GROUP BY ENGINE_CC
HAVING COUNT(*) = 1
