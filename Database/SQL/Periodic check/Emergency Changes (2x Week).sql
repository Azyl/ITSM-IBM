/* Formatted on 23/04/16 20:33:39 (QP5 v5.287) */
SELECT V_CHANGE_ALL_DATA.CHANGE_ID,
       V_CHANGE_ALL_DATA.COORDINATOR_GROUP,
       V_CHANGE_ALL_DATA.MANAGER_GROUP,
       V_CHANGE_ALL_DATA.SERVICE,
       V_CHANGE_ALL_DATA.SUMMARY
  FROM V_CHANGE_ALL_DATA
       LEFT JOIN V_QUAL_CONFIG_ITSM_SERVICE
          ON V_CHANGE_ALL_DATA."SERVICE" =
                V_QUAL_CONFIG_ITSM_SERVICE."ITSM_SERVICE"
 WHERE     V_QUAL_CONFIG_ITSM_SERVICE.MIS_3_NS = 'CAEE II'
       AND V_CHANGE_ALL_DATA.CLASS = 'Emergency'
       AND V_CHANGE_ALL_DATA.IMPACT IN
              ('3-Moderate/Limited', '4-Minor/Localized')
       AND V_CHANGE_ALL_DATA.STATUS <> 'Cancelled'
       -- "SHEDULED_START_DATE_YEAR_MONTH",
       AND TO_CHAR (V_CHANGE_ALL_DATA."SCHEDULED_START_DATE", 'YYYY_MM') =
              TO_CHAR (SYSDATE, 'YYYY_MM')
       AND V_CHANGE_ALL_DATA.COORDINATOR_GROUP_SUPP_ORG IN
              ('ab:ibm', 'ao-caee:ibm');