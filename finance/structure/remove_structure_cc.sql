DROP TABLE "CC_CLASSIFICATION" CASCADE CONSTRAINTS;
DROP TABLE  "CC_CLASSIFIER" CASCADE CONSTRAINTS;
DROP TABLE  "CC_CONTRAGENTS" CASCADE CONSTRAINTS;
DROP TABLE  "CC_TYPE" CASCADE CONSTRAINTS;
DROP TABLE  "WEEKDAYS" CASCADE CONSTRAINTS;
DROP TABLE  "CC_CREDIT_CARD" CASCADE CONSTRAINTS;
DROP TABLE  "CC_CREDIT_CARD_PRE" CASCADE CONSTRAINTS;


DROP VIEW "CC_BALANCE" CASCADE CONSTRAINTS;
DROP VIEW "CC_CONTRAGENTS_EMP" CASCADE CONSTRAINTS;
DROP VIEW "CC_EMPTY_ID_CONTRAGENT" CASCADE CONSTRAINTS;
DROP VIEW "CC_LOG" CASCADE CONSTRAINTS;
DROP VIEW "CC_SORT" CASCADE CONSTRAINTS;
DROP VIEW  "CONTRAGENTS_EMP" CASCADE CONSTRAINTS;
DROP VIEW  "CREDIT_CARD_FREQUENCY" CASCADE CONSTRAINTS;
DROP VIEW  "CREDIT_CARD_MONTHLY_STATS" CASCADE CONSTRAINTS;
DROP VIEW  "CREDIT_CARD_STAT_CONTRAGENT" CASCADE CONSTRAINTS;
DROP VIEW  "CREDIT_CARD_STAT_MONTH" CASCADE CONSTRAINTS;
DROP VIEW  "CREDIT_CARD_STAT_PERIOD" CASCADE CONSTRAINTS;
DROP VIEW  "CREDIT_CARD_STAT_YEAR" CASCADE CONSTRAINTS;
DROP VIEW  "CREDIT_CARD_TYPE_YEAR" CASCADE CONSTRAINTS;

DROP SEQUENCE "CREDIT_CARD_SEQ1";
DROP SEQUENCE "CREDIT_CARD_SEQ";
DROP SEQUENCE "CONTRAGENTS_SEQ";
DROP SEQUENCE "CC_TYPE_SEQ";