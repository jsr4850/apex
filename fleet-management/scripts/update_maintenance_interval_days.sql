UPDATE MAINTENANCE
SET INTERVAL_DAYS = 
(
	SELECT INTERVAL_DAYS FROM MAINTENANCE_TIMESERIES_STAT 
	WHERE MAINTENANCE.ID_MAINTENANCE = MAINTENANCE_TIMESERIES_STAT.ID_MAINTENANCE
)