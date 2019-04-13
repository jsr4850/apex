CREATE TABLE "CARS"."CARS" 
   (	"ID_CAR" NUMBER NOT NULL ENABLE, 
	"MAKE" VARCHAR2(45), 
	"MODEL" VARCHAR2(45), 
	"DKN" VARCHAR2(8), 
	"ACTIVE" NUMBER(*,0), 
	"VALID_FROM" DATE, 
	"VALID_TILL" DATE, 
	 CONSTRAINT "CARS_PK" PRIMARY KEY ("ID_CAR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "APEX_5814722197993291"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "APEX_5814722197993291";