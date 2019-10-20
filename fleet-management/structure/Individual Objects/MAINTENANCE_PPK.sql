CREATE OR REPLACE FORCE VIEW "CARS"."MAINTENANCE_PPK" ("DKN", "MLG", "TOTAL", "PPK") AS 
  SELECT
        DKN,
        MAX(MILEAGE) - MIN (MILEAGE) AS "MLG",
        SUM(TOTAL) as "TOTAL IN L", 
        ROUND(SUM(TOTAL) / (MAX(MILEAGE) - MIN (MILEAGE)),2) as "PRICE PER KM IN L"
    FROM MAINTENANCE  m JOIN CARS.CARS ON CARS.CARS.ID_CAR = m.ID_CAR
    GROUP BY DKN
    ORDER BY DKN DESC;