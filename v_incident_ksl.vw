CREATE OR REPLACE FORCE VIEW V_INCIDENT_KSL AS
SELECT
CONTRACT,
BUSINESS_CLUSTER,
SERVICE,
CLOSED_DATE,
INCIDENT_TYPE,
priority,
SUM(MISSED) AS MISSED,
SUM(ACHIEVED) AS ACHIEVED,
SUM(SERVICED) AS SERVICED,
ROUND(DECODE(SUM(ACHIEVED),0,SUM(SERVICED), SUM(ACHIEVED)) / SUM(SERVICED),3) * 100 || '% ' AS "%"
 FROM (
SELECT
                CONTRACT,
               BUSINESS_CLUSTER,
               SERVICE,
               TO_CHAR("CLOSED_DATE", 'YYYY_MM') AS "CLOSED_DATE",
               INCIDENT_TYPE,
               PRIORITY,
               ABS(COUNT(*) - coalesce(SUM(SOLUTION_TIME_ACHIEVED_FLAG), 0)) AS "MISSED",
               SUM(SOLUTION_TIME_ACHIEVED_FLAG) AS ACHIEVED,
               COUNT(*) AS SERVICED,

               ROUND(DECODE(SUM(SOLUTION_TIME_ACHIEVED_FLAG),
                            0,
                            COUNT(*),
                            SUM(SOLUTION_TIME_ACHIEVED_FLAG)) / (COUNT(*)),
                     3) * 100 || '% ' AS "%"

          FROM V_KSL_2_11

         WHERE

        -- contract='CAEE II' AND BUSINESS_CLUSTER='FG_Funktionale-Gestaltung'
       --  AND  priority = 'Critical'

 --  AND
         (RESOLVED_GROUP_SUPP_ORG IN ('ao-caee:ibm', 'ab:ibm', 'mt-caee:ibm') OR
               (RESOLVED_GROUP_SUPP_ORG IS NULL AND
               SUPPORT_ORGANIZATION IN ('ao-caee:ibm', 'ab:ibm', 'mt-caee:ibm')))

         GROUP BY ROLLUP(CONTRACT,
                         BUSINESS_CLUSTER,
                         SERVICE,
                         TO_CHAR("CLOSED_DATE", 'YYYY_MM'),
                         INCIDENT_TYPE,
                         PRIORITY)
 )
GROUP BY
CONTRACT,
BUSINESS_CLUSTER,
SERVICE,
CLOSED_DATE,
INCIDENT_TYPE,
priority
;

