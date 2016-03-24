CREATE OR REPLACE FORCE VIEW V_KM_13 AS
SELECT V."COMPLETED_DATE_YEAR_MONTH",V."COMPLETED_DATE_YEAR",V."LAST_COMPLETED_DATE",V."PROBLEM_INVESTIGATION_ID",V."PRIORITY",V."IMPACT",V."URGENCY",V."SERVICE",V."PROD_CAT1",V."PROD_CAT2",V."PROD_CAT3",V."STATUS",V."STATUS_REASON",V."ASSIGNED_GROUP",V."ASSIGNED_SUPPORT_ORGANIZATION",V."COORDINATOR_GROUP",V."COORDINATOR_SUPPORT_ORG",V."COORDINATED_BY_BMW",V."COORDINATED_BY_PROVIDER",V."SERVICE_DEPTGRP",V."SUBMITTER_DEPTGRP",V."PBI_CI",V."INVESTIGATION_DRIVER",V."PROBLEM_LINK",V."PROBLEM_LOCATION",V."VENDOR_TICKET_NUMBER",V."CLOSED_DATE",V."KNOWN_ERROR_CREATED_DATE",V."SUBMIT_DATE",V."LAST_MODIFIED_DATE",V."WORKAROUND_DETERMINED_ON_DATE",V."TARGET_DATE",V."CONTRACT",V."BUSINESS_CLUSTER",V."REPORTED_TOWER",V."COC_DATE",V."INVESTIGATION_TIME",V."INVESTIGATION_TIME_TARGET",V."EOC_DATE",V."COC_STATUS",V."ITOM_SCOPE",V."ITOM_COC_DATE",V."ITOM_COC_STATUS",V."INVESTIGATION_TIME_ACHIEVED",
       CASE V.INVESTIGATION_TIME_ACHIEVED
         WHEN 'passed' THEN
          1
         ELSE
          0
       END INVT_TARGET_ACHIEVED_FLAG,
       CASE WHEN COORDINATED_BY_PROVIDER = 'Yes'THEN 1
         ELSE 0 END Provider_cnt,
       CASE WHEN COORDINATED_BY_PROVIDER <> 'Yes'THEN 1
         ELSE 0 END Provider_cnt_neg

  FROM (

        SELECT SUB_V_PROBLEM_ALL_DATA.*,
                CASE
                  WHEN SUB_V_PROBLEM_ALL_DATA.INVESTIGATION_TIME_TARGET >=
                       SUB_V_PROBLEM_ALL_DATA.INVESTIGATION_TIME THEN
                   'passed'
                  ELSE
                   'missed'
                END AS INVESTIGATION_TIME_ACHIEVED
          FROM (SELECT TO_CHAR(V_PROBLEM_ALL_DATA.LAST_COMPLETED_DATE, 'YYYY_MM') AS COMPLETED_DATE_YEAR_MONTH,
                        TO_CHAR(V_PROBLEM_ALL_DATA.LAST_COMPLETED_DATE, 'YYYY') AS COMPLETED_DATE_YEAR,
                        V_PROBLEM_ALL_DATA.LAST_COMPLETED_DATE,
                        V_PROBLEM_ALL_DATA.PROBLEM_INVESTIGATION_ID,
                        V_PROBLEM_ALL_DATA.PRIORITY,
                        V_PROBLEM_ALL_DATA.IMPACT,
                        V_PROBLEM_ALL_DATA.URGENCY,
                        V_PROBLEM_ALL_DATA.SERVICE,
                        V_PROBLEM_ALL_DATA.PROD_CAT1,
                        V_PROBLEM_ALL_DATA.PROD_CAT2,
                        V_PROBLEM_ALL_DATA.PROD_CAT3,
                        V_PROBLEM_ALL_DATA.STATUS,
                        V_PROBLEM_ALL_DATA.STATUS_REASON,
                        V_PROBLEM_ALL_DATA.ASSIGNED_GROUP,
                       -- V_PROBLEM_ALL_DATA.ASSIGNED_SUPPORT_ORGANIZATION,
                        V_PROBLEM_ALL_DATA.COORDINATOR_GROUP,
                        V_PROBLEM_ALL_DATA.COORDINATOR_SUPPORT_ORG,
                        v_problem_all_data.ASSIGNED_SUPPORT_ORGANIZATION,
                        CASE
                          WHEN V_PROBLEM_ALL_DATA.COORDINATOR_SUPPORT_ORG = 'ao:bmw' THEN
                           'Yes'
                          ELSE
                           'No'
                        END AS COORDINATED_BY_BMW,
                        CASE
                          WHEN V_PROBLEM_ALL_DATA.COORDINATOR_SUPPORT_ORG IN
                               ('ao-caee:ibm', 'ab:ibm', 'mt-caee:ibm') THEN
                           'Yes'
                          ELSE
                           'No'
                        END AS COORDINATED_BY_PROVIDER,
                        V_PROBLEM_ALL_DATA.SERVICE_DEPTGRP,
                        V_PROBLEM_ALL_DATA.SUBMITTER_DEPTGRP,
                        V_PROBLEM_ALL_DATA.PBI_CI,
                        V_PROBLEM_ALL_DATA.INVESTIGATION_DRIVER,
                        V_PROBLEM_ALL_DATA.PROBLEM_LINK,
                        V_PROBLEM_ALL_DATA.PROBLEM_LOCATION,
                        V_PROBLEM_ALL_DATA.VENDOR_TICKET_NUMBER,
                        V_PROBLEM_ALL_DATA.CLOSED_DATE,
                        V_PROBLEM_ALL_DATA.KNOWN_ERROR_CREATED_DATE,
                        V_PROBLEM_ALL_DATA.SUBMIT_DATE,
                        V_PROBLEM_ALL_DATA.LAST_MODIFIED_DATE,
                        V_PROBLEM_ALL_DATA.WORKAROUND_DETERMINED_ON_DATE,
                        V_PROBLEM_ALL_DATA.TARGET_DATE,
                        V_QUAL_CONFIG_ITSM_SERVICE.MIS_3_NS AS CONTRACT,
                        V_QUAL_CONFIG_ITSM_SERVICE.MIS_5_NS AS BUSINESS_CLUSTER,
                        V_QUAL_CONFIG_ITSM_SERVICE.MIS_6_NS AS REPORTED_TOWER,
                        V_QUAL_CONFIG_ITSM_SERVICE.MIS_10_NS AS COC_DATE,
                        CASE
                          WHEN NOT V_PROBLEM_ALL_DATA.LAST_COMPLETED_DATE IS NULL THEN
                           TRUNC(V_PROBLEM_ALL_DATA.LAST_COMPLETED_DATE) -
                           TRUNC(V_PROBLEM_ALL_DATA.SUBMIT_DATE) + 1
                          WHEN V_PROBLEM_ALL_DATA.LAST_COMPLETED_DATE IS NULL AND
                               V_PROBLEM_ALL_DATA.STATUS = 'Closed' THEN
                           TRUNC(V_PROBLEM_ALL_DATA.CLOSED_DATE) - TRUNC(V_PROBLEM_ALL_DATA.SUBMIT_DATE) + 1
                        --    ELSE TRUNC(SYSDATE) -  TRUNC(V_PROBLEM_ALL_DATA.SUBMIT_DATE) + 1
                        END AS INVESTIGATION_TIME,
                        CASE V_PROBLEM_ALL_DATA.PRIORITY
                          WHEN 'Critical' THEN
                           15
                          WHEN 'High' THEN
                           30
                          WHEN 'Low' THEN
                           90
                        END AS INVESTIGATION_TIME_TARGET,
                        TO_DATE(V_QUAL_CONFIG_ITSM_SERVICE.MIS_9_NS, 'DD.MM.YYYY') AS EOC_DATE,
                        CASE
                          WHEN TO_DATE(V_QUAL_CONFIG_ITSM_SERVICE.MIS_10_NS, 'DD.MM.YY') IS NULL THEN
                           'Current'
                          WHEN TO_DATE(V_QUAL_CONFIG_ITSM_SERVICE.MIS_10_NS, 'DD.MM.YY') <=
                               TRUNC(V_PROBLEM_ALL_DATA."SUBMIT_DATE") AND
                               (TO_DATE(V_QUAL_CONFIG_ITSM_SERVICE.MIS_9_NS, 'DD.MM.YY') >
                                TRUNC(V_PROBLEM_ALL_DATA."SUBMIT_DATE") OR
                                TO_DATE(V_QUAL_CONFIG_ITSM_SERVICE.MIS_9_NS, 'DD.MM.YY') IS NULL) THEN
                           'Current'
                          WHEN TO_DATE(V_QUAL_CONFIG_ITSM_SERVICE.MIS_9_NS, 'DD.MM.YY') <=
                               TRUNC(V_PROBLEM_ALL_DATA."SUBMIT_DATE") THEN
                           'Obsolete'
                          ELSE
                           'Planned'
                        END COC_STATUS,
                        V_QUAL_CONFIG_ITSM_SERVICE.MIS_7_NS AS "ITOM_SCOPE",
                        V_QUAL_CONFIG_ITSM_SERVICE.MIS_8_NS AS "ITOM_COC_DATE",
                        CASE
                          WHEN TO_DATE(V_QUAL_CONFIG_ITSM_SERVICE.MIS_8_NS, 'DD.MM.YY') IS NULL THEN
                           'n/a'
                          WHEN TO_DATE(V_QUAL_CONFIG_ITSM_SERVICE.MIS_8_NS, 'DD.MM.YY') <=
                               V_PROBLEM_ALL_DATA."SUBMIT_DATE" THEN
                           'Current'
                          ELSE
                           'Planned'
                        END "ITOM_COC_STATUS"
                   FROM V_PROBLEM_ALL_DATA V_PROBLEM_ALL_DATA
                   LEFT JOIN V_QUAL_CONFIG_ITSM_SERVICE V_QUAL_CONFIG_ITSM_SERVICE
                     ON V_PROBLEM_ALL_DATA."SERVICE" = V_QUAL_CONFIG_ITSM_SERVICE."ITSM_SERVICE") SUB_V_PROBLEM_ALL_DATA) V
                 WHERE
                   contract = 'CAEE II'
                   AND
                  ASSIGNED_SUPPORT_ORGANIZATION IN
                  ('ao-caee:ibm', 'ab:ibm', 'mt-caee:ibm')
;

