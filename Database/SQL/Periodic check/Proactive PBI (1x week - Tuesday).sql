/* Formatted on 21/04/16 12:56:46 (QP5 v5.287) */
select * from (

SELECT TO_CHAR (V_PROBLEM_ALL_DATA."SUBMIT_DATE", 'YYYY') AS SUBMIT_DATE_YEAR,
       TO_CHAR (V_PROBLEM_ALL_DATA."SUBMIT_DATE", 'MON') AS SUBMIT_DATE,
       V_QUAL_CONFIG_ITSM_SERVICE.MIS_5_NS AS BUSINESS_CLUSTER,
       V_PROBLEM_ALL_DATA.SERVICE AS SERVICE,
       V_PROBLEM_ALL_DATA.COORDINATOR_GROUP AS COORDINATOR_GROUP,
       V_PROBLEM_ALL_DATA.SUMMARY AS SUMMARY,
       count(*) over (partition by to_char(V_PROBLEM_ALL_DATA."SUBMIT_DATE",'YYYY_MM')) as cnt
 
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
 and TO_CHAR (V_PROBLEM_ALL_DATA."SUBMIT_DATE", 'YYYY_MM') = to_char(sysdate,'YYYY_MM')
 
 union all
 
 SELECT TO_CHAR (V_PROBLEM_ALL_DATA."SUBMIT_DATE", 'YYYY') AS SUBMIT_DATE_YEAR,
       TO_CHAR (V_PROBLEM_ALL_DATA."SUBMIT_DATE", 'MON') AS SUBMIT_DATE,
     null AS BUSINESS_CLUSTER,
       null AS SERVICE,
       null AS COORDINATOR_GROUP,
       null AS SUMMARY,
       count(*) as cnt
 
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
 and TO_CHAR (V_PROBLEM_ALL_DATA."SUBMIT_DATE", 'YYYY_MM') <> to_char(sysdate,'YYYY_MM')
group by TO_CHAR (V_PROBLEM_ALL_DATA."SUBMIT_DATE", 'YYYY') ,
       TO_CHAR (V_PROBLEM_ALL_DATA."SUBMIT_DATE", 'MON') 
 )
--order by SUBMIT_DATE_YEAR,3 nulls first
order by 1,to_date(SUBMIT_DATE,'MON')