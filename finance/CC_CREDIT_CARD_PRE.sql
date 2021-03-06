CREATE TABLE "FINANCE"."CC_CREDIT_CARD_PRE" 
   (	"reference" VARCHAR2(255) NOT NULL ENABLE, 
	"datetime" VARCHAR2(50), 
	"valuedate" VARCHAR2(50), 
	"debit" VARCHAR2(50), 
	"credit" VARCHAR2(50), 
	"trname" VARCHAR2(500), 
	"contragent" VARCHAR2(500), 
	"rem_i" VARCHAR2(500), 
	"rem_ii" VARCHAR2(500), 
	"rem_iii" VARCHAR2(500), 
	 CONSTRAINT "credit_card_PK" PRIMARY KEY ("reference")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "APEX_4788810271599456"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "APEX_4788810271599456"  ENABLE ROW MOVEMENT;
