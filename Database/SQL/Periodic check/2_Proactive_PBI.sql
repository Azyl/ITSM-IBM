SELECT
  SUB_V_PROBLEM_ALL_DATA.*,
  CASE WHEN SUB_V_PROBLEM_ALL_DATA.INVESTIGATION_TIME_TARGET >= SUB_V_PROBLEM_ALL_DATA.INVESTIGATION_TIME THEN 'passed' ELSE 'missed' END AS INVESTIGATION_TIME_ACHIEVED
from (
  SELECT TO_CHAR(V_PROBLEM_ALL_DATA.LAST_COMPLETED_DATE, 'YYYY_MM') AS COMPLETED_DATE_YEAR_MONTH,
    TO_CHAR(V_PROBLEM_ALL_DATA.LAST_COMPLETED_DATE, 'YYYY')         AS COMPLETED_DATE_YEAR,
 	V_PROBLEM_ALL_DATA.LAST_COMPLETED_DATE,
    V_PROBLEM_ALL_DATA.PROBLEM_INVESTIGATION_ID,
    V_PROBLEM_ALL_DATA.PRIORITY,
    V_PROBLEM_ALL_DATA.IMPACT,
	V_PROBLEM_ALL_DATA.SUMMARY,
    V_PROBLEM_ALL_DATA.URGENCY,
    V_PROBLEM_ALL_DATA.SERVICE,
    V_PROBLEM_ALL_DATA.PROD_CAT1,
    V_PROBLEM_ALL_DATA.PROD_CAT2,
    V_PROBLEM_ALL_DATA.PROD_CAT3,
    V_PROBLEM_ALL_DATA.STATUS,
    V_PROBLEM_ALL_DATA.STATUS_REASON,
    V_PROBLEM_ALL_DATA.ASSIGNED_GROUP,
    V_PROBLEM_ALL_DATA.ASSIGNED_SUPPORT_ORGANIZATION,
    V_PROBLEM_ALL_DATA.COORDINATOR_GROUP,
    V_PROBLEM_ALL_DATA.COORDINATOR_SUPPORT_ORG,
    CASE
      WHEN V_PROBLEM_ALL_DATA.COORDINATOR_SUPPORT_ORG = 'ao:bmw' THEN 'Yes'
      ELSE 'No'
    END AS COORDINATED_BY_BMW,
    CASE
      WHEN V_PROBLEM_ALL_DATA.COORDINATOR_SUPPORT_ORG IN ('ao-caee:ibm','ab:ibm','mt-caee:ibm') THEN 'Yes'
      ELSE 'No'
    END AS COORDINATED_BY_PROVIDER,
    V_PROBLEM_ALL_DATA.SERVICE_DEPTGRP,
    V_PROBLEM_ALL_DATA.SUBMITTER_DEPTGRP,
    V_PROBLEM_ALL_DATA.PBI_CI,
    V_PROBLEM_ALL_DATA.INVESTIGATION_DRIVER,
    V_PROBLEM_ALL_DATA.PROBLEM_LOCATION,
    V_PROBLEM_ALL_DATA.VENDOR_TICKET_NUMBER,
    V_PROBLEM_ALL_DATA.CLOSED_DATE,
    V_PROBLEM_ALL_DATA.KNOWN_ERROR_CREATED_DATE,
    V_PROBLEM_ALL_DATA.SUBMIT_DATE,
     to_char (V_PROBLEM_ALL_DATA."SUBMIT_DATE", 'YYYY') as SUBMIT_DATE_YEAR,
    V_PROBLEM_ALL_DATA.LAST_MODIFIED_DATE,
    V_PROBLEM_ALL_DATA.WORKAROUND_DETERMINED_ON_DATE,
    V_PROBLEM_ALL_DATA.TARGET_DATE,
    V_QUAL_CONFIG_ITSM_SERVICE.MIS_3_NS  AS CONTRACT,
    V_QUAL_CONFIG_ITSM_SERVICE.MIS_5_NS  AS BUSINESS_CLUSTER,
    V_QUAL_CONFIG_ITSM_SERVICE.MIS_6_NS AS REPORTED_TOWER, 
    V_QUAL_CONFIG_ITSM_SERVICE.MIS_10_NS AS COC_DATE,
    CASE WHEN NOT V_PROBLEM_ALL_DATA.LAST_COMPLETED_DATE IS NULL THEN
      TRUNC(V_PROBLEM_ALL_DATA.LAST_COMPLETED_DATE) -  TRUNC(V_PROBLEM_ALL_DATA.SUBMIT_DATE) + 1
    WHEN V_PROBLEM_ALL_DATA.LAST_COMPLETED_DATE IS NULL AND V_PROBLEM_ALL_DATA.STATUS = 'Closed' THEN
      TRUNC(V_PROBLEM_ALL_DATA.CLOSED_DATE) -  TRUNC(V_PROBLEM_ALL_DATA.SUBMIT_DATE) + 1
--    ELSE TRUNC(SYSDATE) -  TRUNC(V_PROBLEM_ALL_DATA.SUBMIT_DATE) + 1
    END AS INVESTIGATION_TIME,
    CASE V_PROBLEM_ALL_DATA.PRIORITY
      WHEN 'Critical' THEN 15
      WHEN 'High' THEN 30
      WHEN 'Low' THEN 90
    END AS INVESTIGATION_TIME_TARGET,
    TO_DATE(V_QUAL_CONFIG_ITSM_SERVICE.MIS_9_NS, 'DD.MM.YYYY') AS EOC_DATE,
    case
      when TO_DATE(V_QUAL_CONFIG_ITSM_SERVICE.MIS_10_NS, 'DD.MM.YY') is NULL then 'Current'
      when TO_DATE(V_QUAL_CONFIG_ITSM_SERVICE.MIS_10_NS, 'DD.MM.YY') <= TRUNC( V_PROBLEM_ALL_DATA."SUBMIT_DATE") 
        AND (TO_DATE(V_QUAL_CONFIG_ITSM_SERVICE.MIS_9_NS, 'DD.MM.YY') > TRUNC( V_PROBLEM_ALL_DATA."SUBMIT_DATE")
        OR TO_DATE(V_QUAL_CONFIG_ITSM_SERVICE.MIS_9_NS, 'DD.MM.YY') IS NULL)
        then 'Current'
      when TO_DATE(V_QUAL_CONFIG_ITSM_SERVICE.MIS_9_NS, 'DD.MM.YY') <= TRUNC( V_PROBLEM_ALL_DATA."SUBMIT_DATE")
        then 'Obsolete'
      else 'Planned'
    end COC_STATUS,
   V_QUAL_CONFIG_ITSM_SERVICE.MIS_7_NS AS "ITOM_SCOPE", 
   V_QUAL_CONFIG_ITSM_SERVICE.MIS_8_NS AS "ITOM_COC_DATE",
   CASE
       WHEN TO_DATE(V_QUAL_CONFIG_ITSM_SERVICE.MIS_8_NS, 'DD.MM.YY') is NULL then 'n/a'
       WHEN TO_DATE(V_QUAL_CONFIG_ITSM_SERVICE.MIS_8_NS, 'DD.MM.YY') <= V_PROBLEM_ALL_DATA."SUBMIT_DATE" then 'Current'
       ELSE 'Planned'
   END "ITOM_COC_STATUS"
  FROM  "QQITSMREP_READ"."V_PROBLEM_ALL_DATA" V_PROBLEM_ALL_DATA
    left  join
      "QQITSMREP"."V_QUAL_CONFIG_ITSM_SERVICE" V_QUAL_CONFIG_ITSM_SERVICE
    on
      V_PROBLEM_ALL_DATA."SERVICE" = V_QUAL_CONFIG_ITSM_SERVICE."ITSM_SERVICE"
WHERE
    V_QUAL_CONFIG_ITSM_SERVICE.MIS_3_NS = 'CAEE II'
    AND
    ASSIGNED_SUPPORT_ORGANIZATION in ('ao-caee:ibm','ab:ibm')
    AND
	V_PROBLEM_ALL_DATA.PROD_CAT3 in ('cad','cae','cat','ca-infra','cat','ee','quality')
and V_PROBLEM_ALL_DATA.PROBLEM_INVESTIGATION_ID in (
select distinct(PROBLEM_INVESTIGATION_ID) from v_problem_worklog 
where upper(summary) like '%PROA%')) SUB_V_PROBLEM_ALL_DATA