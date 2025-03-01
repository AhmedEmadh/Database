 

-- Query (6)
-- Get number of vehicles made between 1950 and 2000 per make and add total vehicles column beside
select Makes.Make,count(*) as 'Count',(select count(*) from VehicleDetails) as 'Total Vehicles' from VehicleDetails inner join Makes on VehicleDetails.MakeID = Makes.MakeID where VehicleDetails.Year between 1950 and 2000 group by Makes.Make order by Count desc;
