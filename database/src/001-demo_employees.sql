--liquibase formatted sql

--changeset bilel:1 dbms:oracle
CREATE TABLE DEMO_EMPLOYES
(
  EMPY_UID         NUMBER(12)                   NOT NULL,
  EMPY_COD         VARCHAR2(20 BYTE),
  EMPY_NOMCMP_LN1  VARCHAR2(100 BYTE),
  EMPY_NOMCMP_LN2  VARCHAR2(100 BYTE),
  EMPY_NOMCMP_LN3  VARCHAR2(100 BYTE),
  EMPY_NOM_LN1     VARCHAR2(50 BYTE),
  EMPY_NOM_LN2     VARCHAR2(50 BYTE),
  EMPY_NOM_LN3     VARCHAR2(50 BYTE),
  EMPY_PRN_LN1     VARCHAR2(50 BYTE),
  EMPY_PRN_LN2     VARCHAR2(50 BYTE),
  EMPY_PRN_LN3     VARCHAR2(50 BYTE),
  EMPY_GNR         INTEGER,
  EMPY_DATNAI      DATE,
  EMPY_NUMCIN      VARCHAR2(30 BYTE),
  EMPY_DATCIN      DATE,
  EMPY_ADR_LN1     VARCHAR2(200 BYTE),
  EMPY_ADR_LN2     VARCHAR2(200 BYTE),
  EMPY_ADR_LN3     VARCHAR2(200 BYTE),
  EMPY_TEL         VARCHAR2(15 BYTE),
  EMPY_EMAIL       VARCHAR2(100 BYTE),
  EMPY_STATUT      VARCHAR2(200 BYTE)
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

COMMENT ON COLUMN DEMO_EMPLOYES.EMPY_UID IS 'Identifiant';


--rollback drop table DEMO_EMPLOYES;
