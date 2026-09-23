-- RAC instance status
SET LINESIZE 200
COLUMN host_name FORMAT A30
COLUMN instance_name FORMAT A20

SELECT inst_id, instance_name, host_name, status,
       database_status, startup_time, thread#
FROM gv$instance
ORDER BY inst_id;

-- RAC services and active instances
SELECT inst_id, name, network_name
FROM gv$active_services
ORDER BY name, inst_id;
