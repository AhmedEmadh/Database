 
-- Query (5)
-- Get All Makes that have manufactured more than 12000 Vehicles in years 1950 to 2000
select Makes.Make,count(*) as 'Count' from VehicleDetails inner join Makes on VehicleDetails.MakeID = Makes.MakeID where Year between 1950 and 2000 group by Make having count(*) > 12000 order by Count Desc;
