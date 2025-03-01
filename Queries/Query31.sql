 
-- Query (31)
-- Get all Vehicle_Display_Name, year and add extra column to calculate the age of the car then sort the results by age desc
SELECT Vehicle_Display_Name,VehicleDetails.Year,AGE = YEAR(GETDATE()) - VehicleDetails.Year FROM VehicleDetails
ORDER BY AGE ASC;
