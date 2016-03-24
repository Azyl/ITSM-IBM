CREATE OR REPLACE FORCE VIEW V_KSL_2_11C AS
WITH ACHI AS
 (SELECT COUNT(*) AS CNT,
         CONTRACT,
         BUSINESS_CLUSTER,
         SERVICE,
         TO_CHAR("CLOSED_DATE", 'YYYY_MM') AS "CLOSED_DATE",
         INCIDENT_TYPE,
         PRIORITY,
         '1' AS "SL_ACHIEVED"
    FROM V_KSL_2_11
   WHERE
     (RESOLVED_GROUP_SUPP_ORG IN ('ao-caee:ibm', 'ab:ibm', 'mt-caee:ibm') OR
         (RESOLVED_GROUP_SUPP_ORG IS NULL AND
         SUPPORT_ORGANIZATION IN ('ao-caee:ibm', 'ab:ibm', 'mt-caee:ibm')))
     AND SOLUTION_TIME_ACHIEVED = 'Yes'
   GROUP BY CONTRACT, BUSINESS_CLUSTER,service, TO_CHAR("CLOSED_DATE", 'YYYY_MM'), INCIDENT_TYPE, PRIORITY),

ALLI AS
 (SELECT COUNT(*) AS CNT,
         CONTRACT,
         BUSINESS_CLUSTER,
         service,
         TO_CHAR("CLOSED_DATE", 'YYYY_MM') AS "CLOSED_DATE",
         INCIDENT_TYPE,
         PRIORITY,
         '0' AS "SL_ACHIEVED"
    FROM V_KSL_2_11
   WHERE
     (RESOLVED_GROUP_SUPP_ORG IN ('ao-caee:ibm', 'ab:ibm', 'mt-caee:ibm') OR
         (RESOLVED_GROUP_SUPP_ORG IS NULL AND
         SUPPORT_ORGANIZATION IN ('ao-caee:ibm', 'ab:ibm', 'mt-caee:ibm')))

   GROUP BY CONTRACT, BUSINESS_CLUSTER,service, TO_CHAR("CLOSED_DATE", 'YYYY_MM'), INCIDENT_TYPE, PRIORITY)

SELECT ALLI.CONTRACT,
       ALLI.BUSINESS_CLUSTER,
       ALLI.service,
       ALLI.CLOSED_DATE,
       ALLI.INCIDENT_TYPE,
       ALLI.PRIORITY,
       ABS(ALLI.CNT - NVL(TO_NUMBER(ACHI.CNT), 0)) AS "MISSED",
       ACHI.CNT AS "ACHIEVED",
       ALLI.CNT AS "SERVICED",
       ROUND(DECODE(ACHI.CNT, 0, ALLI.CNT, ACHI.CNT) / (ALLI.CNT), 2) * 100 || '% ' AS "s%",
       CASE
         WHEN ALLI.PRIORITY = 'Low' AND ALLI.INCIDENT_TYPE = 'User Service Restoration' THEN
          'KSL-5'
         WHEN ALLI.PRIORITY = 'Medium' AND ALLI.INCIDENT_TYPE = 'User Service Restoration' THEN
          'KSL-4'
         WHEN ALLI.PRIORITY = 'High' AND ALLI.INCIDENT_TYPE = 'User Service Restoration' THEN
          'KSL-5'
         WHEN ALLI.PRIORITY = 'Critical' AND ALLI.INCIDENT_TYPE = 'User Service Restoration' THEN
          'KSL-2'

         WHEN ALLI.INCIDENT_TYPE = 'User Service Request' THEN
          'KSL-10'

         WHEN ALLI.PRIORITY = 'Low' AND
              ALLI.INCIDENT_TYPE IN ('Infrastructure Restoration', 'Infrastructure Event') THEN
          'KSL-9'
         WHEN ALLI.PRIORITY = 'Medium' AND
              ALLI.INCIDENT_TYPE IN ('Infrastructure Restoration', 'Infrastructure Event') THEN
          'KSL-8'
         WHEN ALLI.PRIORITY = 'High' AND
              ALLI.INCIDENT_TYPE IN ('Infrastructure Restoration', 'Infrastructure Event') THEN
          'KSL-7'
         WHEN ALLI.PRIORITY = 'Critical' AND
              ALLI.INCIDENT_TYPE IN ('Infrastructure Restoration', 'Infrastructure Event') THEN
          'KSL-6'

       END AS "KLS"

  FROM ALLI, ACHI
 WHERE ALLI.CONTRACT = ACHI.CONTRACT
   AND ALLI.BUSINESS_CLUSTER = ACHI.BUSINESS_CLUSTER
   AND ALLi.service = ACHI.service
   AND ALLI.PRIORITY = ACHI.PRIORITY
   AND ALLI.INCIDENT_TYPE = ACHI.INCIDENT_TYPE
   AND ALLI."CLOSED_DATE" = ACHI."CLOSED_DATE"

--ORDER BY BUSINESS_CLUSTER, INCIDENT_TYPE, PRIORITY
;

