--liquibase formatted sql

--changeset bilel:3 dbms:oracle
ALTER TABLE DEMO_EMPLOYES ADD (
  CONSTRAINT EMPY_PK
  PRIMARY KEY
  (EMPY_UID)
  USING INDEX EMPY_PK
  ENABLE VALIDATE);