-- Data Guard role and protection status
SET LINESIZE 220
COLUMN name FORMAT A20
COLUMN database_role FORMAT A20
COLUMN protection_mode FORMAT A25

SELECT name, open_mode, database_role,
       protection_mode, protection_level,
       switchover_status
FROM v$database;

-- Data Guard processes (particularly useful on a physical standby)
SELECT process, status, thread#, sequence#
FROM v$managed_standby
ORDER BY process, thread#;
