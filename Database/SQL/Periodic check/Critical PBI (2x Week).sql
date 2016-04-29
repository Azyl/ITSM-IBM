/* Formatted on 21/04/16 11:24:28 (QP5 v5.287) */
  SELECT V_PROBLEM_ALL_DATA.LAST_MODIFIED_DATE,
         V_PROBLEM_ALL_DATA.STATUS,
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
         V_PROBLEM_ALL_DATA.COORDINATOR_GROUP,
         V_PROBLEM_ALL_DATA.ASSIGNED_GROUP,
         V_PROBLEM_ALL_DATA.SUBMIT_DATE
    FROM V_PROBLEM_ALL_DATA V_PROBLEM_ALL_DATA
         LEFT JOIN V_QUAL_CONFIG_ITSM_SERVICE V_QUAL_CONFIG_ITSM_SERVICE
            ON V_PROBLEM_ALL_DATA.SERVICE =
                  V_QUAL_CONFIG_ITSM_SERVICE.ITSM_SERVICE
   WHERE     V_PROBLEM_ALL_DATA.STATUS IN ('Draft',
                                           'Under Review',
                                           'Request For Authorization',
                                           'Assigned',
                                           'Under Investigation',
                                           'Pending',
                                           'Rejected',
                                           'Cancelled')
         AND V_QUAL_CONFIG_ITSM_SERVICE.MIS_3_NS = 'CAEE II'
         AND V_PROBLEM_ALL_DATA.STATUS IN ('Assigned',
                                           'Draft',
                                           'Pending',
                                           'Under Investigation',
                                           'Under Review',
                                           'Completed')
         AND V_PROBLEM_ALL_DATA.PRIORITY = 'Critical'
         AND V_PROBLEM_ALL_DATA.SUBMIT_DATE >= SYSDATE - 2
ORDER BY V_PROBLEM_ALL_DATA.STATUS,
         V_PROBLEM_ALL_DATA.LAST_MODIFIED_DATE DESC;