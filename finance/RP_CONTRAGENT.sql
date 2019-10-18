CREATE TABLE "FINANCE"."RP_CONTRAGENT" 
   (	"ID_CONTRAGENT" NUMBER NOT NULL ENABLE, 
	"CONTRAGENT" VARCHAR2(255), 
	"ID_ACCOUNT" NUMBER, 
	"ID_SERVICE" NUMBER, 
	 CONSTRAINT "REC_ACCOUNT_PK" PRIMARY KEY ("ID_CONTRAGENT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "APEX_4788810271599456"  ENABLE, 
	 CONSTRAINT "RP_CONTRAGENT_CON" FOREIGN KEY ("ID_ACCOUNT")
	  REFERENCES "FINANCE"."RP_SERVICE" ("ID_SERVICE") ENABLE, 
	 CONSTRAINT "RP_CONTRAGENT_RP_SERVICE_FK" FOREIGN KEY ("ID_SERVICE")
	  REFERENCES "FINANCE"."RP_SERVICE" ("ID_SERVICE") ENABLE, 
	 CONSTRAINT "RP_CONTRAGENT_RP_ACCOUNTS_FK" FOREIGN KEY ("ID_ACCOUNT")
	  REFERENCES "FINANCE"."RP_ACCOUNTS" ("ID_ACCOUNT") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "APEX_4788810271599456";