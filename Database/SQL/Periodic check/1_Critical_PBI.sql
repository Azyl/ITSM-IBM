/* Formatted on 26/04/16 17:58:58 (QP5 v5.287) */
SELECT V_QUAL_CONFIG_ITSM_SERVICE.MIS_5_NS AS BUSINESS_CLUSTER,
       V_PROBLEM_ALL_DATA.PROBLEM_INVESTIGATION_ID,
       V_PROBLEM_ALL_DATA.SERVICE,
       V_PROBLEM_ALL_DATA.PRIORITY,
       V_PROBLEM_ALL_DATA.SUMMARY,
       V_PROBLEM_ALL_DATA.STATUS,
       V_PROBLEM_ALL_DATA.COORDINATOR_GROUP,
       V_PROBLEM_ALL_DATA.ASSIGNED_GROUP,
       CASE
          WHEN     V_PROBLEM_ALL_DATA.PRIORITY = 'Critical'
               AND   TRUNC (V_PROBLEM_ALL_DATA.LAST_MODIFIED_DATE)
                   - TRUNC (V_PROBLEM_ALL_DATA.SUBMIT_DATE)
                   + 1 <= 15
          THEN
             'passed'
          WHEN     V_PROBLEM_ALL_DATA.PRIORITY = 'High'
               AND   TRUNC (V_PROBLEM_ALL_DATA.LAST_MODIFIED_DATE)
                   - TRUNC (V_PROBLEM_ALL_DATA.SUBMIT_DATE)
                   + 1 <= 30
          THEN
             'passed'
          WHEN     V_PROBLEM_ALL_DATA.PRIORITY = 'Low'
               AND   TRUNC (V_PROBLEM_ALL_DATA.LAST_MODIFIED_DATE)
                   - TRUNC (V_PROBLEM_ALL_DATA.SUBMIT_DATE)
                   + 1 <= 90
          THEN
             'passed'
          ELSE
             'missed'
       END
          AS INVESTIGATION_TIME_ACHIEVED,
       TO_CHAR (V_PROBLEM_ALL_DATA.LAST_COMPLETED_DATE, 'YYYY_MM')
          AS COMPLETED_DATE_YEAR_MONTH,
       TO_CHAR (V_PROBLEM_ALL_DATA.LAST_COMPLETED_DATE, 'YYYY')
          AS COMPLETED_DATE_YEAR,
       V_PROBLEM_ALL_DATA.LAST_COMPLETED_DATE,
       V_PROBLEM_ALL_DATA.SUBMIT_DATE
  FROM V_PROBLEM_ALL_DATA
       LEFT JOIN V_QUAL_CONFIG_ITSM_SERVICE
          ON V_PROBLEM_ALL_DATA."SERVICE" =
                V_QUAL_CONFIG_ITSM_SERVICE."ITSM_SERVICE"
 WHERE     V_PROBLEM_ALL_DATA.STATUS IN ('Draft',
                                         'Under Review',
                                         'Request For Authorization',
                                         'Assigned',
                                         'Under Investigation',
                                         'Pending',
                                         'Rejected')
       AND V_QUAL_CONFIG_ITSM_SERVICE.MIS_3_NS = 'CAEE II'
       AND V_QUAL_CONFIG_ITSM_SERVICE.MIS_5_NS <> 'VM0'
       AND V_PROBLEM_ALL_DATA.priority = 'Critical'
--and V_PROBLEM_ALL_DATA.SUBMIT_DATE > sysdate-3