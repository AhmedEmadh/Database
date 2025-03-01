 
-- Query (23)
-- Get MakeID , Make, SubModelName for all vehicles that have SubModelName 'Elite'
SELECT DISTINCT MAKES.MakeID,MAKES.Make,SubModels.SubModelName FROM VehicleDetails
INNER JOIN MAKES ON VehicleDetails.MakeID = MAKES.MakeID
INNER JOIN SubModels ON VehicleDetails.SubModelID = SubModels.SubModelID
WHERE SubModels.SubModelName = N'Elite';
