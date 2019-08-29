--liquibase formatted sql

--changeset Manel:7 dbms:oracle
ALTER TABLE DEMO_EMPLOYES
  Add SUPEVISOR NUMBER(12);