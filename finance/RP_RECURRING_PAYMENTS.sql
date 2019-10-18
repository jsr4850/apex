CREATE TABLE "FINANCE"."RP_RECURRING_PAYMENTS" 
   (	"ID_PAYMENT" NUMBER NOT NULL ENABLE, 
	"TIME_STAMP" TIMESTAMP (6), 
	"CONTRAGENT" VARCHAR2(255), 
	"AMMOUNT" NUMBER, 
	"REF_NUMBER1" VARCHAR2(255), 
	"REF_NUMBER2" VARCHAR2(255), 
	"YEAR_RP" NUMBER, 
	"MONTH_RP" NUMBER, 
	"DAY_RP" NUMBER, 
	"ID_WEEKDAY" NUMBER, 
	"ID_CONTRAGENT" NUMBER, 
	"ID_ACCOUNT" NUMBER, 
	"ID_SERVICE" NUMBER, 
	 CONSTRAINT "RP_RECURRING_PAYMENTS_PK" PRIMARY KEY ("ID_PAYMENT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "APEX_4788810271599456"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "APEX_4788810271599456";