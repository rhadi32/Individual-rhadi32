-- Query1: getNumberOfCovidCasesByStateInMonth
SELECT covidCases 
FROM getNumberOfCovidCasesByStateInMonth 
WHERE stateNames IN ('Texas', 'California', 'New York') 
AND months BETWEEN '2019-01-01' AND '2022-12-31';

-- Query2: getVaccinatedPopulationByStateInMonth
SELECT vaccinated, populations 
FROM getVaccinatedPopulationByStateInMonth 
WHERE stateNames IN ('Texas', 'California', 'New York') 
AND months BETWEEN '2019-01-01' AND '2022-12-31';

-- Query3: getRankedStatesByCorrCoefftBetweenCasesAndVaccines
WITH CasesVaccines AS (
    SELECT 
        stateNames,
        AVG(covidCases) AS avgCases,
        AVG(vaccinated) AS avgVaccines
    FROM 
        getRankedStatesByCorrCoefftBetweenCasesAndVaccines
    WHERE 
        months BETWEEN '2019-01-01' AND '2022-12-31'
    AND stateNames IN ('Texas', 'California', 'New York')
    GROUP BY 
        stateNames
)

SELECT 
    stateNames,
    CORR(avgCases, avgVaccines) AS correlation_coefficient
FROM 
    CasesVaccines
GROUP BY 
    stateNames
ORDER BY 
    correlation_coefficient DESC;

-- Query4: getRatioOfCovidCasestoPopulationByState
SELECT 
    stateNames, 
    covidCases / populations AS covidToPopulationRatio
FROM 
    getRatioOfCovidCasestoPopulationByState 
WHERE 
    months BETWEEN '2019-01-01' AND '2022-12-31'
AND stateNames IN ('Texas', 'California', 'New York');

-- Query5: getRatioOfVaccincatedToPopulationByState
SELECT 
    stateNames, 
    vaccinated / populations AS vaccinatedToPopulationRatio
FROM 
    getRatioOfVaccincatedToPopulationByState 
WHERE 
    months BETWEEN '2019-01-01' AND '2022-12-31'
AND stateNames IN ('Texas', 'California', 'New York');

-- Query6: getDeathCountbyStateInMonth
SELECT deaths 
FROM getDeathCountbyStateInMonth 
WHERE stateNames IN ('Texas', 'California', 'New York') 
AND months BETWEEN '2019-01-01' AND '2022-12-31';
