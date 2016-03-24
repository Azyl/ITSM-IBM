CREATE OR REPLACE FORCE VIEW V_KSL_12_KM_3_4B AS
WITH ACHI AS
 (SELECT COUNT(*) AS CNT,
         CONTRACT,
         BUSINESS_CLUSTER,
         NVL(TO_CHAR(LAST_COMPLETED_DATE, 'YYYY_MM'),TO_CHAR("CLOSED_DATE", 'YYYY_MM'))AS "CLOSED_DATE",
         PRIORITY,
         '1' AS "SL_ACHIEVED"
    FROM V_KSL_12_KM_3_4
   WHERE
      COC_STATUS = 'Current'
     AND INVESTIGATION_TIME_ACHIEVED = 'passed'
   GROUP BY CONTRACT,BUSINESS_CLUSTER, NVL(TO_CHAR(LAST_COMPLETED_DATE, 'YYYY_MM'),TO_CHAR("CLOSED_DATE", 'YYYY_MM')), PRIORITY),
ALLI AS
 (SELECT COUNT(*) AS CNT,
         CONTRACT,
         BUSINESS_CLUSTER,
         NVL(TO_CHAR(LAST_COMPLETED_DATE, 'YYYY_MM'),TO_CHAR("CLOSED_DATE", 'YYYY_MM')) AS "CLOSED_DATE",
         PRIORITY,
         '0' AS "SL_ACHIEVED"
    FROM V_KSL_12_KM_3_4
   WHERE
      COC_STATUS = 'Current'
   GROUP BY CONTRACT,BUSINESS_CLUSTER, NVL(TO_CHAR(LAST_COMPLETED_DATE, 'YYYY_MM'),TO_CHAR("CLOSED_DATE", 'YYYY_MM')), PRIORITY)

SELECT
       ALLI.CONTRACT,
       ALLI.BUSINESS_CLUSTER,
       ALLI.CLOSED_DATE,
       ALLI.PRIORITY,
       ABS(ALLI.CNT - NVL(TO_NUMBER(ACHI.CNT), 0)) AS "MISSED",
       ACHI.CNT AS "ACHIEVED",
       ALLI.CNT AS "SERVICED",
       ROUND(DECODE(ACHI.CNT, 0, ALLI.CNT, ACHI.CNT) / (ALLI.CNT), 2) * 100 || '% ' AS "%",
       CASE
         WHEN ALLI.PRIORITY = 'Critical' THEN
          'KSL-12'
         ELSE
          'KM-3'
       END AS "KLS"
  FROM ALLI, ACHI
 WHERE
       ALLI.CONTRACT = ACHI.CONTRACT
   AND ALLI.BUSINESS_CLUSTER = ACHI.BUSINESS_CLUSTER
   AND ALLI.PRIORITY = ACHI.PRIORITY
   AND ALLI."CLOSED_DATE" = ACHI."CLOSED_DATE"


--ORDER BY BUSINESS_CLUSTER, PRIORITY
;

