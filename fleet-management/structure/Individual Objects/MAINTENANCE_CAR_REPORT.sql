CREATE OR REPLACE FORCE VIEW  "MAINTENANCE_CAR_REPORT" ("DKN", "REFERENCE", "AVG INTERVAl", "AVG PERIOD") AS 
  SELECT
			DKN,
			REFERENCE,
			ROUND(avg(INTERVAL_COL),0) as "AVG INTERVAl",
			ROUND(AVG(INTERVAL_DAYS),0) AS "AVG PERIOD"
		FROM MAINTENANCE
		JOIN CARS ON CARS.ID_CAR = MAINTENANCE.ID_CAR
		group by DKN, REFERENCE
		ORDER BY DKN DESC, REFERENCE;