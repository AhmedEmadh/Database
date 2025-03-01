 

-- Query (7)
-- Get number of vehicles made between 1950 and 2000 per make and add total vehicles column beside it, then calculate it's percentage

SELECT *,(CAST(R1.NumberOfVehicles as float) / CAST(R1.TotalVehicles as float)) as Perc FROM
(
SELECT Makes.Make,count(*) as 'NumberOfVehicles',(select count(*) from VehicleDetails) as 'TotalVehicles' 
FROM VehicleDetails join Makes ON VehicleDetails.MakeID = Makes.MakeID 
WHERE Year between 1950 and 2000 
GROUP BY Makes.Make
)R1 order by NumberOfVehicles Desc;
