 
-- Query (16)
-- Get all Makes that manufactures DriveTypeName = FWD

SELECT DISTINCT Makes.Make,DriveTypes.DriveTypeName FROM VehicleDetails
JOIN DriveTypes ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
JOIN Makes ON Makes.MakeID = VehicleDetails.MakeID
WHERE DriveTypeName = 'FWD';
