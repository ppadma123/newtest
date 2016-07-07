
--
DECLARE
   tbl_does_nt_exist_exc EXCEPTION;
   PRAGMA EXCEPTION_INIT (tbl_does_nt_exist_exc, -00942);
BEGIN
   EXECUTE IMMEDIATE ('DROP table dmschema.DM_dummy CASCADE CONSTRAINTS');
EXCEPTION
   WHEN tbl_does_nt_exist_exc THEN
      NULL;
END;
/
--
CREATE TABLE DM_DUMMY
(
 COL1           NUMBER(10)     NOT NULL,
 COL2           VARCHAR2(3)   NOT NULL,
 DIM_CREATED_TSTP                DATE,
 DIM_UPDATED_TSTP                DATE,
 DIM_LOAD_ID                     NUMBER(10),
DIM_LOAD_ID_1                    NUMBER(10)
 )             
TABLESPACE DATA2 
STORAGE    (
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
NOCACHE
NOPARALLEL
MONITORING
/
