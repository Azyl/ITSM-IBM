--------------------------------------------------------
-- Export file for user ITSM@192.168.88.13:1521/XE    --
-- Created by andreitataru on 14-03-2016, 10:16:07 PM --
--------------------------------------------------------

set define off
spool expddl.log

prompt
prompt Creating table T_CONTRACT_K_TARGET
prompt ==================================
prompt
@@t_contract_k_target.tab
prompt
prompt Creating table T_SERVICE_ADD_DEF
prompt ================================
prompt
@@t_service_add_def.tab
prompt
prompt Creating table URT_USER
prompt =======================
prompt
@@urt_user.tab
prompt
prompt Creating table URT_CONNECTION_STRING
prompt ====================================
prompt
@@urt_connection_string.tab
prompt
prompt Creating table URT_SUBREPORT
prompt ============================
prompt
@@urt_subreport.tab
prompt
prompt Creating table URT_CELL_PARAMETER
prompt =================================
prompt
@@urt_cell_parameter.tab
prompt
prompt Creating table URT_INPUT_PARAMETER
prompt ==================================
prompt
@@urt_input_parameter.tab
prompt
prompt Creating table URT_NOTE
prompt =======================
prompt
@@urt_note.tab
prompt
prompt Creating table URT_SERIES
prompt =========================
prompt
@@urt_series.tab
prompt
prompt Creating table V_BDP_CTM_SUPPORTGROUP
prompt =====================================
prompt
@@v_bdp_ctm_supportgroup.tab
prompt
prompt Creating table V_CHANGE_ALL_DATA
prompt ================================
prompt
@@v_change_all_data.tab
prompt
prompt Creating table V_INCIDENT_ALL_DATA
prompt ==================================
prompt
@@v_incident_all_data.tab
prompt
prompt Creating table V_INCIDENT_LIVE_MONITOR
prompt ======================================
prompt
@@v_incident_live_monitor.tab
prompt
prompt Creating table V_KNOWN_ERROR
prompt ============================
prompt
@@v_known_error.tab
prompt
prompt Creating table V_KNOWN_ERROR_RELATIONS
prompt ======================================
prompt
@@v_known_error_relations.tab
prompt
prompt Creating table V_MEASURE_STEPS
prompt ==============================
prompt
@@v_measure_steps.tab
prompt
prompt Creating table V_PROBLEM_ALL_DATA
prompt =================================
prompt
@@v_problem_all_data.tab
prompt
prompt Creating table V_PROBLEM_WORKLOG
prompt ================================
prompt
@@v_problem_worklog.tab
prompt
prompt Creating table V_QUAL_CONFIG_ITSM_SERVICE
prompt =========================================
prompt
@@v_qual_config_itsm_service.tab
prompt
prompt Creating table V_RQM_AVBEW_SOLLISTSTD
prompt =====================================
prompt
@@v_rqm_avbew_solliststd.tab
prompt
prompt Creating table V_RQM_AVPAB_AUDITFORM
prompt ====================================
prompt
@@v_rqm_avpab_auditform.tab
prompt
prompt Creating table V_RQM_BI_TICKETS
prompt ===============================
prompt
@@v_rqm_bi_tickets.tab
prompt
prompt Creating table V_RQM_KPI4_ALL_DATA
prompt ==================================
prompt
@@v_rqm_kpi4_all_data.tab
prompt
prompt Creating table V_SERVICE_DEPTGRP
prompt ================================
prompt
@@v_service_deptgrp.tab
prompt
prompt Creating view V_KSL_2_11
prompt ========================
prompt
@@v_ksl_2_11.vw
prompt
prompt Creating view V_INCIDENT_KSL
prompt ============================
prompt
@@v_incident_ksl.vw
prompt
prompt Creating view V_KM4_7
prompt =====================
prompt
@@v_km4_7.vw
prompt
prompt Creating view V_KM_13
prompt =====================
prompt
@@v_km_13.vw
prompt
prompt Creating view V_KM_9
prompt ====================
prompt
@@v_km_9.vw
prompt
prompt Creating view V_KSL_11B
prompt =======================
prompt
@@v_ksl_11b.vw
prompt
prompt Creating view V_KSL_11_CLOSED
prompt =============================
prompt
@@v_ksl_11_closed.vw
prompt
prompt Creating view V_KSL_12
prompt ======================
prompt
@@v_ksl_12.vw
prompt
prompt Creating view V_KSL_12_KM_3_4
prompt =============================
prompt
@@v_ksl_12_km_3_4.vw
prompt
prompt Creating view V_KSL_12_KM_3_4B
prompt ==============================
prompt
@@v_ksl_12_km_3_4b.vw
prompt
prompt Creating view V_KSL_2_11B
prompt =========================
prompt
@@v_ksl_2_11b.vw
prompt
prompt Creating view V_KSL_2_11C
prompt =========================
prompt
@@v_ksl_2_11c.vw
prompt
prompt Creating view V_KSL_2_11D
prompt =========================
prompt
@@v_ksl_2_11d.vw
prompt
prompt Creating view V_TABLE_EXTDATA_110
prompt =================================
prompt
@@v_table_extdata_110.vw
prompt
prompt Creating view V_TABLE_EXTERNALDATA_11012_B
prompt ==========================================
prompt
@@v_table_externaldata_11012_b.vw
prompt
prompt Creating view V_TABLE_EXTERNALDATA_11012_b
prompt ==========================================
prompt
@@v_table_externaldata_11012_b.vw
prompt
prompt Creating materialized view MV_LOADSTATUS
prompt ========================================
prompt
@@mv_loadstatus.mvw
prompt
prompt Creating materialized view MV_ORGANIZATION
prompt ==========================================
prompt
@@mv_organization.mvw
prompt
prompt Creating materialized view MV_ORGANIZATION3
prompt ===========================================
prompt
@@mv_organization3.mvw
prompt
prompt Creating package P_KSL
prompt ======================
prompt
@@p_ksl.spc
prompt
prompt Creating function CUSTOM_HASH
prompt =============================
prompt
@@custom_hash.fnc
prompt
prompt Creating procedure DROP_TABLES
prompt ==============================
prompt
@@drop_tables.prc
prompt
prompt Creating procedure INSERT_UPDATE_KOMMENT
prompt ========================================
prompt
@@insert_update_komment.prc
prompt
prompt Creating package body P_KSL
prompt ===========================
prompt
@@p_ksl.bdy

spool off
