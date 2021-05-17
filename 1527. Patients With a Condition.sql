SELECT *
FROM Patients
WHERE conditions LIKE 'DIAB1%' OR 
conditions LIKE '% DIAB1%';

-- when use OR need to write the like clause again