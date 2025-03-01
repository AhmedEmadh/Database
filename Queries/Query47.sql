 
-- Query (47)
-- Get the highest number of models manufactured
SELECT DISTINCT TOP 1 COUNT(*) AS MaxNumberOfModels FROM MAKEMODELS
INNER JOIN MAKES ON MAKES.MakeID = MakeModels.MakeID
GROUP BY MAKES.Make
ORDER BY COUNT(*) DESC;
