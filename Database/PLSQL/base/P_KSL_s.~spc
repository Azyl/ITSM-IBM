CREATE OR REPLACE PACKAGE P_KSL IS

  -- Author  : ANDREITATARU
  -- Created : 01-03-2016 8:53:02 PM
  -- Purpose : ksl calculation

  -- Public type declarations
  TYPE T_COL IS RECORD(
    CONTRACT         VARCHAR(200),
    BUSINESS_CLUSTER VARCHAR2(200),
    --SERVICE          VARCHAR2(200),
    CLOSED_DATE   VARCHAR2(200),
    INCIDENT_TYPE VARCHAR2(200),
    PRIORITY      VARCHAR2(50),
    MISSED        NUMBER,
    OPENED        NUMBER,
    SERVICED      NUMBER,
    "%"           VARCHAR2(200),
    KSL           VARCHAR2(20)
    --,BOUNDARY         VARCHAR2(50)
    );

  TYPE T_COL_OVER IS RECORD(
    CONTRACT         VARCHAR(200),
    BUSINESS_CLUSTER VARCHAR2(200),
    --SERVICE          VARCHAR2(200),
    CLOSED_DATE   VARCHAR2(200),
    INCIDENT_TYPE VARCHAR2(200),
    PRIORITY      VARCHAR2(50),
    MISSED        NUMBER,
    OPENED        NUMBER,
    SERVICED      NUMBER,
    "%"           VARCHAR2(200),
    KSL           VARCHAR2(20),
    ST            NUMBER,
    HT            NUMBER,
    PASSED        NUMBER,
    AMPEL         VARCHAR2(1 CHAR)
    --,BOUNDARY         VARCHAR2(50)
    );

  TYPE T_COL_OVER_R IS RECORD(
  
    CONTRACT         VARCHAR(200),
    BUSINESS_CLUSTER VARCHAR2(200),
    --SERVICE          VARCHAR2(200),
    CLOSED_DATE   VARCHAR2(200),
    
    "KSL 2"          VARCHAR2(200),
    "KSL 2_MISSED"   NUMBER,
    "KSL 2_OPENED"   NUMBER,
    "KSL 2_SERVICED" NUMBER,
    "KSL 2_ST"       NUMBER,
    "KSL 2_HT"       NUMBER,
    "KSL 2_PASS"     NUMBER,
    "KSL 2_AMPEL"    VARCHAR2(1 CHAR),
    
    "KSL 3"          VARCHAR2(200),
    "KSL 3_MISSED"   NUMBER,
    "KSL 3_OPENED"   NUMBER,
    "KSL 3_SERVICED" NUMBER,
    "KSL 3_ST"       NUMBER,
    "KSL 3_HT"       NUMBER,
    "KSL 3_PASS"     NUMBER,
    "KSL 3_AMPEL"    VARCHAR2(1 CHAR),
    
    "KSL 4"          VARCHAR2(200),
    "KSL 4_MISSED"   NUMBER,
    "KSL 4_OPENED"   NUMBER,
    "KSL 4_SERVICED" NUMBER,
    "KSL 4_ST"       NUMBER,
    "KSL 4_HT"       NUMBER,
    "KSL 4_PASS"     NUMBER,
    "KSL 4_AMPEL"    VARCHAR2(1 CHAR),
    
    "KSL 5"          VARCHAR2(200),
    "KSL 5_MISSED"   NUMBER,
    "KSL 5_OPENED"   NUMBER,
    "KSL 5_SERVICED" NUMBER,
    "KSL 5_ST"       NUMBER,
    "KSL 5_HT"       NUMBER,
    "KSL 5_PASS"     NUMBER,
    "KSL 5_AMPEL"    VARCHAR2(1 CHAR),
    
    "KSL 6"          VARCHAR2(200),
    "KSL 6_MISSED"   NUMBER,
    "KSL 6_OPENED"   NUMBER,
    "KSL 6_SERVICED" NUMBER,
    "KSL 6_ST"       NUMBER,
    "KSL 6_HT"       NUMBER,
    "KSL 6_PASS"     NUMBER,
    "KSL 6_AMPEL"    VARCHAR2(1 CHAR),
    
    "KSL 7"          VARCHAR2(200),
    "KSL 7_MISSED"   NUMBER,
    "KSL 7_OPENED"   NUMBER,
    "KSL 7_SERVICED" NUMBER,
    "KSL 7_ST"       NUMBER,
    "KSL 7_HT"       NUMBER,
    "KSL 7_PASS"     NUMBER,
    "KSL 7_AMPEL"    VARCHAR2(1 CHAR),
    
    "KSL 8"          VARCHAR2(200),
    "KSL 8_MISSED"   NUMBER,
    "KSL 8_OPENED"   NUMBER,
    "KSL 8_SERVICED" NUMBER,
    "KSL 8_ST"       NUMBER,
    "KSL 8_HT"       NUMBER,
    "KSL 8_PASS"     NUMBER,
    "KSL 8_AMPEL"    VARCHAR2(1 CHAR),
    
    "KSL 9"          VARCHAR2(200),
    "KSL 9_MISSED"   NUMBER,
    "KSL 9_OPENED"   NUMBER,
    "KSL 9_SERVICED" NUMBER,
    "KSL 9_ST"       NUMBER,
    "KSL 9_HT"       NUMBER,
    "KSL 9_PASS"     NUMBER,
    "KSL 9_AMPEL"    VARCHAR2(1 CHAR),
    
    "KSL 10"                VARCHAR2(200),
    "KSL 10_MISSED"         NUMBER,
    "KSL 10_OPENED"         NUMBER,
    "KSL 10_SERVICED"       NUMBER,
    "KSL 10_ST"             NUMBER,
    "KSL 10_HT"             NUMBER,
    "KSL 10_PASS"           NUMBER,
    "KSL 10_AMPEL"          VARCHAR2(1 CHAR),
    
    "KSL 11"          VARCHAR2(200),
    "KSL 11_MISSED"   NUMBER,
    "KSL 11_OPENED"   NUMBER,
    "KSL 11_SERVICED" NUMBER,
    "KSL 11_ST"       NUMBER,
    "KSL 11_HT"       NUMBER,
    "KSL 11_PASS"     NUMBER,
    "KSL 11_AMPEL"    VARCHAR2(1 CHAR),
    
    "KSL 12"          VARCHAR2(200),
    "KSL 12_MISSED"   NUMBER,
    "KSL 12_OPENED"   NUMBER,
    "KSL 12_SERVICED" NUMBER,
    "KSL 12_ST"       NUMBER,
    "KSL 12_HT"       NUMBER,
    "KSL 12_PASS"     NUMBER,
    "KSL 12_AMPEL"    VARCHAR2(1 CHAR),
    
    "KM 3"          VARCHAR2(200),
    "KM 3_MISSED"   NUMBER,
    "KM 3_OPENED"   NUMBER,
    "KM 3_SERVICED" NUMBER,
    "KM 3_ST"       NUMBER,
    "KM 3_HT"       NUMBER,
    "KM 3_PASS"     NUMBER,
    "KM 3_AMPEL"    VARCHAR2(1 CHAR),
    
    "KM 4"          VARCHAR2(200),
    "KM 4_MISSED"   NUMBER,
    "KM 4_OPENED"   NUMBER,
    "KM 4_SERVICED" NUMBER,
    "KM 4_ST"       NUMBER,
    "KM 4_HT"       NUMBER,
    "KM 4_PASS"     NUMBER,
    "KM 4_AMPEL"    VARCHAR2(1 CHAR),
    
    "KM 5"          VARCHAR2(200),
    "KM 5_MISSED"   NUMBER,
    "KM 5_OPENED"   NUMBER,
    "KM 5_SERVICED" NUMBER,
    "KM 5_ST"       NUMBER,
    "KM 5_HT"       NUMBER,
    "KM 5_PASS"     NUMBER,
    "KM 5_AMPEL"    VARCHAR2(1 CHAR),
    
    "KM 6"          VARCHAR2(200),
    "KM 6_MISSED"   NUMBER,
    "KM 6_OPENED"   NUMBER,
    "KM 6_SERVICED" NUMBER,
    "KM 6_ST"       NUMBER,
    "KM 6_HT"       NUMBER,
    "KM 6_PASS"     NUMBER,
    "KM 6_AMPEL"    VARCHAR2(1 CHAR),
    
    "KM 7"          VARCHAR2(200),
    "KM 7_MISSED"   NUMBER,
    "KM 7_OPENED"   NUMBER,
    "KM 7_SERVICED" NUMBER,
    "KM 7_ST"       NUMBER,
    "KM 7_HT"       NUMBER,
    "KM 7_PASS"     NUMBER,
    "KM 7_AMPEL"    VARCHAR2(1 CHAR),
    
    "KM 9"                VARCHAR2(200),
    "KM 9_MISSED"         NUMBER,
    "KM 9_OPENED"         NUMBER,
    "KM 9_SERVICED"NUMBER,
    "KM 9_ST"             NUMBER,
    "KM 9_HT"             NUMBER,
    "KM 9_PASS"           NUMBER,
    "KM 9_AMPEL"          VARCHAR2(1 CHAR),
    
    "KM 11"          VARCHAR2(200),
    "KM 11_MISSED"   NUMBER,
    "KM 11_OPENED"   NUMBER,
    "KM 11_SERVICED" NUMBER,
    "KM 11_ST"       NUMBER,
    "KM 11_HT"       NUMBER,
    "KM 11_PASS"     NUMBER,
    "KM 11_AMPEL"    VARCHAR2(1 CHAR),
    
    "KM 12"          VARCHAR2(200),
    "KM 12_MISSED"   NUMBER,
    "KM 12_OPENED"   NUMBER,
    "KM 12_SERVICED" NUMBER,
    "KM 12_ST"       NUMBER,
    "KM 12_HT"       NUMBER,
    "KM 12_PASS"     NUMBER,
    "KM 12_AMPEL"    VARCHAR2(1 CHAR),
    
    "KM 13"          VARCHAR2(200),
    "KM 13_MISSED"   NUMBER,
    "KM 13_OPENED"   NUMBER,
    "KM 13_SERVICED" NUMBER,
    "KM 13_ST"       NUMBER,
    "KM 13_HT"       NUMBER,
    "KM 13_PASS"     NUMBER,
    "KM 13_AMPEL"    VARCHAR2(1 CHAR),
    
    "KM 14"          VARCHAR2(200),
    "KM 14_MISSED"   NUMBER,
    "KM 14_OPENED"   NUMBER,
    "KM 14_SERVICED" NUMBER,
    "KM 14_ST"       NUMBER,
    "KM 14_HT"       NUMBER,
    "KM 14_PASS"     NUMBER,
    "KM 14_AMPEL"    VARCHAR2(1 CHAR),
    
    "KM 15"          VARCHAR2(200),
    "KM 15_MISSED"   NUMBER,
    "KM 15_OPENED"   NUMBER,
    "KM 15_SERVICED" NUMBER,
    "KM 15_ST"       NUMBER,
    "KM 15_HT"       NUMBER,
    "KM 15_PASS"     NUMBER,
    "KM 15_AMPEL"    VARCHAR2(1 CHAR)
    
    );
    
    
  TYPE T_TABLE IS TABLE OF T_COL;
  TYPE T_TABLE_OVER IS TABLE OF T_COL_OVER;
  TYPE T_TABLE_OVER_R IS TABLE OF T_COL_OVER_R;
  -- Public constant declarations

  -- Public variable declarations

  PROCEDURE TEST;

  -- Public function and procedure declarations
  PROCEDURE KSL_2(P_BUSINESS_CLUSTER VARCHAR2, P_SERVICE VARCHAR2, P_CLOSED_DATE VARCHAR2);
  PROCEDURE KSL_2(P_BUSINESS_CLUSTER VARCHAR2, P_CLOSED_DATE VARCHAR2);

  FUNCTION KSL_11(P_BUSINESS_CLUSTER VARCHAR2, P_SERVICE VARCHAR2, P_CLOSED_DATE VARCHAR2)
    RETURN NUMBER;

  ----  
  FUNCTION KSL_11_T(P_BUSINESS_CLUSTER VARCHAR2, P_CLOSED_DATE VARCHAR2) RETURN T_TABLE
    PIPELINED;

  FUNCTION OVERVIEW_T(P_BUSINESS_CLUSTER VARCHAR2, P_CLOSED_DATE VARCHAR2) RETURN T_TABLE_OVER
    PIPELINED;
    
  FUNCTION OVERVIEW_R(PP_BUSINESS_CLUSTER VARCHAR2, PP_CLOSED_DATE VARCHAR2) RETURN T_TABLE_OVER_R
    PIPELINED;

END P_KSL;
/
