# RAC Troubleshooting Guide

## Scenario: One RAC Instance Is Down

1. Determine which instance/node is affected using `srvctl status database` and `crsctl status resource -t`.
2. Check Clusterware, database, listener, ASM, and node status.
3. Review Grid Infrastructure and database alert logs for the failure time.
4. Confirm surviving instances and services are available.
5. Determine whether client connections failed over/reconnected as designed.
6. Investigate the root cause before restarting resources.
7. Use SRVCTL for Oracle-managed resource operations rather than manually starting RAC resources where Clusterware should control them.
8. Validate services and application connectivity after remediation.

## Concepts to Explain in an Interview
- SCAN vs. VIP vs. local listener
- OCR and voting files
- Clusterware resource management
- Cache Fusion and Global Cache Services
- ASM's role in RAC
- Services and workload distribution
- FAN and application connection behavior
- Difference between an instance failure and database failure
