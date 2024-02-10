DROP TABLE IF EXISTS getNumberOfCovidCasesByStateInMonth;
CREATE TABLE getNumberOfCovidCasesByStateInYear (
  stateNames text,
  covidCases float,
  months date,
);

DROP TABLE IF EXISTS getVaccinatedPopulationByStateInMonth;
CREATE TABLE getVaccinatedPopulationByStateInYear(
  stateNames text,
  vaccinated float,
  months date, 
);

DROP TABLE IF EXISTS getRankedStatesByCorrCoefftBetweenCasesAndVaccines;
CREATE TABLE getRankedStatesByCorrCoefftBetweenCasesAndVaccines(
  stateNames text,
  covidCases float,
  vaccinated float,
  years date,
);

DROP TABLE IF EXISTS getRatioOfCovidCasestoPopulationByState;
CREATE TABLE getRatioOfCovidCasestoPopulationByState(
  stateNames text,
  covidCases float,
  populations float,
  months date,
)

DROP TABLE IF EXISTS getRatioOfVaccincatedToPopulationByState;
CREATE TABLE getRatioOfVaccincatedToPopulationByState(
  stateNames text,
  vaccinated float,
  populations float,
  months date,
);

DROP TABLE IF EXISTS getDeathCountbyStateInMonth;
CREATE TABLE getDeathCountbyStateInYear(
  stateNames text,
  deaths float,
  months date,
)