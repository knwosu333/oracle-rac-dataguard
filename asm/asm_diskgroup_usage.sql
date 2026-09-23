-- ASM disk group capacity and state
SET LINESIZE 200
COLUMN name FORMAT A25

SELECT name, state, type,
       ROUND(total_mb/1024,2) AS total_gb,
       ROUND(free_mb/1024,2) AS free_gb,
       ROUND((total_mb-free_mb)/1024,2) AS used_gb,
       ROUND(CASE WHEN total_mb > 0
             THEN (total_mb-free_mb)*100/total_mb END,2) AS pct_used,
       offline_disks
FROM v$asm_diskgroup
ORDER BY name;
