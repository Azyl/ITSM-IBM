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
CREATE OR REPLACE PACKAGE BODY P_KSL IS

  -- Private type declarations

  -- Private constant declarations

  -- Private variable declarations

  -- Function and procedure implementations
  PROCEDURE test IS
	a T_TABLE_OVER;
  BEGIN
	FOR I IN (SELECT DISTINCT BUSINESS_CLUSTER, CLOSED_DATE FROM MV_ORGANIZATION) LOOP
    DBMS_OUTPUT.PUT_LINE('business_cluster=' || I.BUSINESS_CLUSTER || ' closed_date=' ||
                         I.CLOSED_DATE);
    SELECT P_KSL.OVERVIEW_T(P_BUSINESS_CLUSTER => I.BUSINESS_CLUSTER,
                            P_CLOSED_DATE      => I.CLOSED_DATE)
      INTO A
      FROM DUAL;
  
  END LOOP;
  END test;
  
  
  PROCEDURE KSL_2(P_BUSINESS_CLUSTER VARCHAR2, P_SERVICE VARCHAR2, P_CLOSED_DATE VARCHAR2) IS
    MISSED_CNT   NUMBER;
    ACHIEVED_CNT NUMBER;
    SERVICED_CNT NUMBER;
    PROCENT      VARCHAR2(100);
  BEGIN
  
    SELECT
    --CONTRACT,
    --BUSINESS_CLUSTER,
    --SERVICE,
    --TO_CHAR("CLOSED_DATE", 'YYYY_MM') AS "CLOSED_DATE",
    --INCIDENT_TYPE,
    --PRIORITY,
     ABS(COUNT(*) - COALESCE(SUM(SOLUTION_TIME_ACHIEVED_FLAG), 0)) AS "MISSED",
     SUM(SOLUTION_TIME_ACHIEVED_FLAG) AS ACHIEVED,
     COUNT(*) AS SERVICED,
     
     ROUND(DECODE(SUM(SOLUTION_TIME_ACHIEVED_FLAG), 0, COUNT(*), SUM(SOLUTION_TIME_ACHIEVED_FLAG)) /
           (COUNT(*)),
           3) * 100 || '% ' AS "%"
    
      INTO MISSED_CNT, ACHIEVED_CNT, SERVICED_CNT, PROCENT
    
      FROM V_KSL_2_11
     WHERE STATUS = 'Closed'
       AND COC_STATUS = 'Current'
     GROUP BY CONTRACT,
              BUSINESS_CLUSTER,
              SERVICE,
              TO_CHAR("CLOSED_DATE", 'YYYY_MM'),
              INCIDENT_TYPE,
              PRIORITY
    HAVING BUSINESS_CLUSTER = P_BUSINESS_CLUSTER AND SERVICE = P_SERVICE AND TO_CHAR("CLOSED_DATE", 'YYYY_MM') = P_CLOSED_DATE AND INCIDENT_TYPE = 'User Service Restoration' AND PRIORITY = 'Critical';
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      MISSED_CNT   := 0;
      ACHIEVED_CNT := 0;
      SERVICED_CNT := 0;
      PROCENT      := '100%';
  END KSL_2;

  PROCEDURE KSL_2(P_BUSINESS_CLUSTER VARCHAR2, P_CLOSED_DATE VARCHAR2) IS
    MISSED_CNT   NUMBER;
    ACHIEVED_CNT NUMBER;
    SERVICED_CNT NUMBER;
    PROCENT      VARCHAR2(100);
  BEGIN
  
    SELECT
    --CONTRACT,
    --BUSINESS_CLUSTER,
    --SERVICE,
    --TO_CHAR("CLOSED_DATE", 'YYYY_MM') AS "CLOSED_DATE",
    --INCIDENT_TYPE,
    --PRIORITY,
     ABS(COUNT(*) - COALESCE(SUM(SOLUTION_TIME_ACHIEVED_FLAG), 0)) AS "MISSED",
     SUM(SOLUTION_TIME_ACHIEVED_FLAG) AS ACHIEVED,
     COUNT(*) AS SERVICED,
     
     ROUND(DECODE(SUM(SOLUTION_TIME_ACHIEVED_FLAG), 0, COUNT(*), SUM(SOLUTION_TIME_ACHIEVED_FLAG)) /
           (COUNT(*)),
           3) * 100 || '% ' AS "%"
    
      INTO MISSED_CNT, ACHIEVED_CNT, SERVICED_CNT, PROCENT
    
      FROM V_KSL_2_11
     WHERE STATUS = 'Closed'
       AND COC_STATUS = 'Current'
     GROUP BY CONTRACT,
              BUSINESS_CLUSTER,
              TO_CHAR("CLOSED_DATE", 'YYYY_MM'),
              INCIDENT_TYPE,
              PRIORITY
    HAVING BUSINESS_CLUSTER = P_BUSINESS_CLUSTER AND TO_CHAR("CLOSED_DATE", 'YYYY_MM') = P_CLOSED_DATE AND INCIDENT_TYPE = 'User Service Restoration' AND PRIORITY = 'Critical';
  
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      MISSED_CNT   := 0;
      ACHIEVED_CNT := 0;
      SERVICED_CNT := 0;
      PROCENT      := '100%';
    
  END KSL_2;

  FUNCTION KSL_11(P_BUSINESS_CLUSTER VARCHAR2, P_SERVICE VARCHAR2, P_CLOSED_DATE VARCHAR2)
    RETURN NUMBER IS
    OPENED NUMBER;
  BEGIN
  
    SELECT COUNT(*)
      INTO OPENED
      FROM V_KSL_11_CLOSED
     WHERE INCIDENT_TYPE IN ('User Service Restoration', 'User Service Request')
       AND (TRUNC(SUBMIT_DATE) < TO_DATE(P_CLOSED_DATE, 'yyyy_mm') AND
           (NOT STATUS IN ('Closed', 'Cancelled') OR
           (STATUS = ('Closed') AND
           TRUNC(CLOSED_DATE) > LAST_DAY(TO_DATE(P_CLOSED_DATE, 'yyyy_mm')))))
       AND COC_STATUS = 'Current'
     GROUP BY CONTRACT, BUSINESS_CLUSTER, SERVICE, TO_CHAR("CLOSED_DATE", 'YYYY_MM')
    HAVING CONTRACT = 'CAEE II' AND BUSINESS_CLUSTER = P_BUSINESS_CLUSTER AND SERVICE = P_SERVICE;
  
    RETURN OPENED;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      OPENED := 0;
    
      RETURN OPENED;
    
  END KSL_11;



   FUNCTION KSL_11_T (P_BUSINESS_CLUSTER VARCHAR2, P_CLOSED_DATE VARCHAR2) RETURN T_TABLE PIPELINED
     IS
     
     rec T_COL;
     
     BEGIN
       
       
     
            
SELECT 

q.contract, q.business_cluster,q.closed_date,'All' AS incident_type,'All' AS priority,

11*(SELECT COUNT( DISTINCT service) FROM mv_organization m WHERE m.contract=q.contract AND m.business_cluster=q.business_cluster )-SUM(passed) AS missed,
SUM(passed) AS achieved,
11*(SELECT COUNT( DISTINCT service) FROM mv_organization m WHERE m.contract=q.contract AND m.business_cluster=q.business_cluster ) AS serviced,

ROUND(DECODE(SUM(passed),0,COUNT(*),SUM(passed)) / (11*(SELECT COUNT( DISTINCT service) FROM mv_organization m WHERE m.contract=q.contract AND m.business_cluster=q.business_cluster )),
                                                  3) * 100 || '% ' AS "%",
'KM 11' AS "KSL"

INTO rec

FROM (

SELECT DATA.*,
       KSL.ST,
       KSL.HT,
       CASE
         WHEN RTRIM(DATA."%", '% ') >= KSL.HT THEN
          1
         ELSE
          0
       END AS PASSED,
       CASE
         WHEN RTRIM(DATA."%", '% ') >= KSL.ST AND RTRIM(DATA."%", '% ') >= KSL.HT THEN
          'G'
         WHEN RTRIM(DATA."%", '% ') >= KSL.ST AND RTRIM(DATA."%", '% ') < KSL.HT THEN
          'Y'
         ELSE
          'R'
       END AS AMPEL

  FROM (
        
        SELECT Z.CONTRACT,
                Z.BUSINESS_CLUSTER,
                Z.SERVICE,
                Z.CLOSED_DATE,
                Z.INCIDENT_TYPE,
                Z.PRIORITY,
                Z.MISSED,
                Z.ACHIEVED,
                Z.SERVICED,
                z."%",
                Z.KSL
          FROM (WITH A AS (SELECT CONTRACT,
                                   BUSINESS_CLUSTER,
                                   SERVICE,
                                   TO_CHAR("CLOSED_DATE", 'YYYY_MM') AS "CLOSED_DATE",
                                   INCIDENT_TYPE,
                                   PRIORITY,
                                   ABS(COUNT(*) - COALESCE(SUM(SOLUTION_TIME_ACHIEVED_FLAG), 0)) AS "MISSED",
                                   SUM(SOLUTION_TIME_ACHIEVED_FLAG) AS ACHIEVED,
                                   COUNT(*) AS SERVICED,
                                   
                                   ROUND(DECODE(SUM(SOLUTION_TIME_ACHIEVED_FLAG),
                                                0,
                                                COUNT(*),
                                                SUM(SOLUTION_TIME_ACHIEVED_FLAG)) / (COUNT(*)),
                                         3) * 100 || '% ' AS "%"
                            
                              FROM V_KSL_2_11
                            
                             WHERE
                            
                             STATUS = 'Closed'
                         AND COC_STATUS = 'Current'
                            
                             GROUP BY CONTRACT,
                                      BUSINESS_CLUSTER,
                                      SERVICE,
                                      TO_CHAR("CLOSED_DATE", 'YYYY_MM'),
                                      INCIDENT_TYPE,
                                      PRIORITY)
                
                  SELECT M.*,
                         COALESCE(A.MISSED, 0) AS MISSED,
                         COALESCE(A.ACHIEVED, 0) AS ACHIEVED,
                         COALESCE(A.SERVICED, 0) AS SERVICED,
                         COALESCE(a."%", '100%') AS "%",
                         CASE
                           WHEN M.PRIORITY = 'Low' THEN
                            'KSL 5'
                           WHEN M.PRIORITY = 'Medium' THEN
                            'KSL 4'
                           WHEN M.PRIORITY = 'High' THEN
                            'KSL 3'
                           WHEN M.PRIORITY = 'Critical' THEN
                            'KSL 2'
                         END AS KSL
                    FROM MV_ORGANIZATION M
                    LEFT OUTER JOIN A
                      ON (M.CONTRACT = A.CONTRACT AND M.BUSINESS_CLUSTER = A.BUSINESS_CLUSTER AND
                         M.SERVICE = A.SERVICE AND M.INCIDENT_TYPE = A.INCIDENT_TYPE AND
                         M.PRIORITY = A.PRIORITY AND M.CLOSED_DATE = A.CLOSED_DATE)
                  
                   ) Z
                  
                   WHERE Z.INCIDENT_TYPE = 'User Service Restoration'
                     AND Z.BUSINESS_CLUSTER = P_BUSINESS_CLUSTER
                     AND Z.CLOSED_DATE = P_CLOSED_DATE
                  --  ORDER BY Z.CONTRACT, Z.BUSINESS_CLUSTER, Z.SERVICE, Z.INCIDENT_TYPE, Z.PRIORITY 
                  --KSL 2-5
                  UNION
                  
                  SELECT Z.CONTRACT,
                         Z.BUSINESS_CLUSTER,
                         Z.SERVICE,
                         Z.CLOSED_DATE,
                         'Infrastructure Event & Infrastructure Restoration' AS INCIDENT_TYPE,
                         Z.PRIORITY,
                         SUM(Z.MISSED) AS MISSED,
                         SUM(Z.ACHIEVED) AS ACHIEVED,
                         SUM(Z.SERVICED) AS SERVICED,
                          DECODE(SUM(Z.SERVICED), 0, 1,
                          ROUND(DECODE(SUM(Z.ACHIEVED), 0, SUM(Z.SERVICED), SUM(Z.ACHIEVED)) /
                                DECODE(SUM(Z.SERVICED), 0, 1, SUM(Z.SERVICED)),
                                3)) * 100 || '% ' AS "%",
                                
                        /*  ROUND(DECODE(SUM(Z.ACHIEVED), 0, SUM(Z.SERVICED), SUM(Z.ACHIEVED)) /
                                DECODE(SUM(Z.SERVICED), 0, 100, SUM(Z.SERVICED)),
                                3)) * 100 || '% ' AS "%",*/
                         
                         Z.KSL
                  
                    FROM (WITH A AS (SELECT CONTRACT,
                                            BUSINESS_CLUSTER,
                                            SERVICE,
                                            TO_CHAR("CLOSED_DATE", 'YYYY_MM') AS "CLOSED_DATE",
                                            INCIDENT_TYPE,
                                            PRIORITY,
                                            ABS(COUNT(*) - COALESCE(SUM(SOLUTION_TIME_ACHIEVED_FLAG), 0)) AS "MISSED",
                                            SUM(SOLUTION_TIME_ACHIEVED_FLAG) AS ACHIEVED,
                                            COUNT(*) AS SERVICED,
                                            
                                            ROUND(DECODE(SUM(SOLUTION_TIME_ACHIEVED_FLAG),
                                                         0,
                                                         COUNT(*),
                                                         SUM(SOLUTION_TIME_ACHIEVED_FLAG)) / (COUNT(*)),
                                                  3) * 100 || '% ' AS "%"
                                     
                                       FROM V_KSL_2_11
                                     
                                      WHERE
                                     
                                      STATUS = 'Closed'
                                  AND COC_STATUS = 'Current'
                                     
                                      GROUP BY CONTRACT,
                                               BUSINESS_CLUSTER,
                                               SERVICE,
                                               TO_CHAR("CLOSED_DATE", 'YYYY_MM'),
                                               INCIDENT_TYPE,
                                               PRIORITY)
                         
                           SELECT M.*,
                                  COALESCE(A.MISSED, 0) AS MISSED,
                                  COALESCE(A.ACHIEVED, 0) AS ACHIEVED,
                                  COALESCE(A.SERVICED, 0) AS SERVICED,
                                  COALESCE(a."%", '100%') AS "%",
                                  CASE
                                    WHEN M.PRIORITY = 'Low' THEN
                                     'KSL 9'
                                    WHEN M.PRIORITY = 'Medium' THEN
                                     'KSL 8'
                                    WHEN M.PRIORITY = 'High' THEN
                                     'KSL 7'
                                    WHEN M.PRIORITY = 'Critical' THEN
                                     'KSL 6'
                                  END AS KSL
                             FROM MV_ORGANIZATION M
                             LEFT OUTER JOIN A
                               ON (M.CONTRACT = A.CONTRACT AND M.BUSINESS_CLUSTER = A.BUSINESS_CLUSTER AND
                                  M.SERVICE = A.SERVICE AND M.INCIDENT_TYPE = A.INCIDENT_TYPE AND
                                  M.PRIORITY = A.PRIORITY AND M.CLOSED_DATE = A.CLOSED_DATE)
                           
                            ) Z
                           
                            WHERE Z.INCIDENT_TYPE IN
                                  ('Infrastructure Event', 'Infrastructure Restoration')
                              AND Z.BUSINESS_CLUSTER = P_BUSINESS_CLUSTER
                              AND Z.CLOSED_DATE = P_CLOSED_DATE
                           
                            GROUP BY Z.CONTRACT,
                                     Z.BUSINESS_CLUSTER,
                                     Z.ORGANIZATION,
                                     Z.SERVICE,
                                     Z.PRIORITY,
                                     Z.CLOSED_DATE,
                                     Z.KSL
                           
                           --ORDER BY Z.CONTRACT, Z.BUSINESS_CLUSTER, Z.SERVICE, Z.PRIORITY
                           --ksl 6-9
                           UNION
                           
                           SELECT Z.CONTRACT,
                                  Z.BUSINESS_CLUSTER,
                                  Z.SERVICE,
                                  Z.CLOSED_DATE,
                                  'User Service Request' AS INCIDENT_TYPE,
                                  'All' AS PRIORITY,
                                  SUM(Z.MISSED) AS MISSED,
                                  SUM(Z.ACHIEVED) AS ACHIEVED,
                                  SUM(Z.SERVICED) AS SERVICED,
                                  
                                  DECODE(ROUND(DECODE(SUM(Z.ACHIEVED),
                                                      0,
                                                      SUM(Z.SERVICED),
                                                      SUM(Z.ACHIEVED)) /
                                               DECODE(SUM(Z.SERVICED), 0, 100, SUM(Z.SERVICED)),
                                               3),
                                         0,
                                         1,
                                        /* ROUND(DECODE(SUM(Z.ACHIEVED),
                                                      0,
                                                      SUM(Z.SERVICED),
                                                      SUM(Z.ACHIEVED)) /
                                               DECODE(SUM(Z.SERVICED), 0, 100, SUM(Z.SERVICED)),
                                               3)) * 100 || '% ' AS "%",*/
                                        ROUND(SUM(Z.ACHIEVED) /DECODE(SUM(Z.SERVICED), 0, 1, SUM(Z.SERVICED)),3)) * 100 || '% ' AS "%",
                                  
                                  Z.KSL
                           
                             FROM (WITH A AS (SELECT CONTRACT,
                                                     BUSINESS_CLUSTER,
                                                     SERVICE,
                                                     TO_CHAR("CLOSED_DATE", 'YYYY_MM') AS "CLOSED_DATE",
                                                     INCIDENT_TYPE,
                                                     PRIORITY,
                                                     ABS(COUNT(*) -
                                                         COALESCE(SUM(SOLUTION_TIME_ACHIEVED_FLAG), 0)) AS "MISSED",
                                                     SUM(SOLUTION_TIME_ACHIEVED_FLAG) AS ACHIEVED,
                                                     COUNT(*) AS SERVICED,
                                                     
                                                     ROUND(DECODE(SUM(SOLUTION_TIME_ACHIEVED_FLAG),
                                                                  0,
                                                                  COUNT(*),
                                                                  SUM(SOLUTION_TIME_ACHIEVED_FLAG)) /
                                                           (COUNT(*)),
                                                           3) * 100 || '% ' AS "%"

                                              
                                                FROM V_KSL_2_11
                                              
                                               WHERE
                                              
                                               STATUS = 'Closed'
                                           AND COC_STATUS = 'Current'
                                              
                                               GROUP BY CONTRACT,
                                                        BUSINESS_CLUSTER,
                                                        SERVICE,
                                                        TO_CHAR("CLOSED_DATE", 'YYYY_MM'),
                                                        INCIDENT_TYPE,
                                                        PRIORITY)
                                  
                                    SELECT M.*,
                                           COALESCE(A.MISSED, 0) AS MISSED,
                                           COALESCE(A.ACHIEVED, 0) AS ACHIEVED,
                                           COALESCE(A.SERVICED, 0) AS SERVICED,
                                           COALESCE(a."%", '100%') AS "%",
                                           'KSL 10' AS KSL
                                      FROM MV_ORGANIZATION M
                                      LEFT OUTER JOIN A
                                        ON (M.CONTRACT = A.CONTRACT AND
                                           M.BUSINESS_CLUSTER = A.BUSINESS_CLUSTER AND
                                           M.SERVICE = A.SERVICE AND M.INCIDENT_TYPE = A.INCIDENT_TYPE AND
                                           M.PRIORITY = A.PRIORITY AND M.CLOSED_DATE = A.CLOSED_DATE)
                                    
                                     ) Z
                                    
                                     WHERE Z.INCIDENT_TYPE = 'User Service Request'
                                       AND Z.BUSINESS_CLUSTER = P_BUSINESS_CLUSTER
                                       AND Z.CLOSED_DATE = P_CLOSED_DATE
                                    
                                     GROUP BY Z.CONTRACT,
                                              Z.BUSINESS_CLUSTER,
                                              Z.ORGANIZATION,
                                              Z.SERVICE,
                                              Z.CLOSED_DATE,
                                              Z.KSL
                                    
                                    -- ORDER BY Z.CONTRACT, Z.BUSINESS_CLUSTER, Z.SERVICE
                                    --ksl 10
                                    UNION
                                    
                                    SELECT Z.CONTRACT,
                                           Z.BUSINESS_CLUSTER,
                                           Z.SERVICE,
                                           Z.CLOSED_DATE,
                                           'Problem investigation' AS INCIDENT_TYPE,
                                           Z.PRIORITY AS PRIORITY,
                                           SUM(Z.MISSED) AS MISSED,
                                           SUM(Z.ACHIEVED) AS ACHIEVED,
                                           SUM(Z.SERVICED) AS SERVICED,
                                           
                                           DECODE(ROUND(DECODE(SUM(Z.ACHIEVED),
                                                               0,
                                                               SUM(Z.SERVICED),
                                                               SUM(Z.ACHIEVED)) /
                                                        DECODE(SUM(Z.SERVICED), 0, 100, SUM(Z.SERVICED)),
                                                        3),
                                                  0,
                                                  1,
                                                  ROUND(DECODE(SUM(Z.ACHIEVED),
                                                               0,
                                                               SUM(Z.SERVICED),
                                                               SUM(Z.ACHIEVED)) /
                                                        DECODE(SUM(Z.SERVICED), 0, 100, SUM(Z.SERVICED)),
                                                        3)) * 100 || '% ' AS "%"
                                           
                                           ,
                                           Z.KSL
                                    
                                      FROM (WITH A AS (SELECT CONTRACT,
                                                              BUSINESS_CLUSTER,
                                                              SERVICE,
                                                              COALESCE(COMPLETED_DATE_YEAR_MONTH,
                                                                       TO_CHAR(CLOSED_DATE, 'YYYY_MM')) AS CLOSED_DATE,
                                                              --  INCIDENT_TYPE,
                                                              PRIORITY,
                                                              ABS(COUNT(*) - COALESCE(SUM(INVT_TARGET_ACHIEVED_FLAG),
                                                                                      0)) AS "MISSED",
                                                              SUM(INVT_TARGET_ACHIEVED_FLAG) AS ACHIEVED,
                                                              COUNT(*) AS SERVICED,
                                                              
                                                              ROUND(DECODE(SUM(INVT_TARGET_ACHIEVED_FLAG),
                                                                           0,
                                                                           COUNT(*),
                                                                           SUM(INVT_TARGET_ACHIEVED_FLAG)) /
                                                                    (COUNT(*)),
                                                                    3) * 100 || '% ' AS "%"
                                                       
                                                         FROM V_KSL_12
                                                       
                                                        WHERE
                                                       
                                                        STATUS IN ('Closed', 'Completed')
                                                    AND COC_STATUS = 'Current'
                                                       
                                                        GROUP BY CONTRACT,
                                                                 BUSINESS_CLUSTER,
                                                                 SERVICE,
                                                                 COALESCE(COMPLETED_DATE_YEAR_MONTH,
                                                                          TO_CHAR(CLOSED_DATE, 'YYYY_MM')),
                                                                 -- INCIDENT_TYPE,
                                                                 PRIORITY)
                                           
                                             SELECT M.*,
                                                    COALESCE(A.MISSED, 0) AS MISSED,
                                                    COALESCE(A.ACHIEVED, 0) AS ACHIEVED,
                                                    COALESCE(A.SERVICED, 0) AS SERVICED,
                                                    COALESCE(a."%", '100%') AS "%",
                                                    'KSL 12' AS KSL
                                               FROM MV_ORGANIZATION M
                                               LEFT OUTER JOIN A
                                                 ON (M.CONTRACT = A.CONTRACT AND
                                                    M.BUSINESS_CLUSTER = A.BUSINESS_CLUSTER AND
                                                    M.SERVICE = A.SERVICE
                                                    --AND M.INCIDENT_TYPE = A.INCIDENT_TYPE 
                                                    AND M.PRIORITY = A.PRIORITY AND
                                                    M.CLOSED_DATE = A.CLOSED_DATE
                                                    
                                                    )) Z
                                             
                                              WHERE
                                             --Z.INCIDENT_TYPE IN ('User Service Request','User Service Restoration')
                                              Z.BUSINESS_CLUSTER = P_BUSINESS_CLUSTER
                                              AND Z.CLOSED_DATE = P_CLOSED_DATE
                                          AND Z.PRIORITY = 'Critical'
                                              GROUP BY Z.CONTRACT,
                                                       Z.BUSINESS_CLUSTER,
                                                       Z.ORGANIZATION,
                                                       Z.SERVICE,
                                                       Z.PRIORITY,
                                                       Z.CLOSED_DATE,
                                                       Z.KSL
                                             
                                             --  ORDER BY Z.CONTRACT, Z.BUSINESS_CLUSTER, Z.SERVICE
                                             --KSL 12
                                             UNION
                                             
 SELECT z.CONTRACT,
       z.BUSINESS_CLUSTER,
       z.service,
       z.CLOSED_DATE,
       z.INCIDENT_TYPE,
       z.PRIORITY,
       z.MISSED,
       z.achieved,
       z.serviced,
       DECODE(z.serviced,0,1,(ROUND((z.serviced - z.achieved - z.MISSED) / DECODE(z.serviced,0, 1,z.serviced),3))) * 100 || '% ' AS "%",
    --   (ROUND((z.serviced - z.achieved - z.MISSED) / DECODE(z.serviced,0, 1,z.serviced),3)) * 100 || '% ' AS "%",
    -- (ROUND((SUM(z.serviced) - SUM(z.achieved) - SUM(z.MISSED)) / DECODE(SUM(z.serviced),0, 1,SUM(z.serviced)),3)) * 100 || '% ' AS "%",
     z.ksl

FROM (
SELECT M.CONTRACT,
       M.BUSINESS_CLUSTER,
       M.SERVICE,
       M.CLOSED_DATE,
       'User Service Restoration & User Service Request' AS INCIDENT_TYPE,
       'All' AS PRIORITY,
       COALESCE(B.MISSED, 0) AS MISSED,
       COALESCE(
       
      (SELECT COUNT(*)
                                                                     
                                                                       FROM V_KSL_11_CLOSED X
                                                                      WHERE X.INCIDENT_TYPE IN
                                                                            ('User Service Restoration', 'User Service Request')
                                                                        AND (TRUNC(X.SUBMIT_DATE) < TO_DATE(M.CLOSED_DATE, 'yyyy_mm') AND
                                                                            (NOT X.STATUS IN ('Closed', 'Cancelled') OR
                                                                            (X.STATUS = ('Closed') AND
                                                                            TRUNC(X.CLOSED_DATE) >
                                                                            LAST_DAY(TO_DATE(M.CLOSED_DATE, 'yyyy_mm')))))
                                                                        AND X.COC_STATUS = 'Current'
																		AND X.CONTRACT = 'CAEE II'
																		--AND X.BUSINESS_CLUSTER = M.BUSINESS_CLUSTER 
																		AND X.BUSINESS_CLUSTER = P_BUSINESS_CLUSTER 
																		AND X.SERVICE=M.SERVICE
                                                                      GROUP BY X.CONTRACT,
                                                                               X.BUSINESS_CLUSTER,
                                                                               X.SERVICE,
                                                                               TO_CHAR(x."CLOSED_DATE", 'YYYY_MM')
                                                                     --HAVING X.CONTRACT = 'CAEE II' AND X.BUSINESS_CLUSTER = M.BUSINESS_CLUSTER AND X.SERVICE=M.SERVICE
																	 )
       
       
       , 0) AS ACHIEVED,
       COALESCE(A.SERVICED, 0) AS SERVICED,
       'KSL 11' AS KSL
  FROM (SELECT DISTINCT N.CONTRACT, N.BUSINESS_CLUSTER,n.service, N.CLOSED_DATE FROM MV_ORGANIZATION N) M
  LEFT JOIN 
      (  SELECT CONTRACT,
               BUSINESS_CLUSTER,
               SERVICE,
               TO_CHAR("CLOSED_DATE", 'YYYY_MM') AS "CLOSED_DATE",
               'User Service Restoration & User Service Request' AS INCIDENT_TYPE,
               'All' AS PRIORITY,
               NULL AS "MISSED",
               NULL AS ACHIEVED,
               COUNT(*) AS SERVICED,
               NULL AS "%"
          FROM V_KSL_11_CLOSED
         WHERE STATUS = 'Closed'
           AND COC_STATUS = 'Current'
           AND INCIDENT_TYPE IN ('User Service Restoration', 'User Service Request')
         GROUP BY CONTRACT,
                  BUSINESS_CLUSTER,
                  service,
                  TO_CHAR("CLOSED_DATE", 'YYYY_MM')
                  -- serviced
                  ) A
            ON (
            M.CONTRACT=A.contract
            AND m.business_cluster=a.business_cluster
            AND m.service=a.service
            AND m.closed_date=a.closed_date
            )      
           LEFT JOIN
                    
           (SELECT CONTRACT,
                           BUSINESS_CLUSTER,
                           SERVICE,
                           TO_CHAR("CLOSED_DATE", 'YYYY_MM') AS "CLOSED_DATE",
                           'User Service Restoration & User Service Request' AS INCIDENT_TYPE,
                           'All' AS PRIORITY,
                           COUNT(*) AS MISSED,
                           NULL AS ACHIEVED,
                           NULL AS SERVICED,
                           NULL AS "%"
                      FROM V_KSL_11_CLOSED
                     WHERE INCIDENT_TYPE IN ('User Service Restoration', 'User Service Request')
                       AND STATUS = 'Closed'
                       AND COC_STATUS = 'Current'
                       AND BOUNDARY_FLAG = 'missed'
                     GROUP BY CONTRACT, BUSINESS_CLUSTER,service, TO_CHAR("CLOSED_DATE", 'YYYY_MM')
                    -- missed 
                    ) B
           ON (
           M.CONTRACT=B.contract
            AND M.business_cluster=B.business_cluster
            AND m.service=b.service
            AND m.closed_date=B.closed_date
           )
           
           
           
          )  Z
           
           WHERE

                                             Z.BUSINESS_CLUSTER = P_BUSINESS_CLUSTER
                                             AND Z.CLOSED_DATE = P_CLOSED_DATE
                                            --AND Z.service='abajob:global'

                                             --KSL 11
                                             
                                              ORDER BY CONTRACT, BUSINESS_CLUSTER, SERVICE, KSL
        
        
        
        ) DATA,      
        t_contract_k_target KSL  

 WHERE DATA.KSL = KSL.K
 ) q
 --WHERE q.business_cluster=P_BUSINESS_CLUSTER
GROUP BY q.contract, q.business_cluster,q.closed_date;
     
     PIPE ROW(rec);
     
     RETURN;
     END KSL_11_T;

 FUNCTION Overview_T (P_BUSINESS_CLUSTER VARCHAR2, P_CLOSED_DATE VARCHAR2) RETURN T_TABLE_OVER PIPELINED
     IS
     
     rec T_COL_OVER;
     
     BEGIN
       
      
     FOR rec IN (
      SELECT 

       DATA.*,

       KSL.ST,
       KSL.HT,
       CASE
         WHEN DATA."%"='n/a %' THEN 1
         WHEN RTRIM(DATA."%", '% ') >= KSL.HT THEN
          1
         ELSE
          0
       END AS PASSED,
       CASE
         WHEN DATA."%"='n/a %' THEN 'G'
         WHEN RTRIM(DATA."%", '% ') >= KSL.HT THEN
          'G'
         WHEN RTRIM(DATA."%", '% ') >= KSL.ST AND RTRIM(DATA."%", '% ') < KSL.HT THEN
          'Y'
         ELSE
          'R'
       END AS AMPEL

      -- INTO rec

  FROM (
        
    SELECT Z.CONTRACT,
                Z.BUSINESS_CLUSTER,
                --Z.SERVICE,
                Z.CLOSED_DATE,
                'User Service Restoration' AS INCIDENT_TYPE,
                Z.PRIORITY,
                Z.MISSED,
                Z.ACHIEVED,
                Z.SERVICED,
                z."%",
                Z.KSL
          FROM (WITH A AS (SELECT CONTRACT,
                                   BUSINESS_CLUSTER,
                                  -- SERVICE,
                                   TO_CHAR("CLOSED_DATE", 'YYYY_MM') AS "CLOSED_DATE",
                                   INCIDENT_TYPE,
                                   PRIORITY,
                                   ABS(COUNT(*) - COALESCE(SUM(SOLUTION_TIME_ACHIEVED_FLAG), 0)) AS "MISSED",
                                   SUM(SOLUTION_TIME_ACHIEVED_FLAG) AS ACHIEVED,
                                   COUNT(*) AS SERVICED,
                                   
                                   ROUND(DECODE(SUM(SOLUTION_TIME_ACHIEVED_FLAG),
                                                0,
                                                COUNT(*),
                                                SUM(SOLUTION_TIME_ACHIEVED_FLAG)) / (COUNT(*)),
                                         3) * 100 || '% ' AS "%"
                            
                              FROM V_KSL_2_11
                            
                             WHERE
                            
                             STATUS = 'Closed'
                             AND incident_type ='User Service Restoration'
                         AND COC_STATUS = 'Current'
                            
                             GROUP BY CONTRACT,
                                      BUSINESS_CLUSTER,
                                    --  SERVICE,
                                      TO_CHAR("CLOSED_DATE", 'YYYY_MM'),
                                      INCIDENT_TYPE,
                                      PRIORITY)
                
                  SELECT M.*,
                         COALESCE(A.MISSED, 0) AS MISSED,
                         COALESCE(A.ACHIEVED, 0) AS ACHIEVED,
                         COALESCE(A.SERVICED, 0) AS SERVICED,
                         COALESCE(a."%", 'n/a %') AS "%",
                         CASE
                           WHEN M.PRIORITY = 'Low' THEN
                            'KSL 5'
                           WHEN M.PRIORITY = 'Medium' THEN
                            'KSL 4'
                           WHEN M.PRIORITY = 'High' THEN
                            'KSL 3'
                           WHEN M.PRIORITY = 'Critical' THEN
                            'KSL 2'
                         END AS KSL
                    FROM (SELECT DISTINCT N.CONTRACT, N.BUSINESS_CLUSTER, n.priority, N.CLOSED_DATE FROM MV_ORGANIZATION N) M
                    LEFT OUTER JOIN A
                      ON (M.CONTRACT = A.CONTRACT AND M.BUSINESS_CLUSTER = A.BUSINESS_CLUSTER 
                         --M.SERVICE = A.SERVICE 
                         --AND M.INCIDENT_TYPE = A.INCIDENT_TYPE
                          AND
                         M.PRIORITY = A.PRIORITY AND M.CLOSED_DATE = A.CLOSED_DATE)
                  
                   ) Z
                  
                   WHERE 
                      Z.BUSINESS_CLUSTER = P_BUSINESS_CLUSTER
                     AND Z.CLOSED_DATE = P_CLOSED_DATE
                  --  ORDER BY Z.CONTRACT, Z.BUSINESS_CLUSTER, Z.SERVICE, Z.INCIDENT_TYPE, Z.PRIORITY 
                  --KSL 2-5
                  UNION ALL
                  
                /*  SELECT  Z.CONTRACT,
                         Z.BUSINESS_CLUSTER,
                        -- Z.SERVICE,
                         Z.CLOSED_DATE,
                         'Infrastructure Event and Infrastructure Restoration' AS INCIDENT_TYPE,
                         Z.PRIORITY,
                         SUM(Z.MISSED) AS MISSED,
                         SUM(Z.ACHIEVED) AS ACHIEVED,
                         SUM(Z.SERVICED) AS SERVICED,
                         
                         DECODE(SUM(Z.SERVICED), 0, 1,
                                ROUND(DECODE(SUM(Z.ACHIEVED), 0, SUM(Z.SERVICED), SUM(Z.ACHIEVED)) /
                                      DECODE(SUM(Z.SERVICED), 0, 1, SUM(Z.SERVICED)),
                                      3)) * 100 || '% ' AS "%",
                         
                         Z.KSL
                  
                    FROM (WITH A AS (SELECT CONTRACT,
                                            BUSINESS_CLUSTER,
                                           -- SERVICE,
                                            TO_CHAR("CLOSED_DATE", 'YYYY_MM') AS "CLOSED_DATE",
                                            INCIDENT_TYPE,
                                            PRIORITY,
                                            ABS(COUNT(*) - COALESCE(SUM(SOLUTION_TIME_ACHIEVED_FLAG), 0)) AS "MISSED",
                                            SUM(SOLUTION_TIME_ACHIEVED_FLAG) AS ACHIEVED,
                                            COUNT(*) AS SERVICED,
                                            
                                            ROUND(DECODE(SUM(SOLUTION_TIME_ACHIEVED_FLAG),
                                                         0,
                                                         COUNT(*),
                                                         SUM(SOLUTION_TIME_ACHIEVED_FLAG)) / (COUNT(*)),
                                                  3) * 100 || '% ' AS "%"
                                     
                                       FROM V_KSL_2_11
                                     
                                      WHERE
                                     
                                      STATUS = 'Closed'
                                  AND COC_STATUS = 'Current'
								  AND incident_type IN ('Infrastructure Event', 'Infrastructure Restoration')
                                     
                                      GROUP BY CONTRACT,
                                               BUSINESS_CLUSTER,
                                             --  SERVICE,
                                               TO_CHAR("CLOSED_DATE", 'YYYY_MM'),
                                               INCIDENT_TYPE,
                                               PRIORITY)
                         
                           SELECT M.*,
                                  COALESCE(A.MISSED, 0) AS MISSED,
                                  COALESCE(A.ACHIEVED, 0) AS ACHIEVED,
                                  COALESCE(A.SERVICED, 0) AS SERVICED,
                                  COALESCE(a."%", 'n/a %') AS "%",
                                  CASE
                                    WHEN M.PRIORITY = 'Low' THEN
                                     'KSL 9'
                                    WHEN M.PRIORITY = 'Medium' THEN
                                     'KSL 8'
                                    WHEN M.PRIORITY = 'High' THEN
                                     'KSL 7'
                                    WHEN M.PRIORITY = 'Critical' THEN
                                     'KSL 6'
                                  END AS KSL
                             FROM (SELECT DISTINCT n.contract,n.business_cluster,n.closed_date,n.priority FROM MV_ORGANIZATION n) M
--                             
                             LEFT OUTER JOIN A
                               ON (M.CONTRACT = A.CONTRACT AND M.BUSINESS_CLUSTER = A.BUSINESS_CLUSTER 
                                  --AND M.SERVICE = A.SERVICE 
                                  --AND M.INCIDENT_TYPE = A.INCIDENT_TYPE 
                                 AND M.PRIORITY = A.PRIORITY 
                                  AND M.CLOSED_DATE = A.CLOSED_DATE)
                           
                            ) Z
                           
                            WHERE  
                               Z.BUSINESS_CLUSTER = P_BUSINESS_CLUSTER
                              AND Z.CLOSED_DATE = P_CLOSED_DATE
                           
                            GROUP BY Z.CONTRACT,
                                     Z.BUSINESS_CLUSTER,
                                     --Z.ORGANIZATION,
                                   --  Z.SERVICE,
                                     Z.PRIORITY,
                                     Z.CLOSED_DATE,
                                     Z.KSL*/

  SELECT  Z.CONTRACT,
                         Z.BUSINESS_CLUSTER,
                        -- Z.SERVICE,
                         Z.CLOSED_DATE,
                         'Infrastructure Event and Infrastructure Restoration' AS INCIDENT_TYPE,
                         Z.PRIORITY,
                         SUM(Z.MISSED) AS MISSED,
                         SUM(Z.ACHIEVED) AS ACHIEVED,
                         SUM(Z.SERVICED) AS SERVICED,
                         DECODE(sum(Z.SERVICED),0,'n/a %',ROUND((DECODE(SUM(Z.ACHIEVED),0,SUM(Z.SERVICED),SUM(Z.ACHIEVED))/SUM(Z.SERVICED))*100,3) || '% ') AS "%", 
                         Z.KSL
                  
                    FROM (WITH A AS (SELECT CONTRACT,
                                            BUSINESS_CLUSTER,
                                           -- SERVICE,
                                            TO_CHAR("CLOSED_DATE", 'YYYY_MM') AS "CLOSED_DATE",
                                            INCIDENT_TYPE,
                                            PRIORITY,
                                            ABS(COUNT(*) - COALESCE(SUM(SOLUTION_TIME_ACHIEVED_FLAG), 0)) AS "MISSED",
                                            SUM(SOLUTION_TIME_ACHIEVED_FLAG) AS ACHIEVED,
                                            COUNT(*) AS SERVICED,
                                            
                                            ROUND(DECODE(SUM(SOLUTION_TIME_ACHIEVED_FLAG),
                                                         0,
                                                         COUNT(*),
                                                         SUM(SOLUTION_TIME_ACHIEVED_FLAG)) / (COUNT(*)),
                                                  3) * 100 || '% ' AS "%"
                                     
                                       FROM V_KSL_2_11
                                     
                                      WHERE
                                     
                                      STATUS = 'Closed'
                                  AND COC_STATUS = 'Current'
                                  AND incident_type IN ('Infrastructure Event', 'Infrastructure Restoration')
                                     
                                      GROUP BY CONTRACT,
                                               BUSINESS_CLUSTER,
                                             --  SERVICE,
                                               TO_CHAR("CLOSED_DATE", 'YYYY_MM'),
                                               INCIDENT_TYPE,
                                               PRIORITY)
                         
                           SELECT M.*,
                                  COALESCE(A.MISSED, 0) AS MISSED,
                                  COALESCE(A.ACHIEVED, 0) AS ACHIEVED,
                                  COALESCE(A.SERVICED, 0) AS SERVICED,
                                  COALESCE(a."%", 'n/a %') AS "%",
                                  CASE
                                    WHEN M.PRIORITY = 'Low' THEN
                                     'KSL 9'
                                    WHEN M.PRIORITY = 'Medium' THEN
                                     'KSL 8'
                                    WHEN M.PRIORITY = 'High' THEN
                                     'KSL 7'
                                    WHEN M.PRIORITY = 'Critical' THEN
                                     'KSL 6'
                                  END AS KSL
                             FROM (SELECT DISTINCT n.contract,n.business_cluster,n.closed_date,n.priority FROM MV_ORGANIZATION n) M
--                             
                             LEFT OUTER JOIN A
                               ON (M.CONTRACT = A.CONTRACT AND M.BUSINESS_CLUSTER = A.BUSINESS_CLUSTER 
                                  --AND M.SERVICE = A.SERVICE 
                                  --AND M.INCIDENT_TYPE = A.INCIDENT_TYPE 
                                 AND M.PRIORITY = A.PRIORITY 
                                  AND M.CLOSED_DATE = A.CLOSED_DATE)
                           
                            ) Z
                           
                            WHERE  
                               Z.BUSINESS_CLUSTER = P_BUSINESS_CLUSTER
                              AND Z.CLOSED_DATE = P_CLOSED_DATE
                           
                            GROUP BY Z.CONTRACT,
                                     Z.BUSINESS_CLUSTER,
                                     --Z.ORGANIZATION,
                                   --  Z.SERVICE,
                                     Z.PRIORITY,
                                     Z.CLOSED_DATE,
                                     Z.KSL

                           


                           --ORDER BY Z.CONTRACT, Z.BUSINESS_CLUSTER, Z.SERVICE, Z.PRIORITY
                           --ksl 6-9
                           UNION ALL
                           
                           SELECT Z.CONTRACT,
                                  Z.BUSINESS_CLUSTER,
                                --  Z.SERVICE,
                                  Z.CLOSED_DATE,
                                  'User Service Request' AS INCIDENT_TYPE,
                                  'All' AS PRIORITY,
                                  SUM(Z.MISSED) AS MISSED,
                                  SUM(Z.ACHIEVED) AS ACHIEVED,
                                  SUM(Z.SERVICED) AS SERVICED,
                                  
                                  DECODE(ROUND(DECODE(SUM(Z.ACHIEVED),
                                                      0,
                                                      SUM(Z.SERVICED),
                                                      SUM(Z.ACHIEVED)) /
                                               DECODE(SUM(Z.SERVICED), 0, 100, SUM(Z.SERVICED)),
                                               3),
                                         0,
                                         1,
                                  ROUND(SUM(Z.ACHIEVED) /DECODE(SUM(Z.SERVICED), 0, 1, SUM(Z.SERVICED)),3)) * 100 || '% ' AS "%",
                                  
                                  Z.KSL
                           
                             FROM (WITH A AS (SELECT CONTRACT,
                                                     BUSINESS_CLUSTER,
                                                   --  SERVICE,
                                                     TO_CHAR("CLOSED_DATE", 'YYYY_MM') AS "CLOSED_DATE",
                                                     INCIDENT_TYPE,
                                                     PRIORITY,
                                                     ABS(COUNT(*) -
                                                         COALESCE(SUM(SOLUTION_TIME_ACHIEVED_FLAG), 0)) AS "MISSED",
                                                     SUM(SOLUTION_TIME_ACHIEVED_FLAG) AS ACHIEVED,
                                                     COUNT(*) AS SERVICED,
                                                     
                                                     ROUND(DECODE(SUM(SOLUTION_TIME_ACHIEVED_FLAG),
                                                                  0,
                                                                  COUNT(*),
                                                                  SUM(SOLUTION_TIME_ACHIEVED_FLAG)) /
                                                           (COUNT(*)),
                                                           3) * 100 || '% ' AS "%"
                                              
                                                FROM V_KSL_2_11
                                              
                                               WHERE
                                              
                                               STATUS = 'Closed'
                                           AND COC_STATUS = 'Current'
                                              
                                               GROUP BY CONTRACT,
                                                        BUSINESS_CLUSTER,
                                                  --      SERVICE,
                                                        TO_CHAR("CLOSED_DATE", 'YYYY_MM'),
                                                        INCIDENT_TYPE,
                                                        PRIORITY)
                                  
                                    SELECT M.*,
                                           COALESCE(A.MISSED, 0) AS MISSED,
                                           COALESCE(A.ACHIEVED, 0) AS ACHIEVED,
                                           COALESCE(A.SERVICED, 0) AS SERVICED,
                                           COALESCE(a."%", 'n/a %') AS "%",
                                           'KSL 10' AS KSL
                                      FROM (SELECT DISTINCT n.contract,n.business_cluster,n.closed_date,n.incident_type,n.priority FROM MV_ORGANIZATION n) M
                                      LEFT OUTER JOIN A
                                        ON (M.CONTRACT = A.CONTRACT AND
                                           M.BUSINESS_CLUSTER = A.BUSINESS_CLUSTER 
                                           --M.SERVICE = A.SERVICE 
                                           AND M.INCIDENT_TYPE = A.INCIDENT_TYPE AND
                                           M.PRIORITY = A.PRIORITY AND M.CLOSED_DATE = A.CLOSED_DATE)
                                    
                                     ) Z
                                    
                                     WHERE Z.INCIDENT_TYPE = 'User Service Request'
                                       AND Z.BUSINESS_CLUSTER = P_BUSINESS_CLUSTER
                                       AND Z.CLOSED_DATE = P_CLOSED_DATE
                                    
                                     GROUP BY Z.CONTRACT,
                                              Z.BUSINESS_CLUSTER,
                                             -- Z.ORGANIZATION,
                                             -- Z.SERVICE,
                                              Z.CLOSED_DATE,
                                              Z.KSL
                                    
                                    -- ORDER BY Z.CONTRACT, Z.BUSINESS_CLUSTER, Z.SERVICE
                                    --ksl 10
                                    UNION ALL
                  
                             /*             SELECT Z.CONTRACT,
                                           Z.BUSINESS_CLUSTER,
                                          -- Z.SERVICE,
                                           Z.CLOSED_DATE,
                                           'Problem investigation' AS INCIDENT_TYPE,
                                           Z.PRIORITY AS PRIORITY,
                                           SUM(Z.MISSED) AS MISSED,
                                           SUM(Z.ACHIEVED) AS ACHIEVED,
                                           SUM(Z.SERVICED) AS SERVICED,
                                           
                                           DECODE(ROUND(DECODE(SUM(Z.ACHIEVED),
                                                               0,
                                                               SUM(Z.SERVICED),
                                                               SUM(Z.ACHIEVED)) /
                                                        DECODE(SUM(Z.SERVICED), 0, 100, SUM(Z.SERVICED)),
                                                        3),
                                                  0,
                                                  1,
                                                  ROUND(DECODE(SUM(Z.ACHIEVED),
                                                               0,
                                                               SUM(Z.SERVICED),
                                                               SUM(Z.ACHIEVED)) /
                                                        DECODE(SUM(Z.SERVICED), 0, 100, SUM(Z.SERVICED)),
                                                        3)) * 100 || '% ' AS "%"
                                           
                                           ,
                                           Z.KSL
                                    
                                      FROM (WITH A AS (SELECT CONTRACT,
                                                              BUSINESS_CLUSTER,
                                                             -- SERVICE,
                                                              COALESCE(COMPLETED_DATE_YEAR_MONTH,
                                                                       TO_CHAR(CLOSED_DATE, 'YYYY_MM')) AS CLOSED_DATE,
                                                              --  INCIDENT_TYPE,
                                                              PRIORITY,
                                                              ABS(COUNT(*) - COALESCE(SUM(INVT_TARGET_ACHIEVED_FLAG),
                                                                                      0)) AS "MISSED",
                                                              SUM(INVT_TARGET_ACHIEVED_FLAG) AS ACHIEVED,
                                                              COUNT(*) AS SERVICED,
                                                              
                                                              ROUND(DECODE(SUM(INVT_TARGET_ACHIEVED_FLAG),
                                                                           0,
                                                                           COUNT(*),
                                                                           SUM(INVT_TARGET_ACHIEVED_FLAG)) /
                                                                    (COUNT(*)),
                                                                    3) * 100 || '% ' AS "%"
                                                       
                                                         FROM V_KSL_12
                                                       
                                                        WHERE
                                                       
                                                        STATUS IN ('Closed', 'Completed')
                                                    AND COC_STATUS = 'Current'
                                                       
                                                        GROUP BY CONTRACT,
                                                                 BUSINESS_CLUSTER,
                                                                -- SERVICE,
                                                                 COALESCE(COMPLETED_DATE_YEAR_MONTH,
                                                                          TO_CHAR(CLOSED_DATE, 'YYYY_MM')),
                                                                 -- INCIDENT_TYPE,
                                                                 PRIORITY)
                                           
                                             SELECT M.*,
                                                    COALESCE(A.MISSED, 0) AS MISSED,
                                                    COALESCE(A.ACHIEVED, 0) AS ACHIEVED,
                                                    COALESCE(A.SERVICED, 0) AS SERVICED,
                                                    COALESCE(a."%", '100%') AS "%",
                                                    'KSL 12' AS KSL
                                               FROM (SELECT DISTINCT n.contract,n.business_cluster,n.closed_date,n.incident_type,n.priority FROM MV_ORGANIZATION n) M
                                               LEFT OUTER JOIN A
                                                 ON (M.CONTRACT = A.CONTRACT AND
                                                    M.BUSINESS_CLUSTER = A.BUSINESS_CLUSTER 
                                                    --M.SERVICE = A.SERVICE
                                                    --AND M.INCIDENT_TYPE = A.INCIDENT_TYPE 
                                                    AND M.PRIORITY = A.PRIORITY 
                                                   AND M.CLOSED_DATE = A.CLOSED_DATE
                                                    
                                                    )) Z
                                             
                                              WHERE
                                             --Z.INCIDENT_TYPE IN ('User Service Request','User Service Restoration')
                                              Z.BUSINESS_CLUSTER = P_BUSINESS_CLUSTER
                                              AND Z.CLOSED_DATE = P_CLOSED_DATE
                                          AND Z.PRIORITY = 'Critical'
                                              GROUP BY Z.CONTRACT,
                                                       Z.BUSINESS_CLUSTER,
                                                      -- Z.ORGANIZATION,
                                                      -- Z.SERVICE,
                                                       Z.PRIORITY,
                                                       Z.CLOSED_DATE,
                                                       Z.KSL               
                                           
                                             --  ORDER BY Z.CONTRACT, Z.BUSINESS_CLUSTER, Z.SERVICE
                                             --KSL 12*/
                             SELECT Z.CONTRACT,
                                           Z.BUSINESS_CLUSTER,
                                          -- Z.SERVICE,
                                           Z.CLOSED_DATE,
                                           'Problem investigation' AS INCIDENT_TYPE,
                                           Z.PRIORITY AS PRIORITY,
                                           Z.MISSED AS MISSED,
                                           Z.ACHIEVED AS ACHIEVED,
                                           Z.SERVICED AS SERVICED,
                                           Z."%" AS "%",
                                           Z.KSL
                                    
                                      FROM (WITH A AS (SELECT CONTRACT,
                                                              BUSINESS_CLUSTER,
                                                             -- SERVICE,
                                                              COALESCE(COMPLETED_DATE_YEAR_MONTH,
                                                                       TO_CHAR(CLOSED_DATE, 'YYYY_MM')) AS CLOSED_DATE,
                                                              --  INCIDENT_TYPE,
                                                              PRIORITY,
                                                              ABS(COUNT(*) - COALESCE(SUM(INVT_TARGET_ACHIEVED_FLAG),
                                                                                      0)) AS "MISSED",
                                                              SUM(INVT_TARGET_ACHIEVED_FLAG) AS ACHIEVED,
                                                              COUNT(*) AS SERVICED,
                                                              
                                                              ROUND(DECODE(SUM(INVT_TARGET_ACHIEVED_FLAG),
                                                                           0,
                                                                           COUNT(*),
                                                                           SUM(INVT_TARGET_ACHIEVED_FLAG)) /
                                                                    (COUNT(*)),
                                                                    3) * 100 || '% ' AS "%"
                                                       
                                                         FROM V_KSL_12
                                                       
                                                        WHERE
                                                       
                                                        STATUS IN ('Closed', 'Completed')
                                                    AND COC_STATUS = 'Current'
                                                       
                                                        GROUP BY CONTRACT,
                                                                 BUSINESS_CLUSTER,
                                                                -- SERVICE,
                                                                 COALESCE(COMPLETED_DATE_YEAR_MONTH,
                                                                          TO_CHAR(CLOSED_DATE, 'YYYY_MM')),
                                                                 -- INCIDENT_TYPE,
                                                                 PRIORITY)
                                           
                                             SELECT M.*,
                                                    COALESCE(A.MISSED, 0) AS MISSED,
                                                    COALESCE(A.ACHIEVED, 0) AS ACHIEVED,
                                                    COALESCE(A.SERVICED, 0) AS SERVICED,
                                                    COALESCE(a."%", 'n/a %') AS "%",
                                                    'KSL 12' AS KSL
                                               FROM (SELECT DISTINCT n.contract,n.business_cluster,n.closed_date,n.priority FROM MV_ORGANIZATION n) M
                                               LEFT OUTER JOIN A
                                                 ON (M.CONTRACT = A.CONTRACT AND
                                                    M.BUSINESS_CLUSTER = A.BUSINESS_CLUSTER 
                                                    --M.SERVICE = A.SERVICE
                                                    --AND M.INCIDENT_TYPE = A.INCIDENT_TYPE 
                                                    AND M.PRIORITY = A.PRIORITY 
                                                   AND M.CLOSED_DATE = A.CLOSED_DATE
                                                    
                                                    )) Z
                                             
                                              WHERE

                                              Z.BUSINESS_CLUSTER = P_BUSINESS_CLUSTER
                                              AND Z.CLOSED_DATE = P_CLOSED_DATE
                                          AND Z.PRIORITY = 'Critical'
                                             
                                             
                                             
                                             UNION ALL
                                             
                               SELECT z.CONTRACT,
       z.BUSINESS_CLUSTER,
       z.CLOSED_DATE,
       z.INCIDENT_TYPE,
       z.PRIORITY,
       z.MISSED,
       z.achieved,
       z.serviced,
       (ROUND((z.serviced - z.achieved - z.MISSED) / DECODE(z.serviced,0, 1,z.serviced),3)) * 100 || '% ' AS "%",
    -- (ROUND((SUM(z.serviced) - SUM(z.achieved) - SUM(z.MISSED)) / DECODE(SUM(z.serviced),0, 1,SUM(z.serviced)),3)) * 100 || '% ' AS "%",
     z.ksl

FROM (
SELECT M.CONTRACT,
       M.BUSINESS_CLUSTER,
       --  M.SERVICE,
       M.CLOSED_DATE,
       'User Service Restoration and User Service Request' AS INCIDENT_TYPE,
       'All' AS PRIORITY,
       COALESCE(B.MISSED, 0) AS MISSED,
       COALESCE(
       
      (SELECT COUNT(*)
                                                                     
                                                                       FROM V_KSL_11_CLOSED X
                                                                      WHERE X.INCIDENT_TYPE IN
                                                                            ('User Service Restoration', 'User Service Request')
                                                                        AND (TRUNC(X.SUBMIT_DATE) < TO_DATE(M.CLOSED_DATE, 'yyyy_mm') AND
                                                                            (NOT X.STATUS IN ('Closed', 'Cancelled') OR
                                                                            (X.STATUS = ('Closed') AND
                                                                            TRUNC(X.CLOSED_DATE) >
                                                                            LAST_DAY(TO_DATE(M.CLOSED_DATE, 'yyyy_mm')))))
                                                                        AND X.COC_STATUS = 'Current'
                                                                        AND X.CONTRACT = 'CAEE II' AND X.BUSINESS_CLUSTER = M.BUSINESS_CLUSTER
                                                                      GROUP BY X.CONTRACT,
                                                                               X.BUSINESS_CLUSTER,
                                                                              -- X.SERVICE,
                                                                               TO_CHAR(x."CLOSED_DATE", 'YYYY_MM')
                                                                     --HAVING X.CONTRACT = 'CAEE II' AND X.BUSINESS_CLUSTER = M.BUSINESS_CLUSTER
                                                                     )
       
       
       , 0) AS ACHIEVED,
       COALESCE(A.SERVICED, 0) AS SERVICED,
       'KSL 11' AS KSL
  FROM (SELECT DISTINCT N.CONTRACT, N.BUSINESS_CLUSTER, N.CLOSED_DATE FROM MV_ORGANIZATION N) M
  LEFT JOIN 
      (  SELECT CONTRACT,
               BUSINESS_CLUSTER,
               --SERVICE,
               TO_CHAR("CLOSED_DATE", 'YYYY_MM') AS "CLOSED_DATE",
               'User Service Restoration and User Service Request' AS INCIDENT_TYPE,
               'All' AS PRIORITY,
               NULL AS "MISSED",
               NULL AS ACHIEVED,
               COUNT(*) AS SERVICED,
               NULL AS "%"
          FROM V_KSL_11_CLOSED
         WHERE STATUS = 'Closed'
           AND COC_STATUS = 'Current'
           AND INCIDENT_TYPE IN ('User Service Restoration', 'User Service Request')
         GROUP BY CONTRACT,
                  BUSINESS_CLUSTER,
                  TO_CHAR("CLOSED_DATE", 'YYYY_MM')
                  -- serviced
                  ) A
            ON (
            M.CONTRACT=A.contract
            AND m.business_cluster=a.business_cluster
            AND m.closed_date=a.closed_date
            )      
           LEFT JOIN
                    
           (SELECT CONTRACT,
                           BUSINESS_CLUSTER,
                           --SERVICE,
                           TO_CHAR("CLOSED_DATE", 'YYYY_MM') AS "CLOSED_DATE",
                           'User Service Restoration and User Service Request' AS INCIDENT_TYPE,
                           'All' AS PRIORITY,
                           COUNT(*) AS MISSED,
                           NULL AS ACHIEVED,
                           NULL AS SERVICED,
                           NULL AS "%"
                      FROM V_KSL_11_CLOSED
                     WHERE INCIDENT_TYPE IN ('User Service Restoration', 'User Service Request')
                       AND STATUS = 'Closed'
                       AND COC_STATUS = 'Current'
                       AND BOUNDARY_FLAG = 'missed'
                     GROUP BY CONTRACT, BUSINESS_CLUSTER, TO_CHAR("CLOSED_DATE", 'YYYY_MM')
                    -- missed 
                    ) B
           ON (
           M.CONTRACT=B.contract
            AND M.business_cluster=B.business_cluster
            AND m.closed_date=B.closed_date
           )
           
           
           
          )  Z
           
         
           
           WHERE

                                             Z.BUSINESS_CLUSTER = P_BUSINESS_CLUSTER
                                             AND Z.CLOSED_DATE = P_CLOSED_DATE
                                            --AND Z.service='abajob:global'
                                             

                                             --KSL 11
                                             
                                      UNION ALL
  
  SELECT 

A.contract,
a.BUSINESS_CLUSTER,
a.closed_date,
'Problem investigation' AS incident_type,
'Non Critical' AS priority,
SUM(a.missed) AS missed,
SUM(a.achieved) AS achieved,
SUM(a.serviced) AS serviced,
ROUND((SUM(a.serviced)-SUM(a.missed)) / DECODE(SUM(a.serviced),0,1,SUM(a.serviced)),3) * 100 || '% ' AS "%",
'KM 3' AS KSL

 FROM (

SELECT CONTRACT,
       BUSINESS_CLUSTER,
       -- SERVICE,
       COALESCE(COMPLETED_DATE_YEAR_MONTH, TO_CHAR(CLOSED_DATE, 'YYYY_MM')) AS CLOSED_DATE,
       --  INCIDENT_TYPE,
       PRIORITY,
       ABS(COUNT(*) - COALESCE(SUM(INVT_TARGET_ACHIEVED_FLAG), 0)) AS "MISSED",
       SUM(INVT_TARGET_ACHIEVED_FLAG) AS ACHIEVED,
       COUNT(*) AS SERVICED

  FROM V_KSL_12

 WHERE

 STATUS IN ('Closed', 'Completed')
 AND COC_STATUS = 'Current'

 AND priority <> 'Critical'
-- AND to_char(closed_date)=P_CLOSED_DATE

 GROUP BY CONTRACT,
          BUSINESS_CLUSTER,
          -- SERVICE,
          COALESCE(COMPLETED_DATE_YEAR_MONTH, TO_CHAR(CLOSED_DATE, 'YYYY_MM')),
          -- INCIDENT_TYPE,
          PRIORITY
) A

WHERE  A.BUSINESS_CLUSTER = P_BUSINESS_CLUSTER
AND A.CLOSED_DATE = P_CLOSED_DATE

GROUP BY

A.contract,
a.BUSINESS_CLUSTER,
a.closed_date  
    
                                     
                                             --Z.INCIDENT_TYPE IN ('User Service Request','User Service Restoration')
                                            
                                             --  ORDER BY Z.CONTRACT, Z.BUSINESS_CLUSTER, Z.SERVICE
                                             --KSM 3
UNION ALL

SELECT 
       m.contract,
       m.BUSINESS_CLUSTER,
       m.CLOSED_DATE,
       'All' AS INCIDENT_TYPE,
       m.PRIORITY,
       coalesce(V.MISSED,0) AS missed,
       coalesce(V.ACHIEVED,0) AS achieved,
       coalesce(V.SERVICED,0) AS serviced,
       coalesce(v."%",'100% ') AS "%",
       CASE m.PRIORITY
         WHEN 'Critical' THEN
          'KM 4'
         WHEN 'High' THEN
          'KM 5'
         WHEN 'Medium' THEN
          'KM 6'
         WHEN 'Low' THEN
          'KM 7'
       END AS "KLS"
  FROM 
  (SELECT DISTINCT n.contract,n.business_cluster,n.closed_date,n.priority FROM mv_organization n) m LEFT JOIN
  V_KM4_7 V
  ON (
  m.contract=v.contract
  AND m.business_cluster=v.business_cluster
  AND m.closed_date=v.closed_date
  AND m.priority=v.priority
  )                                           
  WHERE  M.BUSINESS_CLUSTER = P_BUSINESS_CLUSTER
AND M.CLOSED_DATE = P_CLOSED_DATE 
 --km 4-7
 
 UNION ALL
 
 SELECT 
       m.contract,
       m.BUSINESS_CLUSTER,
       m.CLOSED_DATE,
       'Change' AS INCIDENT_TYPE,
       'Emergency and Expedited' AS priority,
       0 AS missed,
       0 AS achieved,
       coalesce(V.SERVICED,0) AS serviced,
       COALESCE(DECODE(v.serviced,0,'100 %',v.serviced),'100% ') AS "%",
       'KM 9' AS "KLS"
  FROM 
  (SELECT DISTINCT n.contract,n.business_cluster,n.closed_date FROM mv_organization n) m LEFT JOIN

(
SELECT v.CONTRACT,v.BUSINESS_CLUSTER,v.COMPLETED_DATE_YEAR_MONTH,
--v.class, 
count(v.CHANGE_ID) AS serviced FROM v_km_9 v
WHERE 
v.class IN ('Emergency','Expedited')
AND 
v.status IN ('Closed','Completed')
AND v.COC_STATUS='Current'
AND v.ITOM_SCOPE='Yes'
GROUP BY v.CONTRACT,v.BUSINESS_CLUSTER,v.COMPLETED_DATE_YEAR_MONTH
--,v.class
) v
 ON (
  m.contract=v.contract
  AND m.business_cluster=v.business_cluster
  AND m.closed_date=v.COMPLETED_DATE_YEAR_MONTH
 -- AND m.priority=v.priority
  )                                           
  WHERE  M.BUSINESS_CLUSTER = P_BUSINESS_CLUSTER
AND M.CLOSED_DATE = P_CLOSED_DATE 
--km 9
UNION ALL

SELECT CONTRACT,
       BUSINESS_CLUSTER,
       CLOSED_DATE,
       INCIDENT_TYPE,
       PRIORITY,
       MISSED,
       OPENED,
       SERVICED,
       "%",
       KSL
  FROM TABLE(P_KSL.KSL_11_T(P_BUSINESS_CLUSTER => P_BUSINESS_CLUSTER, P_CLOSED_DATE => P_CLOSED_DATE))
--km 11*/

UNION ALL

SELECT 
      M.CONTRACT,
      M.BUSINESS_CLUSTER,
       M.CLOSED_DATE,
       'All' AS INCIDENT_TYPE,
       'All' AS PRIORITY,
       COALESCE((SELECT COUNT(*)
                  FROM  v_incident_all_data    x
                 WHERE x.SERVICE ='caee-im:global'
                   AND to_char(x.closed_date,'YYYY_MM') = P_CLOSED_DATE
                   AND x.status='Closed'),
                0) AS MISSED,
             
       (COALESCE(V.SERVICED, 0) - COALESCE((SELECT COUNT(*)
                  FROM v_incident_all_data x
                 WHERE x.SERVICE = 'caee-im:global'
                   AND to_char(x.closed_date,'YYYY_MM') = P_CLOSED_DATE
                   AND x.status='Closed'),
                0)) AS ACHIEVED,
                
                v.serviced AS serviced,
                
                ROUND(DECODE(COALESCE(V.SERVICED, 0),0,1,(V.SERVICED-(SELECT COUNT(*)
                  FROM v_incident_all_data x
                 WHERE x.SERVICE = 'caee-im:global'
                   AND to_char(x.closed_date,'YYYY_MM') = P_CLOSED_DATE
                   AND x.status='Closed'))
                 / V.SERVICED), 3) * 100 || '% ' AS "%",
       'KM 12' AS "KLS"
  FROM (SELECT DISTINCT N.CONTRACT, N.BUSINESS_CLUSTER, N.CLOSED_DATE FROM MV_ORGANIZATION N) M
  LEFT JOIN (
             
             SELECT V.CONTRACT,
                     V.BUSINESS_CLUSTER,
                     V.CLOSED_DATE_YEAR_MONTH AS CLOSED_DATE,
                     COUNT(*) AS SERVICED
               FROM V_KSL_2_11 V
              WHERE V.COC_STATUS = 'Current'
                AND V.STATUS ='Closed'
              GROUP BY V.CONTRACT, V.BUSINESS_CLUSTER,  V.CLOSED_DATE_YEAR_MONTH

             ) V
    ON (M.CONTRACT = V.CONTRACT AND M.BUSINESS_CLUSTER = V.BUSINESS_CLUSTER AND
       M.CLOSED_DATE = V.CLOSED_DATE)

 WHERE M.BUSINESS_CLUSTER = P_BUSINESS_CLUSTER
   AND M.CLOSED_DATE = P_CLOSED_DATE


   -- km12
   UNION ALL
   
      SELECT 
      M.CONTRACT,
      M.BUSINESS_CLUSTER,
       M.CLOSED_DATE,
       'All' AS INCIDENT_TYPE,
       'All' AS PRIORITY,
       COALESCE((SELECT COUNT(*)
                  FROM  v_incident_all_data    x
                 WHERE x.SERVICE ='caee-pm:global'
                   AND to_char(x.closed_date,'YYYY_MM') = P_CLOSED_DATE
                   AND x.status='Closed'),
                0) AS MISSED,
             
       (COALESCE(V.SERVICED, 0) - COALESCE((SELECT COUNT(*)
                  FROM v_incident_all_data x
                 WHERE x.SERVICE = 'caee-pm:global'
                   AND to_char(x.closed_date,'YYYY_MM') = P_CLOSED_DATE
                   AND x.status='Closed'),
                0)) AS ACHIEVED,
                
                v.serviced AS serviced,
                
                ROUND(DECODE(COALESCE(V.SERVICED, 0),0,1,(V.SERVICED-(SELECT COUNT(*)
                  FROM v_incident_all_data x
                 WHERE x.SERVICE = 'caee-pm:global'
                   AND to_char(x.closed_date,'YYYY_MM') = P_CLOSED_DATE
                   AND x.status='Closed'))
                 / V.SERVICED), 3) * 100 || '% ' AS "%",
       'KM 13' AS "KLS"
  FROM (SELECT DISTINCT N.CONTRACT, N.BUSINESS_CLUSTER, N.CLOSED_DATE FROM MV_ORGANIZATION N) M
  LEFT JOIN (
             
             SELECT V.CONTRACT,
                     V.BUSINESS_CLUSTER,
                     COALESCE(TO_CHAR(V.LAST_COMPLETED_DATE, 'YYYY_MM'),
                             TO_CHAR(V.CLOSED_DATE, 'YYYY_MM')) AS CLOSED_DATE,
                     COUNT(*) AS SERVICED
               FROM V_KM_13 V
              WHERE V.COC_STATUS = 'Current'
                AND V.STATUS IN ('Closed','Completed')
              GROUP BY V.CONTRACT, V.BUSINESS_CLUSTER,  COALESCE(TO_CHAR(V.LAST_COMPLETED_DATE, 'YYYY_MM'),
                             TO_CHAR(V.CLOSED_DATE, 'YYYY_MM'))

             ) V
    ON (M.CONTRACT = V.CONTRACT AND M.BUSINESS_CLUSTER = V.BUSINESS_CLUSTER AND
       M.CLOSED_DATE = V.CLOSED_DATE)

 WHERE M.BUSINESS_CLUSTER = P_BUSINESS_CLUSTER
   AND M.CLOSED_DATE = P_CLOSED_DATE
   
 --km 13
   
   UNION ALL
   
    SELECT 
      M.CONTRACT,
      M.BUSINESS_CLUSTER,
       M.CLOSED_DATE,
       'All' AS INCIDENT_TYPE,
       'All' AS PRIORITY,
       COALESCE((SELECT COUNT(*)
                  FROM  v_incident_all_data    x
                 WHERE x.SERVICE ='caee-cm:global'
                   AND to_char(x.closed_date,'YYYY_MM') = P_CLOSED_DATE
                   AND x.status='Closed'),
                0) AS MISSED,
             
       (COALESCE(V.SERVICED, 0) - COALESCE((SELECT COUNT(*)
                  FROM v_incident_all_data x
                 WHERE x.SERVICE = 'caee-cm:global'
                   AND to_char(x.closed_date,'YYYY_MM') = P_CLOSED_DATE
                   AND x.status='Closed'),
                0)) AS ACHIEVED,
                
                v.serviced AS serviced,
                
                ROUND(DECODE(COALESCE(V.SERVICED, 0),0,1,(V.SERVICED-(SELECT COUNT(*)
                  FROM v_incident_all_data x
                 WHERE x.SERVICE = 'caee-cm:global'
                   AND to_char(x.closed_date,'YYYY_MM') = P_CLOSED_DATE
                   AND x.status='Closed'))
                 / V.SERVICED), 3) * 100 || '% ' AS "%",
       'KM 14' AS "KLS"
  FROM (SELECT DISTINCT N.CONTRACT, N.BUSINESS_CLUSTER, N.CLOSED_DATE FROM MV_ORGANIZATION N) M
  LEFT JOIN (
             
             SELECT V.CONTRACT,
                     V.BUSINESS_CLUSTER,
                     V.COMPLETED_DATE_YEAR_MONTH AS CLOSED_DATE,
                     COUNT(*) AS SERVICED
               FROM v_km_9 V
              WHERE V.COC_STATUS = 'Current'
                AND V.STATUS = 'Closed'
              GROUP BY V.CONTRACT, V.BUSINESS_CLUSTER, V.COMPLETED_DATE_YEAR_MONTH

             ) V
    ON (M.CONTRACT = V.CONTRACT AND M.BUSINESS_CLUSTER = V.BUSINESS_CLUSTER AND
       M.CLOSED_DATE = V.CLOSED_DATE)

 WHERE M.BUSINESS_CLUSTER = P_BUSINESS_CLUSTER
   AND M.CLOSED_DATE = P_CLOSED_DATE
   
--km 14
 
UNION ALL
 
    
SELECT M.CONTRACT,
       M.BUSINESS_CLUSTER,
       M.CLOSED_DATE,
       'All' AS INCIDENT_TYPE,
       'All' AS PRIORITY,
       COALESCE(V.MISSED, 0) AS MISSED,   
       COALESCE(V.SERVICED - V.MISSED, 0) AS ACHIEVED,  
       COALESCE(V.SERVICED, 0) AS SERVICED,
       ROUND(DECODE(V.SERVICED,0,1,(V.SERVICED - V.MISSED)/V.SERVICED),3) * 100 || '% ' AS "%", 
       'KM 15' AS "KLS"
  FROM (SELECT DISTINCT N.CONTRACT, N.BUSINESS_CLUSTER, N.CLOSED_DATE FROM MV_ORGANIZATION N) M
  LEFT JOIN (SELECT V.CONTRACT,
                    V.BUSINESS_CLUSTER,
                    COALESCE(TO_CHAR(V.LAST_COMPLETED_DATE, 'YYYY_MM'),
                             TO_CHAR(V.CLOSED_DATE, 'YYYY_MM')) AS CLOSED_DATE,
                    COUNT(*) AS SERVICED,
                    
                    SUM(DECODE(COORDINATED_BY_PROVIDER, 'Yes', 1, 0)) AS ACHIEVED,
                    SUM(DECODE(COORDINATED_BY_PROVIDER, 'Yes', 0, 1)) AS MISSED
               FROM V_KM_13 V
              WHERE V.COC_STATUS = 'Current'
                AND V.STATUS IN ('Closed', 'Completed')
              GROUP BY V.CONTRACT,
                       V.BUSINESS_CLUSTER,
                       COALESCE(TO_CHAR(V.LAST_COMPLETED_DATE, 'YYYY_MM'),
                                TO_CHAR(V.CLOSED_DATE, 'YYYY_MM'))) V
    ON (M.CONTRACT = V.CONTRACT AND M.BUSINESS_CLUSTER = V.BUSINESS_CLUSTER AND
       M.CLOSED_DATE = V.CLOSED_DATE)

 WHERE M.BUSINESS_CLUSTER = P_BUSINESS_CLUSTER
   AND M.CLOSED_DATE = P_CLOSED_DATE
 
 --km 15
 

  
 ORDER BY CONTRACT, BUSINESS_CLUSTER --, "KSL"
  
        ) DATA,
      t_contract_k_target KSL

 WHERE DATA.KSL = KSL.K) LOOP

       PIPE ROW(rec);

END LOOP;
     RETURN;
     END Overview_T;

 FUNCTION Overview_R (PP_BUSINESS_CLUSTER VARCHAR2, PP_CLOSED_DATE VARCHAR2) RETURN T_TABLE_OVER_R PIPELINED
   IS
   rec T_COL_OVER_r;
   BEGIN
     
     SELECT contract,business_cluster,closed_date


  ,MAX(DECODE(ksl,'KSL 2',"%"))          AS "KSL 2"  
  ,MAX(DECODE(ksl,'KSL 2',missed))   AS "KSL 2_MISSED"
  ,MAX(DECODE(ksl,'KSL 2',opened))      AS "KSL 2_OPENED" 
  ,MAX(DECODE(ksl,'KSL 2',serviced))   AS "KSL 2_SERVICED"
  ,MAX(DECODE(ksl,'KSL 2',st))        AS "KSL 2_ST" 
  ,MAX(DECODE(ksl,'KSL 2',ht))       AS "KSL 2_HT"
  ,MAX(DECODE(ksl,'KSL 2',passed))    AS "KSL 2_PASS"   
  ,MAX(DECODE(ksl,'KSL 2',ampel))        AS "KSL 2_AMPEL"    
 
 
  ,MAX(DECODE(ksl,'KSL 3',"%"))        AS "KSL 3"  
  ,MAX(DECODE(ksl,'KSL 3',missed))   AS "KSL 3_MISSED"
  ,MAX(DECODE(ksl,'KSL 3',opened))      AS "KSL 3_OPENED" 
  ,MAX(DECODE(ksl,'KSL 3',serviced))   AS "KSL 3_SERVICED"
  ,MAX(DECODE(ksl,'KSL 3',st))        AS "KSL 3_ST" 
  ,MAX(DECODE(ksl,'KSL 3',ht))       AS "KSL 3_HT"
  ,MAX(DECODE(ksl,'KSL 3',passed))    AS "KSL 3_PASS"   
  ,MAX(DECODE(ksl,'KSL 3',ampel))        AS "KSL 3_AMPEL"
  
  ,MAX(DECODE(ksl,'KSL 4',"%"))     AS "KSL 4"  
  ,MAX(DECODE(ksl,'KSL 4',missed))   AS "KSL 4_MISSED"
  ,MAX(DECODE(ksl,'KSL 4',opened))      AS "KSL 4_OPENED" 
  ,MAX(DECODE(ksl,'KSL 4',serviced))   AS "KSL 4_SERVICED"
  ,MAX(DECODE(ksl,'KSL 4',st))        AS "KSL 4_ST" 
  ,MAX(DECODE(ksl,'KSL 4',ht))       AS "KSL 4_HT"
  ,MAX(DECODE(ksl,'KSL 4',passed))    AS "KSL 4_PASS"   
  ,MAX(DECODE(ksl,'KSL 4',ampel))        AS "KSL 4_AMPEL"
  
  ,MAX(DECODE(ksl,'KSL 5',"%"))     AS "KSL 5"  
  ,MAX(DECODE(ksl,'KSL 5',missed))   AS "KSL 5_MISSED"
  ,MAX(DECODE(ksl,'KSL 5',opened))      AS "KSL 5_OPENED" 
  ,MAX(DECODE(ksl,'KSL 5',serviced))   AS "KSL 5_SERVICED"
  ,MAX(DECODE(ksl,'KSL 5',st))        AS "KSL 5_ST" 
  ,MAX(DECODE(ksl,'KSL 5',ht))       AS "KSL 5_HT"
  ,MAX(DECODE(ksl,'KSL 5',passed))    AS "KSL 5_PASS"   
  ,MAX(DECODE(ksl,'KSL 5',ampel))        AS "KSL 5_AMPEL"
  
  ,MAX(DECODE(ksl,'KSL 6',"%"))     AS "KSL 6"  
  ,MAX(DECODE(ksl,'KSL 6',missed))   AS "KSL 6_MISSED"
  ,MAX(DECODE(ksl,'KSL 6',opened))      AS "KSL 6_OPENED" 
  ,MAX(DECODE(ksl,'KSL 6',serviced))   AS "KSL 6_SERVICED"
  ,MAX(DECODE(ksl,'KSL 6',st))        AS "KSL 6_ST" 
  ,MAX(DECODE(ksl,'KSL 6',ht))       AS "KSL 6_HT"
  ,MAX(DECODE(ksl,'KSL 6',passed))    AS "KSL 6_PASS"   
  ,MAX(DECODE(ksl,'KSL 6',ampel))        AS "KSL 6_AMPEL"
  
  ,MAX(DECODE(ksl,'KSL 7',"%"))     AS "KSL 7"  
  ,MAX(DECODE(ksl,'KSL 7',missed))   AS "KSL 7_MISSED"
  ,MAX(DECODE(ksl,'KSL 7',opened))      AS "KSL 7_OPENED" 
  ,MAX(DECODE(ksl,'KSL 7',serviced))   AS "KSL 7_SERVICED"
  ,MAX(DECODE(ksl,'KSL 7',st))        AS "KSL 7_ST" 
  ,MAX(DECODE(ksl,'KSL 7',ht))       AS "KSL 7_HT"
  ,MAX(DECODE(ksl,'KSL 7',passed))    AS "KSL 7_PASS"   
  ,MAX(DECODE(ksl,'KSL 7',ampel))        AS "KSL 7_AMPEL"

  ,MAX(DECODE(ksl,'KSL 8',"%"))       AS "KSL 8"  
  ,MAX(DECODE(ksl,'KSL 8',missed))   AS "KSL 8_MISSED"
  ,MAX(DECODE(ksl,'KSL 8',opened))      AS "KSL 8_OPENED" 
  ,MAX(DECODE(ksl,'KSL 8',serviced))   AS "KSL 8_SERVICED"
  ,MAX(DECODE(ksl,'KSL 8',st))        AS "KSL 8_ST" 
  ,MAX(DECODE(ksl,'KSL 8',ht))       AS "KSL 8_HT"
  ,MAX(DECODE(ksl,'KSL 8',passed))    AS "KSL 8_PASS"   
  ,MAX(DECODE(ksl,'KSL 8',ampel))        AS "KSL 8_AMPEL"    

  ,MAX(DECODE(ksl,'KSL 9',"%"))       AS "KSL 9"  
  ,MAX(DECODE(ksl,'KSL 9',missed))   AS "KSL 9_MISSED"
  ,MAX(DECODE(ksl,'KSL 9',opened))      AS "KSL 9_OPENED" 
  ,MAX(DECODE(ksl,'KSL 9',serviced))   AS "KSL 9_SERVICED"
  ,MAX(DECODE(ksl,'KSL 9',st))        AS "KSL 9_ST" 
  ,MAX(DECODE(ksl,'KSL 9',ht))       AS "KSL 9_HT"
  ,MAX(DECODE(ksl,'KSL 9',passed))    AS "KSL 9_PASS"   
  ,MAX(DECODE(ksl,'KSL 9',ampel))        AS "KSL 9_AMPEL"
  
  ,MAX(DECODE(ksl,'KSL 10',"%"))        AS "KSL 10"   
  ,MAX(DECODE(ksl,'KSL 10',missed))      AS "KSL 10_MISSED"
  ,MAX(DECODE(ksl,'KSL 10',opened))      AS "KSL 10_OPENED"  
  ,MAX(DECODE(ksl,'KSL 10',serviced))      AS "KSL 10_SERVICED"
  ,MAX(DECODE(ksl,'KSL 10',st))        AS "KSL 10_ST"  
  ,MAX(DECODE(ksl,'KSL 10',ht))        AS "KSL 10_HT"
  ,MAX(DECODE(ksl,'KSL 10',passed))      AS "KSL 10_PASS"    
  ,MAX(DECODE(ksl,'KSL 10',ampel))   AS "KSL 10_AMPEL"                    
 
  ,MAX(DECODE(ksl,'KSL 11',"%"))          AS "KSL 11"   
  ,MAX(DECODE(ksl,'KSL 11',missed))      AS "KSL 11_MISSED"
  ,MAX(DECODE(ksl,'KSL 11',opened))      AS "KSL 11_OPENED"  
  ,MAX(DECODE(ksl,'KSL 11',serviced))      AS "KSL 11_SERVICED"
  ,MAX(DECODE(ksl,'KSL 11',st))        AS "KSL 11_ST"  
  ,MAX(DECODE(ksl,'KSL 11',ht))        AS "KSL 11_HT"
  ,MAX(DECODE(ksl,'KSL 11',passed))      AS "KSL 11_PASS"    
  ,MAX(DECODE(ksl,'KSL 11',ampel))   AS "KSL 11_AMPEL"
  
  ,MAX(DECODE(ksl,'KSL 12',"%"))     AS "KSL 12"   
  ,MAX(DECODE(ksl,'KSL 12',missed))      AS "KSL 12_MISSED"
  ,MAX(DECODE(ksl,'KSL 12',opened))      AS "KSL 12_OPENED"  
  ,MAX(DECODE(ksl,'KSL 12',serviced))      AS "KSL 12_SERVICED"
  ,MAX(DECODE(ksl,'KSL 12',st))        AS "KSL 12_ST"  
  ,MAX(DECODE(ksl,'KSL 12',ht))        AS "KSL 12_HT"
  ,MAX(DECODE(ksl,'KSL 12',passed))      AS "KSL 12_PASS"    
  ,MAX(DECODE(ksl,'KSL 12',ampel))   AS "KSL 12_AMPEL"   

  ,MAX(DECODE(ksl,'KM 3',"%"))          AS "KM 3" 
  ,MAX(DECODE(ksl,'KM 3',missed))        AS "KM 3_MISSED"
  ,MAX(DECODE(ksl,'KM 3',opened))          AS "KM 3_OPENED"    
  ,MAX(DECODE(ksl,'KM 3',serviced))    AS "KM 3_SERVICED"
  ,MAX(DECODE(ksl,'KM 3',st))            AS "KM 3_ST"    
  ,MAX(DECODE(ksl,'KM 3',ht))              AS "KM 3_HT"
  ,MAX(DECODE(ksl,'KM 3',passed))          AS "KM 3_PASS"  
  ,MAX(DECODE(ksl,'KM 3',ampel))       AS "KM 3_AMPEL"     
  
  ,MAX(DECODE(ksl,'KM 4',"%"))          AS "KM 4" 
  ,MAX(DECODE(ksl,'KM 4',missed))        AS "KM 4_MISSED"
  ,MAX(DECODE(ksl,'KM 4',opened))          AS "KM 4_OPENED"    
  ,MAX(DECODE(ksl,'KM 4',serviced))    AS "KM 4_SERVICED"
  ,MAX(DECODE(ksl,'KM 4',st))            AS "KM 4_ST"    
  ,MAX(DECODE(ksl,'KM 4',ht))              AS "KM 4_HT"
  ,MAX(DECODE(ksl,'KM 4',passed))          AS "KM 4_PASS"  
  ,MAX(DECODE(ksl,'KM 4',ampel))       AS "KM 4_AMPEL" 
  
  ,MAX(DECODE(ksl,'KM 5',"%"))          AS "KM 5" 
  ,MAX(DECODE(ksl,'KM 5',missed))        AS "KM 5_MISSED"
  ,MAX(DECODE(ksl,'KM 5',opened))          AS "KM 5_OPENED"    
  ,MAX(DECODE(ksl,'KM 5',serviced))    AS "KM 5_SERVICED"
  ,MAX(DECODE(ksl,'KM 5',st))            AS "KM 5_ST"    
  ,MAX(DECODE(ksl,'KM 5',ht))              AS "KM 5_HT"
  ,MAX(DECODE(ksl,'KM 5',passed))          AS "KM 5_PASS"  
  ,MAX(DECODE(ksl,'KM 5',ampel))       AS "KM 5_AMPEL"     
  
  ,MAX(DECODE(ksl,'KM 6',"%"))          AS "KM 6" 
  ,MAX(DECODE(ksl,'KM 6',missed))        AS "KM 6_MISSED"
  ,MAX(DECODE(ksl,'KM 6',opened))          AS "KM 6_OPENED"    
  ,MAX(DECODE(ksl,'KM 6',serviced))    AS "KM 6_SERVICED"
  ,MAX(DECODE(ksl,'KM 6',st))            AS "KM 6_ST"    
  ,MAX(DECODE(ksl,'KM 6',ht))              AS "KM 6_HT"
  ,MAX(DECODE(ksl,'KM 6',passed))          AS "KM 6_PASS"  
  ,MAX(DECODE(ksl,'KM 6',ampel))       AS "KM 6_AMPEL"  
  
  ,MAX(DECODE(ksl,'KM 7',"%"))     AS "KM 7" 
  ,MAX(DECODE(ksl,'KM 7',missed))        AS "KM 7_MISSED"
  ,MAX(DECODE(ksl,'KM 7',opened))          AS "KM 7_OPENED"    
  ,MAX(DECODE(ksl,'KM 7',serviced))    AS "KM 7_SERVICED"
  ,MAX(DECODE(ksl,'KM 7',st))            AS "KM 7_ST"    
  ,MAX(DECODE(ksl,'KM 7',ht))              AS "KM 7_HT"
  ,MAX(DECODE(ksl,'KM 7',passed))          AS "KM 7_PASS"  
  ,MAX(DECODE(ksl,'KM 7',ampel))       AS "KM 7_AMPEL"  
  
  ,MAX(DECODE(ksl,'KM 9',"%"))     AS "KM 9" 
  ,MAX(DECODE(ksl,'KM 9',missed))        AS "KM 9_MISSED"
  ,MAX(DECODE(ksl,'KM 9',opened))          AS "KM 9_OPENED"    
  ,MAX(DECODE(ksl,'KM 9',serviced))    AS "KM 9_SERVICED"
  ,MAX(DECODE(ksl,'KM 9',st))            AS "KM 9_ST"    
  ,MAX(DECODE(ksl,'KM 9',ht))              AS "KM 9_HT"
  ,MAX(DECODE(ksl,'KM 9',passed))          AS "KM 9_PASS"  
  ,MAX(DECODE(ksl,'KM 9',ampel))       AS "KM 9_AMPEL"      

  ,MAX(DECODE(ksl,'KM 11',"%"))          AS "KM 11"  
  ,MAX(DECODE(ksl,'KM 11',missed))   AS "KM 11_MISSED"
  ,MAX(DECODE(ksl,'KM 11',opened))      AS "KM 11_OPENED" 
  ,MAX(DECODE(ksl,'KM 11',serviced))   AS "KM 11_SERVICED"
  ,MAX(DECODE(ksl,'KM 11',st))        AS "KM 11_ST" 
  ,MAX(DECODE(ksl,'KM 11',ht))       AS "KM 11_HT"
  ,MAX(DECODE(ksl,'KM 11',passed))    AS "KM 11_PASS"   
  ,MAX(DECODE(ksl,'KM 11',ampel))        AS "KM 11_AMPEL"
  
  ,MAX(DECODE(ksl,'KM 12',"%"))     AS "KM 12"  
  ,MAX(DECODE(ksl,'KM 12',missed))   AS "KM 12_MISSED"
  ,MAX(DECODE(ksl,'KM 12',opened))      AS "KM 12_OPENED" 
  ,MAX(DECODE(ksl,'KM 12',serviced))   AS "KM 12_SERVICED"
  ,MAX(DECODE(ksl,'KM 12',st))        AS "KM 12_ST" 
  ,MAX(DECODE(ksl,'KM 12',ht))       AS "KM 12_HT"
  ,MAX(DECODE(ksl,'KM 12',passed))    AS "KM 12_PASS"   
  ,MAX(DECODE(ksl,'KM 12',ampel))        AS "KM 12_AMPEL"

  ,MAX(DECODE(ksl,'KM 13',"%"))       AS "KM 13"  
  ,MAX(DECODE(ksl,'KM 13',missed))   AS "KM 13_MISSED"
  ,MAX(DECODE(ksl,'KM 13',opened))      AS "KM 13_OPENED" 
  ,MAX(DECODE(ksl,'KM 13',serviced))   AS "KM 13_SERVICED"
  ,MAX(DECODE(ksl,'KM 13',st))        AS "KM 13_ST" 
  ,MAX(DECODE(ksl,'KM 13',ht))       AS "KM 13_HT"
  ,MAX(DECODE(ksl,'KM 13',passed))    AS "KM 13_PASS"   
  ,MAX(DECODE(ksl,'KM 13',ampel))        AS "KM 13_AMPEL" 
  
  ,MAX(DECODE(ksl,'KM 14',"%"))        AS "KM 14"  
  ,MAX(DECODE(ksl,'KM 14',missed))   AS "KM 14_MISSED"
  ,MAX(DECODE(ksl,'KM 14',opened))      AS "KM 14_OPENED" 
  ,MAX(DECODE(ksl,'KM 14',serviced))   AS "KM 14_SERVICED"
  ,MAX(DECODE(ksl,'KM 14',st))        AS "KM 14_ST" 
  ,MAX(DECODE(ksl,'KM 14',ht))       AS "KM 14_HT"
  ,MAX(DECODE(ksl,'KM 14',passed))    AS "KM 14_PASS"   
  ,MAX(DECODE(ksl,'KM 14',ampel))        AS "KM 14_AMPEL"
  
  ,MAX(DECODE(ksl,'KM 15',"%"))     AS "KM 15"  
  ,MAX(DECODE(ksl,'KM 15',missed))   AS "KM 15_MISSED"
  ,MAX(DECODE(ksl,'KM 15',opened))      AS "KM 15_OPENED" 
  ,MAX(DECODE(ksl,'KM 15',serviced))   AS "KM 15_SERVICED"
  ,MAX(DECODE(ksl,'KM 15',st))        AS "KM 15_ST" 
  ,MAX(DECODE(ksl,'KM 15',ht))       AS "KM 15_HT"
  ,MAX(DECODE(ksl,'KM 15',passed))    AS "KM 15_PASS"   
  ,MAX(DECODE(ksl,'KM 15',ampel))        AS "KM 15_AMPEL"     

  INTO rec
  
  FROM TABLE(P_KSL.OVERVIEW_T(P_BUSINESS_CLUSTER => PP_BUSINESS_CLUSTER, P_CLOSED_DATE => PP_CLOSED_DATE))
  
  GROUP BY contract,business_cluster,closed_date;     
   
   PIPE ROW(rec);
   
     RETURN;
   END;

BEGIN
  -- Initialization
  NULL;
END P_KSL;
/
