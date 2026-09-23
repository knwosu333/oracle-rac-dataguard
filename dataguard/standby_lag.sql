-- Data Guard transport/apply lag
-- Run on the standby database.
SET LINESIZE 200
COLUMN name FORMAT A30
COLUMN value FORMAT A30

SELECT name, value, unit, time_computed
FROM v$dataguard_stats
WHERE name IN ('transport lag','apply lag','apply finish time');
