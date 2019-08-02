SELECT geo_name, p0010005 AS Indians, p0010001 as TOTAL, (CAST(p0010005 AS numeric(8,1)) / p0010001) * 100 AS PCNT 
FROM us_counties_2010 
WHERE state_us_abbreviation = 'NY'
ORDER BY PCNT DESC;

SELECT 'CA', percentile_cont(.5)
WITHIN GROUP (ORDER BY p0010001) AS "County Median"
FROM us_counties_2010 
WHERE state_us_abbreviation = 'CA'
UNION
SELECT 'NY', percentile_cont(.5)
WITHIN GROUP (ORDER BY p0010001) AS "County Median"
FROM us_counties_2010 
WHERE state_us_abbreviation = 'NY'
ORDER BY "County Median" DESC

