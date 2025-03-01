 

-- Query (45)
-- Get Number of Models Per Make
SELECT MAKES.MAKE, COUNT(*) AS NumberOfModels FROM MakeModels
INNER JOIN MAKES ON MAKES.MakeID = MakeModels.MakeID
GROUP BY MAKES.MAKE
ORDER BY NumberOfModels DESC;
