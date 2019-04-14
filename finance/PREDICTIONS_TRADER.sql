SELECT
	CONTRAGENT_COL,
	SUM(debit) AS DEBIT,
	ROUND(AVG(debit),2) AS "AVG_debit",
	COUNT(CONTRAGENT_COL) AS CNT,
	--DATE_SINCE_LAST,
	ROUND(AVG(DATE_INTERVAL),0) AS AVG_INTERVAL,
	SUM(DATE_INTERVAL) AS TOTAL_INTERVAL
	FROM
(SELECT          
        "reference",
        "date_time",
        "value_date",
        "debit" AS "DEBIT",
        "credit",
        "trname",
        "contragent",
        "rem_i",
        "rem_ii",
        "rem_iii",
        "YEAR_CC",
        "MONTH_CC",
        "DAY_CC",
        w.WEEKDAY_NAME,
        "PERIOD",
        "CONTRAGENT_COL",
        ct.TYPE_COL,
        cl.CLASSIFICATION_COL,
        LAG("value_date",1) OVER (PARTITION BY cc.ID_CONTRAGENT ORDER BY "value_date" DESC) - "value_date" AS "DATE_INTERVAL",
        SYSDATE - "value_date" AS DATE_SINCE_LAST
    FROM FINANCE.CC_CREDIT_CARD cc
	JOIN FINANCE.CC_TYPE ct ON ct.ID_TYPE = cc.ID_TYPE
	JOIN FINANCE.CC_CLASSIFICATION cl ON cl.ID_CLASSIFICATION = cc.ID_CLASSIFICATION
	JOIN FINANCE.WEEKDAYS w ON w.ID_WEEKDAY = cc.ID_WEEKDAY
	JOIN 
		(SELECT 
			DISTINCT ID_CONTRAGENT, 
					CONTRAGENT_COL AS CONTRAGENT_COL 
			FROM FINANCE.CC_CONTRAGENTS) con ON con.ID_CONTRAGENT = cc.ID_CONTRAGENT
    ORDER BY "date_time" DESC, "value_date" DESC) ccj
   	GROUP BY CONTRAGENT_COL;
