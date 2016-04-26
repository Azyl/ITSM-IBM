/* Formatted on 04/04/16 15:54:38 (QP5 v5.287) */
DECLARE
   -- open
   cur          PLS_INTEGER := DBMS_SQL.OPEN_CURSOR;
   cols         DBMS_SQL.DESC_TAB;
   ncols        PLS_INTEGER;
   sql_text     VARCHAR2 (32000);
   col_names    VARCHAR2 (32000);
   
   
   V_VARCHAR2   VARCHAR2 (4000);
   V_NUMBER     NUMBER;
   V_DATE       DATE;

   del      VARCHAR2(1 CHAR) := '|';
   rows         NUMBER;
BEGIN
   sql_text := 'SELECT *
  FROM V_INCIDENT_ALL_DATA
  LEFT JOIN V_QUAL_CONFIG_ITSM_SERVICE V_QUAL_CONFIG_ITSM_SERVICE
    ON V_INCIDENT_ALL_DATA."SERVICE" = V_QUAL_CONFIG_ITSM_SERVICE."ITSM_SERVICE"
  LEFT JOIN V_BDP_CTM_SUPPORTGROUP V_BDP_CTM_SUPPORTGROUP
    ON V_BDP_CTM_SUPPORTGROUP."SUPPORT_GROUP" = V_INCIDENT_ALL_DATA."ASSIGNED_GROUP_NAME"
 WHERE V_QUAL_CONFIG_ITSM_SERVICE.MIS_3_NS = ''CAEE II''
   AND (V_INCIDENT_ALL_DATA.RESOLVED_GROUP_SUPP_ORG IN (''ao-caee:ibm'', ''ab:ibm'',''mt-caee:ibm'') OR
       (V_INCIDENT_ALL_DATA.RESOLVED_GROUP_SUPP_ORG IS NULL AND
       V_BDP_CTM_SUPPORTGROUP.SUPPORT_ORGANIZATION IN (''ao-caee:ibm'', ''ab:ibm'', ''mt-caee:ibm'')))
fetch first row only';


--FETCH FIRST 5 ROWS ONLY--
   -- parse the cursor
   DBMS_SQL.PARSE (cur, sql_text, DBMS_SQL.NATIVE);
   --DBMS_SQL.DEFINE_COLUMN (cur, 1, SYSDATE);
   -- DBMS_SQL.DEFINE_COLUMN (cur, 2, 1);
   DBMS_SQL.DESCRIBE_COLUMNS (cur, ncols, cols);

   FOR i IN 1 .. ncols
   LOOP
      -- Define the columns 
      CASE cols (i).COL_TYPE
         WHEN 2
         THEN
            DBMS_SQL.DEFINE_COLUMN (cur, i, V_NUMBER);
         WHEN 12
         THEN
            DBMS_SQL.DEFINE_COLUMN (cur, i, V_DATE);
         WHEN 1
         THEN
            DBMS_SQL.DEFINE_COLUMN (cur,
                                    i,
                                    V_VARCHAR2,
                                    4000);
         WHEN 96
         THEN
            DBMS_SQL.DEFINE_COLUMN (cur,
                                    i,
                                    V_VARCHAR2,
                                    4000);
         ELSE
            RAISE_APPLICATION_ERROR (
               -20000,
                  'Invalid Data Type for conversion to delimited file. {'
               || cols (i).COL_NAME
               || '}');
      END CASE;
      --



      col_names := col_names || cols (i).col_name;

      --DBMS_OUTPUT.PUT_line(cols(colind).col_name);
      IF i <> ncols
      THEN
         col_names := col_names || del;
      END IF;
   END LOOP;

   DBMS_OUTPUT.PUT_line (col_names);

   -- execute
   rows := DBMS_SQL.EXECUTE (cur);



   -- fetch
   WHILE DBMS_SQL.FETCH_ROWS (cur) > 0
   LOOP
      col_names := '';

      FOR i IN 1 .. ncols
      LOOP
         CASE cols (i).COL_TYPE
            WHEN 2
            THEN
               DBMS_SQL.COLUMN_VALUE (cur, i, V_NUMBER);
               V_VARCHAR2 := TO_CHAR (V_NUMBER);        -- dann ist's ein Zahl
            WHEN 12
            THEN
               DBMS_SQL.COLUMN_VALUE (cur, i, V_DATE);
               V_VARCHAR2 := TO_CHAR (V_DATE, 'DD.MM.YYYY');      -- ein Datum
            ELSE
               DBMS_SQL.COLUMN_VALUE (cur, i, V_VARCHAR2);
               V_VARCHAR2 := NVL (V_VARCHAR2, ''); -- ansonsten ein Varchar oder Char
         END CASE;


         --DBMS_SQL.COLUMN_VALUE (cur, i, val);
         col_names := col_names || V_VARCHAR2;

         IF i <> ncols
         THEN
            col_names := col_names || del;
         END IF;
      END LOOP;

      DBMS_OUTPUT.PUT_line (col_names);
   END LOOP;

   --close
   DBMS_SQL.CLOSE_CURSOR (cur);
EXCEPTION
   WHEN OTHERS
   THEN
      --close
      DBMS_SQL.CLOSE_CURSOR (cur);
      DBMS_OUTPUT.put_line (SQLCODE || del || SQLERRM);
END;
/