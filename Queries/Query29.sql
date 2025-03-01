 

-- Query (29)
-- Return found=1 if there is any vehicle made in year 1950
SELECT Found = 1
WHERE EXISTS
(
	SELECT TOP 1 * FROM VehicleDetails WHERE Year = 1950
)
