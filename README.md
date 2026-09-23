# Oracle RAC & Data Guard

A hands-on Oracle DBA portfolio project demonstrating Oracle Real Application Clusters (RAC), Clusterware, ASM, and Data Guard monitoring and operational procedures.

## Areas Demonstrated
- RAC instance and cluster health checks
- Clusterware resource monitoring
- SRVCTL and CRSCTL operational commands
- ASM disk group monitoring
- Data Guard configuration monitoring
- Redo transport and apply lag
- Data Guard Broker
- Switchover and failover runbooks
- RAC/Data Guard troubleshooting

## Repository Structure
- `rac/` — RAC and Clusterware health checks
- `asm/` — ASM monitoring
- `dataguard/` — standby and redo transport monitoring
- `broker/` — Data Guard Broker examples
- `docs/` — operational and troubleshooting runbooks

## Safety
Commands that change database roles or cluster state are documented as examples and should never be executed blindly. Validate database names, services, protection mode, replication health, application dependencies, and rollback plans before production changes.
