 
-- Query (46)
-- Get the highest 3 manufacturers that make the highest number of models
SELECT DISTINCT TOP 3 MAKES.MAKE, COUNT(*) AS NumberOfModels FROM MAKEMODELS
INNER JOIN MAKES ON MAKES.MakeID = MakeModels.MakeID
GROUP BY MAKES.Make
ORDER BY COUNT(*) DESC;
