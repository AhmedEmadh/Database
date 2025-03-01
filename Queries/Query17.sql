 

-- Query (17)
-- Get total Makes that Mantufactures DriveTypeName=FWD
/* Solution 1 */
SELECT COUNT(DISTINCT Makes.Make) AS MakeWithFWD FROM VehicleDetails
JOIN DriveTypes ON DriveTypes.DriveTypeID = VehicleDetails.DriveTypeID
JOIN Makes ON Makes.MakeID = VehicleDetails.MakeID
WHERE DriveTypes.DriveTypeName = 'FWD';
/* Solution 2 */
SELECT COUNT(*) AS MakeWithFWD FROM
(
SELECT DISTINCT Makes.Make FROM VehicleDetails
JOIN DriveTypes ON DriveTypes.DriveTypeID = VehicleDetails.DriveTypeID
JOIN Makes ON Makes.MakeID = VehicleDetails.MakeID
WHERE DriveTypes.DriveTypeName = 'FWD'
)R1;
