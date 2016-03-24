CREATE OR REPLACE PROCEDURE INSERT_UPDATE_KOMMENT(
    INCID      IN VARCHAR2 ,
    KOMENT    IN VARCHAR2 ,
    KOMENT_ID IN integer,
    COMENT_TYPE varchar2)
AS
  temp_komment_id NUMBER;
 -- temp_varchar varchar2(32000);
BEGIN
  IF KOMENT_ID = 0 THEN
    SELECT seq_komment_id.nextval INTO temp_komment_id FROM dual;
    INSERT
    INTO V_MEASURE_STEPS
      (
        INCIDENT_NUMBER,
        KOMMENT,
        KOMMENT_ID,
        COMMENT_TYPE
      )
      VALUES
      (
        INCID,
        KOMENT,
        temp_komment_id,
        COMENT_TYPE
      );
  ELSE
  
  
  --temp_varchar:=INCID||' - '||KOMENT||' - '||KOMENT_ID||' - ';
    
--  insert into test values (temp_varchar);
--  
--    commit;
  
    UPDATE V_MEASURE_STEPS
    SET V_MEASURE_STEPS.komment          =KOMENT
    WHERE V_MEASURE_STEPS.INCIDENT_NUMBER=INCID
    AND V_MEASURE_STEPS.KOMMENT_ID       = KOMENT_ID
    and V_MEASURE_STEPS.COMMENT_TYPE=COMENT_TYPE;
    
    --cast(regexp_replace(KOMENT_ID, '[^0-9]+', '') as number);
    
    
    --to_number(TRUNC(REGEXP_REPLACE(KOMENT_ID, '[[:alpha:]]','')));
    
    
    
  END IF;
  
  commit;
END INSERT_UPDATE_KOMMENT;
/

