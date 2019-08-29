--liquibase formatted sql

--changeset bilel:2 dbms:oracle
CREATE UNIQUE INDEX EMPY_PK ON DEMO_EMPLOYES
(EMPY_UID)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );
