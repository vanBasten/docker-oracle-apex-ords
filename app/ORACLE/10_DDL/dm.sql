  CREATE SEQUENCE  "SEQ_ADDRESS_PK"  MINVALUE 0 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
  CREATE SEQUENCE  "SEQ_APP_PRESENCE_STATUS_PK"  MINVALUE 0 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
  CREATE SEQUENCE  "SEQ_APP_SETTING_PK"  MINVALUE 0 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
  CREATE SEQUENCE  "SEQ_APP_SOURCE_PK"  MINVALUE 0 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
  CREATE SEQUENCE  "SEQ_ATTRIBUTE_PK"  MINVALUE 0 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
  CREATE SEQUENCE  "SEQ_CLOBS_TABLE_PK" MINVALUE 0 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
  CREATE SEQUENCE  "SEQ_CUSTOMER_ADDRESS_PK"  MINVALUE 0 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
  CREATE SEQUENCE  "SEQ_CUSTOMER_PK"  MINVALUE 0 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
  CREATE SEQUENCE  "SEQ_FILE_CONTENT_PK"  MINVALUE 0 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
  CREATE SEQUENCE  "SEQ_PROPERTY_PK"  MINVALUE 0 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
  CREATE SEQUENCE  "SEQ_OBJECT_PK"  MINVALUE 0 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
  CREATE SEQUENCE  "SEQ_RESTFUL_REQUEST_LOG_PK" MINVALUE 0 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
  CREATE SEQUENCE  "SEQ_USER_LOCATION_PK"  MINVALUE 0 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;

  --------------------------------------------------------
--  DDL for Table ADDRESS
--------------------------------------------------------

  CREATE TABLE "ADDRESS"
   (	"ID" NUMBER,
	"POSTAL_CODE" VARCHAR2(6 BYTE),
	"STREET" VARCHAR2(200 BYTE),
	"NUMBER" VARCHAR2(6 BYTE),
	"CITY" VARCHAR2(200 BYTE),
	"DESCRIPTION" VARCHAR2(4000 BYTE),
	"GEO_LOCATION_ID" NUMBER,
	"EMAIL" VARCHAR2(200 BYTE),
	"TEL" VARCHAR2(20 BYTE),
	"CREATION_USER" VARCHAR2(200 BYTE),
	"CREATION_DATE" DATE,
	"MODIFICATION_USER" VARCHAR2(200 BYTE),
	"MODIFICATION_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table APP_PRESENCE_STATUS
--------------------------------------------------------

  CREATE TABLE "APP_PRESENCE_STATUS"
   (	"ID" NUMBER,
	"VERSION" NUMBER,
	"NAME" VARCHAR2(200 BYTE),
	"DESCRIPTION_REQUIRED" NUMBER,
	"IMG" BLOB,
	"CREATION_USER" VARCHAR2(200 BYTE),
	"CREATION_DATE" DATE,
	"MODIFICATION_USER" VARCHAR2(200 BYTE),
	"MODIFICATION_DATE" DATE,
  "ROW_STATUS" VARCHAR2(2 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table APP_SETTING
--------------------------------------------------------

  CREATE TABLE "APP_SETTING"
   (	"ID" NUMBER,
	"NAME" VARCHAR2(200 BYTE),
	"VALUE" VARCHAR2(200 BYTE),
	"USER_LOGIN" VARCHAR2(200 BYTE),
	"VERSION" NUMBER,
	"CREATION_USER" VARCHAR2(200 BYTE),
	"CREATION_DATE" DATE,
	"MODIFICATION_USER" VARCHAR2(200 BYTE),
	"MODIFICATION_DATE" DATE,
	"TYPE" VARCHAR2(20 BYTE) DEFAULT 'APP'
   ) ;
--------------------------------------------------------
--  DDL for Table APP_SOURCE
--------------------------------------------------------

  CREATE TABLE "APP_SOURCE"
   (	"ID" NUMBER,
	"NAME" VARCHAR2(200 BYTE),
	"CONTENT_TYPE" VARCHAR2(200 BYTE),
	"CONTENT" BLOB,
	"VERSION" NUMBER,
	"CREATION_USER" VARCHAR2(200 BYTE),
	"CREATION_DATE" DATE,
	"MODIFICATION_USER" VARCHAR2(200 BYTE),
	"MODIFICATION_DATE" DATE,
	"SOURCE_STATUS" VARCHAR2(1 BYTE) DEFAULT 'A',
	"USER_LOGIN" VARCHAR2(200 BYTE),
	"CONTENT_SIZE" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table ATTRIBUTE
--------------------------------------------------------

  CREATE TABLE "ATTRIBUTE"
   (	"ID" NUMBER,
	"CODE" VARCHAR2(20 BYTE),
	"VALUE" VARCHAR2(20 BYTE),
	"DESCRIPTION" VARCHAR2(4000 BYTE),
	"PROPERTY_ID" NUMBER,
	"CREATION_USER" VARCHAR2(200 BYTE),
	"CREATION_DATE" DATE,
	"MODIFICATION_USER" VARCHAR2(200 BYTE),
	"MODIFICATION_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table CLOBS_TABLE
--------------------------------------------------------

  CREATE TABLE "CLOBS_TABLE"
   (	"ID" NUMBER,
	"INSERT_DATE" DATE DEFAULT sysdate,
	"CLOB_VALUE" CLOB
   ) ;
--------------------------------------------------------
--  DDL for Table CUSTOMER
--------------------------------------------------------

  CREATE TABLE "CUSTOMER"
   (	"ID" NUMBER,
	"TITLE" VARCHAR2(200 BYTE),
	"FIRST_NAME" VARCHAR2(200 BYTE),
	"LAST_NAME" VARCHAR2(200 BYTE),
	"COMPANY_NAME" VARCHAR2(200 BYTE),
	"NIP" VARCHAR2(200 BYTE),
	"CREATION_USER" VARCHAR2(200 BYTE),
	"CREATION_DATE" DATE,
	"MODIFICATION_USER" VARCHAR2(200 BYTE),
	"MODIFICATION_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table CUSTOMER_ADDRESS
--------------------------------------------------------

  CREATE TABLE "CUSTOMER_ADDRESS"
   (	"ID" NUMBER,
	"ADDRESS_ID" NUMBER,
	"CUSTOMER_ID" NUMBER,
	"MAIN" VARCHAR2(1 BYTE),
	"CREATION_USER" VARCHAR2(200 BYTE),
	"CREATION_DATE" DATE,
	"MODIFICATION_USER" VARCHAR2(200 BYTE),
	"MODIFICATION_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table FILE_CONTENT
--------------------------------------------------------

  CREATE TABLE "FILE_CONTENT"
   (	"ID" NUMBER,
	"FILE_NAME" VARCHAR2(1000 BYTE),
	"FILE_BODY" BLOB,
	"CONTENT_TYPE" VARCHAR2(1000 BYTE),
	"MOB_CREATION_DATE" VARCHAR2(200 BYTE),
	"CREATION_USER" VARCHAR2(200 BYTE),
	"CREATION_DATE" DATE,
	"MODIFICATION_USER" VARCHAR2(200 BYTE),
	"MODIFICATION_DATE" DATE,
	"MOB_CREATION_USER" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table OBJECT
--------------------------------------------------------

  CREATE TABLE "OBJECT"
   (	"ID" NUMBER,
	"CODE" VARCHAR2(20 BYTE),
	"CUSTOMER_ID" NUMBER,
	"CREATION_USER" VARCHAR2(200 BYTE),
	"CREATION_DATE" DATE,
	"MODIFICATION_USER" VARCHAR2(200 BYTE),
	"MODIFICATION_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table PROPERTY
--------------------------------------------------------

  CREATE TABLE "PROPERTY"
   (	"ID" NUMBER,
	"CODE" VARCHAR2(20 BYTE),
	"OBJECT_ID" NUMBER,
	"CREATION_USER" VARCHAR2(200 BYTE),
	"CREATION_DATE" DATE,
	"MODIFICATION_USER" VARCHAR2(200 BYTE),
	"MODIFICATION_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table RESTFUL_REQUEST_LOG
--------------------------------------------------------

  CREATE TABLE "RESTFUL_REQUEST_LOG"
   (	"ID" NUMBER,
	"PROCEDURE_CALL" VARCHAR2(200 BYTE),
	"PROCEDURE_PARAMS" VARCHAR2(4000 BYTE),
	"RESPONSE" CLOB,
	"STATUS" VARCHAR2(200 BYTE),
	"ERROR_STACK" VARCHAR2(2000 BYTE),
	"ERROR_BACKTRACE" VARCHAR2(2000 BYTE),
	"CALLING_USER" VARCHAR2(200 BYTE),
	"STARTED" TIMESTAMP (6),
	"FINSHED" TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table USER_LOCATION
--------------------------------------------------------

  CREATE TABLE "USER_LOCATION"
   (	"ID" NUMBER,
	"LAT" VARCHAR2(1000 BYTE),
	"LON" VARCHAR2(1000 BYTE),
	"MOB_CREATION_USER" VARCHAR2(200 BYTE),
	"MOB_CREATION_DATE" VARCHAR2(200 BYTE),
	"CREATION_USER" VARCHAR2(200 BYTE),
	"CREATION_DATE" DATE,
	"MODIFICATION_USER" VARCHAR2(200 BYTE),
	"MODIFICATION_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Index ADDRESS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADDRESS_ID_PK" ON "ADDRESS" ("ID")
  ;
--------------------------------------------------------
--  DDL for Index APP_PRESENCE_STATUS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP_PRESENCE_STATUS_PK" ON "APP_PRESENCE_STATUS" ("ID")
  ;
--------------------------------------------------------
--  DDL for Index ATTRIBUTE_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATTRIBUTE_ID_PK" ON "ATTRIBUTE" ("ID")
  ;
--------------------------------------------------------
--  DDL for Index CUSTOMER_ADDRESS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CUSTOMER_ADDRESS_ID_PK" ON "CUSTOMER_ADDRESS" ("ID")
  ;
--------------------------------------------------------
--  DDL for Index CUSTOMER_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CUSTOMER_ID_PK" ON "CUSTOMER" ("ID")
  ;
--------------------------------------------------------
--  DDL for Index OBJECT_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OBJECT_ID_PK" ON "OBJECT" ("ID")
  ;
--------------------------------------------------------
--  DDL for Index PROPERTY_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROPERTY_ID_PK" ON "PROPERTY" ("ID")
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0018131
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0018131" ON "USER_LOCATION" ("ID")
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0018133
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0018133" ON "RESTFUL_REQUEST_LOG" ("ID")
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0018136
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0018136" ON "FILE_CONTENT" ("ID")
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0018137
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0018137" ON "CLOBS_TABLE" ("ID")
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0018141
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0018141" ON "APP_SOURCE" ("ID")
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0018143
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0018143" ON "APP_SETTING" ("ID")
  ;
--------------------------------------------------------
--  Constraints for Table ADDRESS
--------------------------------------------------------

  ALTER TABLE "ADDRESS" ADD CONSTRAINT "ADDRESS_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "ADDRESS" MODIFY ("CREATION_DATE" NOT NULL ENABLE);
  ALTER TABLE "ADDRESS" MODIFY ("CREATION_USER" NOT NULL ENABLE);
  ALTER TABLE "ADDRESS" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "ADDRESS" MODIFY ("CITY" NOT NULL ENABLE);
  ALTER TABLE "ADDRESS" MODIFY ("NUMBER" NOT NULL ENABLE);
  ALTER TABLE "ADDRESS" MODIFY ("STREET" NOT NULL ENABLE);
  ALTER TABLE "ADDRESS" MODIFY ("POSTAL_CODE" NOT NULL ENABLE);
  ALTER TABLE "ADDRESS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table APP_PRESENCE_STATUS
--------------------------------------------------------

  ALTER TABLE "APP_PRESENCE_STATUS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "APP_PRESENCE_STATUS" ADD CONSTRAINT "APP_PRESENCE_STATUS_PK" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table APP_SETTING
--------------------------------------------------------

  ALTER TABLE "APP_SETTING" ADD CONSTRAINT "APP_SETTING_PK" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table APP_SOURCE
--------------------------------------------------------

  ALTER TABLE "APP_SOURCE" ADD CONSTRAINT "APP_SOURCES_STATUS_CHK" CHECK (
source_status in ('A' /*added*/,'M'/*modified*/,'D'/*deleted*/)
) ENABLE;
  ALTER TABLE "APP_SOURCE" MODIFY ("SOURCE_STATUS" NOT NULL ENABLE);
  ALTER TABLE "APP_SOURCE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "APP_SOURCE" ADD CONSTRAINT "APP_SOURCE_PK" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table ATTRIBUTE
--------------------------------------------------------

  ALTER TABLE "ATTRIBUTE" ADD CONSTRAINT "ATTRIBUTE_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "ATTRIBUTE" MODIFY ("CREATION_DATE" NOT NULL ENABLE);
  ALTER TABLE "ATTRIBUTE" MODIFY ("CREATION_USER" NOT NULL ENABLE);
  ALTER TABLE "ATTRIBUTE" MODIFY ("PROPERTY_ID" NOT NULL ENABLE);
  ALTER TABLE "ATTRIBUTE" MODIFY ("CODE" NOT NULL ENABLE);
  ALTER TABLE "ATTRIBUTE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CLOBS_TABLE
--------------------------------------------------------

  ALTER TABLE "CLOBS_TABLE" ADD CONSTRAINT "CLOBS_TABLE_PK" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "CUSTOMER" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMER" MODIFY ("CREATION_USER" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMER" MODIFY ("CREATION_DATE" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMER" ADD CONSTRAINT "CUSTOMER_ID_PK" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table CUSTOMER_ADDRESS
--------------------------------------------------------

  ALTER TABLE "CUSTOMER_ADDRESS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMER_ADDRESS" MODIFY ("CREATION_USER" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMER_ADDRESS" MODIFY ("CREATION_DATE" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMER_ADDRESS" ADD CONSTRAINT "CUSTOMER_ADDRESS_ID_PK" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table FILE_CONTENT
--------------------------------------------------------

  ALTER TABLE "FILE_CONTENT" MODIFY ("CREATION_DATE" NOT NULL ENABLE);
  ALTER TABLE "FILE_CONTENT" MODIFY ("CREATION_USER" NOT NULL ENABLE);
  ALTER TABLE "FILE_CONTENT" ADD CONSTRAINT "FILE_CONTENT_PK" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table OBJECT
--------------------------------------------------------

  ALTER TABLE "OBJECT" ADD CONSTRAINT "OBJECT_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "OBJECT" MODIFY ("CREATION_DATE" NOT NULL ENABLE);
  ALTER TABLE "OBJECT" MODIFY ("CREATION_USER" NOT NULL ENABLE);
  ALTER TABLE "OBJECT" MODIFY ("CUSTOMER_ID" NOT NULL ENABLE);
  ALTER TABLE "OBJECT" MODIFY ("CODE" NOT NULL ENABLE);
  ALTER TABLE "OBJECT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROPERTY
--------------------------------------------------------

  ALTER TABLE "PROPERTY" ADD CONSTRAINT "PROPERTY_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "PROPERTY" MODIFY ("CREATION_DATE" NOT NULL ENABLE);
  ALTER TABLE "PROPERTY" MODIFY ("CREATION_USER" NOT NULL ENABLE);
  ALTER TABLE "PROPERTY" MODIFY ("OBJECT_ID" NOT NULL ENABLE);
  ALTER TABLE "PROPERTY" MODIFY ("CODE" NOT NULL ENABLE);
  ALTER TABLE "PROPERTY" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RESTFUL_REQUEST_LOG
--------------------------------------------------------

  ALTER TABLE "RESTFUL_REQUEST_LOG" ADD CONSTRAINT "RESTFUL_REQUEST_LOG_PK" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table USER_LOCATION
--------------------------------------------------------

  ALTER TABLE "USER_LOCATION" MODIFY ("CREATION_DATE" NOT NULL ENABLE);
  ALTER TABLE "USER_LOCATION" MODIFY ("CREATION_USER" NOT NULL ENABLE);
  ALTER TABLE "USER_LOCATION" ADD CONSTRAINT "USER_LOCATION_PK" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ATTRIBUTE
--------------------------------------------------------

  ALTER TABLE "ATTRIBUTE" ADD CONSTRAINT "ATTRIBUTE_FK1" FOREIGN KEY ("PROPERTY_ID")
	  REFERENCES "PROPERTY" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CUSTOMER_ADDRESS
--------------------------------------------------------

  ALTER TABLE "CUSTOMER_ADDRESS" ADD CONSTRAINT "CUSTOMER_ADDRESS_ADDRESS_FK1" FOREIGN KEY ("ADDRESS_ID")
	  REFERENCES "ADDRESS" ("ID") ENABLE;
  ALTER TABLE "CUSTOMER_ADDRESS" ADD CONSTRAINT "CUSTOMER_ADDRESS_CUSTOMER_FK1" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "CUSTOMER" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table OBJECT
--------------------------------------------------------

  ALTER TABLE "OBJECT" ADD CONSTRAINT "OBJECT_FK1" FOREIGN KEY ("ID")
	  REFERENCES "CUSTOMER" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROPERTY
--------------------------------------------------------

  ALTER TABLE "PROPERTY" ADD CONSTRAINT "PROPERTY_FK1" FOREIGN KEY ("OBJECT_ID")
	  REFERENCES "OBJECT" ("ID") ENABLE;
