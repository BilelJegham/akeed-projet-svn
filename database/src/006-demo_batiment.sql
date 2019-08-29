--liquibase formatted sql

--changeset bilel:6 dbms:oracle
CREATE TABLE Batiement
(
  BAT_ADR     VARCHAR2(200 BYTE),
  BAT_ADR_LN2     VARCHAR2(200 BYTE)

)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


--rollback drop table DEMO_EMPLOYES;
