CREATE OR REPLACE PACKAGE P_KSL IS

  -- Author  : ANDREITATARU
  -- Created : 01-03-2016 8:53:02 PM
  -- Purpose : ksl calculation

  -- Public type declarations
  TYPE T_COL IS RECORD(
    CONTRACT         VARCHAR(200),
    BUSINESS_CLUSTER VARCHAR2(200),
    --SERVICE          VARCHAR2(200),
    CLOSED_DATE      VARCHAR2(200),
    INCIDENT_TYPE    VARCHAR2(200),
    PRIORITY         VARCHAR2(50),
    MISSED           NUMBER,
    OPENED           NUMBER,
    SERVICED         NUMBER,
    "%"              VARCHAR2(200),
    KSL              VARCHAR2(20)
    --,BOUNDARY         VARCHAR2(50)
    );
    
    TYPE T_COL_OVER IS RECORD(
    CONTRACT         VARCHAR(200),
    BUSINESS_CLUSTER VARCHAR2(200),
    --SERVICE          VARCHAR2(200),
    CLOSED_DATE      VARCHAR2(200),
    INCIDENT_TYPE    VARCHAR2(200),
    PRIORITY         VARCHAR2(50),
    MISSED           NUMBER,
    OPENED           NUMBER,
    SERVICED         NUMBER,
    "%"              VARCHAR2(200),
    KSL              VARCHAR2(20),
    ST               NUMBER,
    HT               NUMBER,
    PASSED           NUMBER,
    AMPEL            VARCHAR2(1 CHAR)
    --,BOUNDARY         VARCHAR2(50)
    );
    
    TYPE T_TABLE IS TABLE OF T_COL;
    TYPE T_TABLE_OVER IS TABLE OF T_COL_OVER;
  -- Public constant declarations

  -- Public variable declarations

  -- Public function and procedure declarations
  PROCEDURE KSL_2(P_BUSINESS_CLUSTER VARCHAR2, P_SERVICE VARCHAR2, P_CLOSED_DATE VARCHAR2);
  PROCEDURE KSL_2(P_BUSINESS_CLUSTER VARCHAR2, P_CLOSED_DATE VARCHAR2);

  FUNCTION KSL_11(P_BUSINESS_CLUSTER VARCHAR2, P_SERVICE VARCHAR2, P_CLOSED_DATE VARCHAR2)
    RETURN NUMBER;

----  
  FUNCTION KSL_11_T (P_BUSINESS_CLUSTER VARCHAR2, P_CLOSED_DATE VARCHAR2) RETURN T_TABLE PIPELINED;
 
FUNCTION Overview_T (P_BUSINESS_CLUSTER VARCHAR2, P_CLOSED_DATE VARCHAR2) RETURN T_TABLE_OVER PIPELINED;

END P_KSL;
/

