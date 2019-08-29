--liquibase formatted sql


--changeset bilel:5 dbms:oracle
CREATE OR REPLACE PACKAGE BODY        PKG_DEMO_GRH_001
IS
   V_MESSAGE   VARCHAR2 (255);
   E_ERROR     EXCEPTION;
   E_INFO      EXCEPTION;

   --Permet d'activer ou de désactiver une grille
   PROCEDURE DEMO_GRH_VALIDEREMPY (P_EMPY_UID NUMBER)
   IS
      V_EMPY_STATUT   VARCHAR2 (3);
   BEGIN
      SELECT EMPY_STATUT
        INTO V_EMPY_STATUT
        FROM DEMO_EMPLOYES
       WHERE EMPY_UID = P_EMPY_UID;

      IF UPPER (V_EMPY_STATUT) = 'VLD'
      THEN
         V_MESSAGE := 'Employé déjà validée .Action impossible. ';
         RAISE E_ERROR;
      END IF;



      UPDATE DEMO_EMPLOYES EMPY
         SET EMPY.EMPY_STATUT = 'VLD'
       WHERE EMPY_UID = P_EMPY_UID;

      COMMIT;
      V_MESSAGE := 'Validation Avec succés. ';
      RAISE E_INFO;
   EXCEPTION
      WHEN E_ERROR
      THEN
         RAISE_APPLICATION_ERROR (-20501, V_MESSAGE);
      WHEN E_INFO
      THEN
         RAISE_APPLICATION_ERROR (-20100, V_MESSAGE);
      WHEN OTHERS
      THEN
         RAISE_APPLICATION_ERROR (-20501, 'Problème Validation.');
   END DEMO_GRH_VALIDEREMPY;
END PKG_DEMO_GRH_001;
/