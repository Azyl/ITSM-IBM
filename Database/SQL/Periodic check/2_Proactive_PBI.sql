/* Formatted on 26/04/16 21:30:59 (QP5 v5.287) */
  SELECT DISTINCT base.*
    FROM (SELECT TO_CHAR (V_PROBLEM_ALL_DATA.SUBMIT_DATE, 'YYYY')
                    AS submit_date_year,
                 TO_CHAR (V_PROBLEM_ALL_DATA.SUBMIT_DATE, 'MON') AS submit_date,
                 DECODE (
                    TO_CHAR (V_PROBLEM_ALL_DATA.SUBMIT_DATE, 'YYYY_MM'),
                    TO_CHAR (SYSDATE, 'YYYY_MM'), V_QUAL_CONFIG_ITSM_SERVICE.MIS_5_NS)
                    AS BUSINESS_CLUSTER,
                 DECODE (
                    TO_CHAR (V_PROBLEM_ALL_DATA.SUBMIT_DATE, 'YYYY_MM'),
                    TO_CHAR (SYSDATE, 'YYYY_MM'), V_PROBLEM_ALL_DATA.SERVICE)
                    AS service,
                 DECODE (
                    TO_CHAR (V_PROBLEM_ALL_DATA.SUBMIT_DATE, 'YYYY_MM'),
                    TO_CHAR (SYSDATE, 'YYYY_MM'), V_PROBLEM_ALL_DATA.COORDINATOR_GROUP)
                    AS coordinator_group,
                 DECODE (
                    TO_CHAR (V_PROBLEM_ALL_DATA.SUBMIT_DATE, 'YYYY_MM'),
                    TO_CHAR (SYSDATE, 'YYYY_MM'), V_PROBLEM_ALL_DATA.ASSIGNED_GROUP)
                    AS assigned_group,
                 DECODE (
                    TO_CHAR (V_PROBLEM_ALL_DATA.SUBMIT_DATE, 'YYYY_MM'),
                    TO_CHAR (SYSDATE, 'YYYY_MM'), V_PROBLEM_ALL_DATA.SUMMARY)
                    AS summary,
                 COUNT (
                    *)
                 OVER (
                    PARTITION BY TO_CHAR (V_PROBLEM_ALL_DATA.SUBMIT_DATE,
                                          'YYYY_MM'))
                    AS PBI
            FROM V_PROBLEM_ALL_DATA
                 LEFT JOIN V_QUAL_CONFIG_ITSM_SERVICE
                    ON V_PROBLEM_ALL_DATA."SERVICE" =
                          V_QUAL_CONFIG_ITSM_SERVICE."ITSM_SERVICE"
           WHERE     V_QUAL_CONFIG_ITSM_SERVICE.MIS_3_NS = 'CAEE II'
                 AND ASSIGNED_SUPPORT_ORGANIZATION IN ('ao-caee:ibm', 'ab:ibm')
                 AND V_PROBLEM_ALL_DATA.PROD_CAT3 IN ('cad',
                                                      'cae',
                                                      'cat',
                                                      'ca-infra',
                                                      'cat',
                                                      'ee',
                                                      'quality')
                 AND V_PROBLEM_ALL_DATA.PROBLEM_INVESTIGATION_ID IN
                        (SELECT DISTINCT (PROBLEM_INVESTIGATION_ID)
                           FROM v_problem_worklog
                          WHERE UPPER (summary) LIKE '%PROA%')-- and V_PROBLEM_ALL_DATA.SUBMIT_DATE >= TRUNC(SYSDATE,'MM')
                                                              --order by to_number(TO_CHAR(V_PROBLEM_ALL_DATA.SUBMIT_DATE, 'YYYY')) desc
                                                              --order by 1,to_date(submit_date_year||submit_date,'YYYYMON'),3 nulls first
         ) base
ORDER BY 1, TO_DATE (submit_date, 'MON');


  SELECT V_PROBLEM_ALL_DATA.service,
         TO_CHAR (V_PROBLEM_ALL_DATA.SUBMIT_DATE, 'YYYY_MM') AS submit_date,
         COUNT (*)
    FROM V_PROBLEM_ALL_DATA
         LEFT JOIN V_QUAL_CONFIG_ITSM_SERVICE
            ON V_PROBLEM_ALL_DATA."SERVICE" =
                  V_QUAL_CONFIG_ITSM_SERVICE."ITSM_SERVICE"
   WHERE     V_QUAL_CONFIG_ITSM_SERVICE.MIS_3_NS = 'CAEE II'
         AND ASSIGNED_SUPPORT_ORGANIZATION IN ('ao-caee:ibm', 'ab:ibm')
         AND V_PROBLEM_ALL_DATA.PROD_CAT3 IN ('cad',
                                              'cae',
                                              'cat',
                                              'ca-infra',
                                              'cat',
                                              'ee',
                                              'quality')
GROUP BY V_PROBLEM_ALL_DATA.service,
         TO_CHAR (V_PROBLEM_ALL_DATA.SUBMIT_DATE, 'YYYY_MM');