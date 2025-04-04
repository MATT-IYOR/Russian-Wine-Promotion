SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Alcohol_Consumption' AND COLUMN_NAME = 'wine';


UPDATE [Russian_wineDB].[dbo].[in$]
SET wine = (SELECT AVG(wine) FROM [Russian_wineDB].[dbo].[in$])
WHERE wine IS NULL;


WITH SaintPetersburg AS (
    SELECT year, wine
    FROM [Russian_wineDB].[dbo].[in$]
    WHERE region = 'Saint Petersburg'
)
SELECT TOP 10 
    A.region,
    SQRT(SUM(POWER(A.wine - SP.wine, 2))) AS euclidean_distance
FROM [Russian_wineDB].[dbo].[in$] A
JOIN SaintPetersburg SP ON A.year = SP.year
WHERE A.region <> 'Saint Petersburg'
GROUP BY A.region
ORDER BY euclidean_distance ASC;


SELECT TOP 10
region,year,AVG(Wine) AS Avgwine
  FROM [Russian_wineDB].[dbo].[in$]
  Group By region,year
  Order by year ASC



WITH RankedRegions AS (
    SELECT 
        year,
        region,
        AVG(CAST(Wine AS FLOAT)) AS AvgWineConsumption,
        ROW_NUMBER() OVER (PARTITION BY year ORDER BY AVG(CAST(Wine AS FLOAT)) DESC) AS Rank
    FROM [Russian_wineDB].[dbo].[in$]
    WHERE Wine IS NOT NULL
    GROUP BY year, region
)
SELECT year, region, AvgWineConsumption
FROM RankedRegions
WHERE Rank <= 10  -- Select only the top 10 regions per year
ORDER BY year ASC, Rank;
