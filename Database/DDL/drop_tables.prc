CREATE OR REPLACE PROCEDURE DROP_TABLES AS
begin
for t in (select table_name from user_tables where table_name like 'V\_%' ESCAPE '\') 
loop
  execute immediate 'drop table ' ||t.table_name|| ' cascade constraints';
end loop;
END DROP_TABLES;
/

