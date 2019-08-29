
    @write @DEMO_GRH_VALIDEREMPYt4
    Feature: DEMO_GRH_VALIDEREMPY
      Background:
        Given database "jdbc:oracle:thin:/@0.0.0.0:1521/ORCLCDB" login "c##userdemo2" pass "demo"
      Scenario: test_Fail
        Given var "statut" "varchar(10)"
        When "DELETE FROM DEMO_EMPLOYES"
        And "INSERT INTO DEMO_EMPLOYES (EMPY_UID, EMPY_STATUT) VALUES (1, 'VLD')"
        And "PKG_DEMO_GRH_001.DEMO_GRH_VALIDEREMPY(1)"
        And " SELECT EMPY_STATUT         INTO statut         FROM DEMO_EMPLOYES        WHERE EMPY_UID = 1"
          Then  raiseException "-20501"

      Scenario: test_Success
        Given var "statut" "varchar(10)"
        When "DELETE FROM DEMO_EMPLOYES"
        And "INSERT INTO DEMO_EMPLOYES (EMPY_UID, EMPY_STATUT) VALUES (1, 'XXX')"
        And "PKG_DEMO_GRH_001.DEMO_GRH_VALIDEREMPY(1)"
        And " SELECT EMPY_STATUT         INTO statut         FROM DEMO_EMPLOYES        WHERE EMPY_UID = 1"
          Then "statut" equals "'VLD'"
          And  raiseException "-20100"
