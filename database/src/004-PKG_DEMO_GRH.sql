--liquibase formatted sql


--changeset bilel:4 dbms:oracle
CREATE OR REPLACE PACKAGE PKG_DEMO_GRH_001
AS
   /******************************************************************************
      NAME:       PKG_DEMO_GRH_001
      PURPOSE:

      REVISIONS:
      Ver        Date        Author           Description
      ---------  ----------  ---------------  ------------------------------------
      1.0        29/07/2019      Administrateur       1. Created this package.
   ******************************************************************************/


   PROCEDURE DEMO_GRH_VALIDEREMPY (P_EMPY_UID IN NUMBER);
END PKG_DEMO_GRH_001;
/