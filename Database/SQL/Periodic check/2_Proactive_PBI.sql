/* Formatted on 26/04/16 18:10:16 (QP5 v5.287) */
SELECT TO_CHAR (V_PROBLEM_ALL_DATA.SUBMIT_DATE, 'YYYY') AS submit_date_year,
       TO_CHAR (V_PROBLEM_ALL_DATA.SUBMIT_DATE, 'MON') AS submit_date,
       decode(to_char(V_PROBLEM_ALL_DATA.SUBMIT_DATE,'YYYY_MM'),to_char(sysdate,'YYYY_MM'),V_QUAL_CONFIG_ITSM_SERVICE.MIS_5_NS) AS BUSINESS_CLUSTER,
       decode(to_char(V_PROBLEM_ALL_DATA.SUBMIT_DATE,'YYYY_MM'),to_char(sysdate,'YYYY_MM'),V_PROBLEM_ALL_DATA.SERVICE) as service,
       decode(to_char(V_PROBLEM_ALL_DATA.SUBMIT_DATE,'YYYY_MM'),to_char(sysdate,'YYYY_MM'),V_PROBLEM_ALL_DATA.COORDINATOR_GROUP) as coordinator_group,
       decode(to_char(V_PROBLEM_ALL_DATA.SUBMIT_DATE,'YYYY_MM'),to_char(sysdate,'YYYY_MM'),V_PROBLEM_ALL_DATA.ASSIGNED_GROUP) as assigned_group,
       decode(to_char(V_PROBLEM_ALL_DATA.SUBMIT_DATE,'YYYY_MM'),to_char(sysdate,'YYYY_MM'),V_PROBLEM_ALL_DATA.SUMMARY) as summary,
       count(*) over (partition by to_char(V_PROBLEM_ALL_DATA.SUBMIT_DATE, 'YYYY_MM')) AS PBI
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
                WHERE UPPER (summary) LIKE '%PROA%')
      -- and V_PROBLEM_ALL_DATA.SUBMIT_DATE >= TRUNC(SYSDATE,'MM')
order by 1,V_PROBLEM_ALL_DATA.SUBMIT_DATE