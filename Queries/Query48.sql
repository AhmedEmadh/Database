 
-- Query (48)
-- Get the highest Manufacturers manufactured the highest number of models , remember that they could be more than one manufacturer have the same high number of models
SELECT MAKES.Make, COUNT(*) AS NumberOfModels FROM MAKES
INNER JOIN MakeModels ON MAKES.MakeID = MakeModels.MakeID
GROUP BY MAKES.MAKE
HAVING COUNT(*) = 
(
	SELECT DISTINCT TOP 1 COUNT(*) AS MaxNumberOfModels FROM MAKEMODELS
	INNER JOIN MAKES ON MAKES.MakeID = MakeModels.MakeID
	GROUP BY MAKES.Make
	ORDER BY COUNT(*) DESC
);
