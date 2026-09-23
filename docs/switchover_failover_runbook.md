# Data Guard Switchover and Failover Runbook

## Switchover
A switchover is a planned role reversal between the primary and standby databases without intentionally losing data.

### Prechecks
1. Confirm primary and standby database roles.
2. Verify Data Guard/Broker configuration health.
3. Confirm redo transport and redo apply are functioning.
4. Check transport and apply lag.
5. Validate the standby and resolve warnings.
6. Confirm application/service transition procedures.
7. Confirm monitoring, backups, and rollback/fallback plans.

### Broker workflow example
```
DGMGRL> SHOW CONFIGURATION;
DGMGRL> VALIDATE DATABASE '<standby_db_unique_name>';
DGMGRL> SWITCHOVER TO '<standby_db_unique_name>';
DGMGRL> SHOW CONFIGURATION;
```

Replace placeholders with verified DB_UNIQUE_NAME values. Perform post-transition database, listener, service, application, and Data Guard checks.

## Failover
A failover is generally used when the primary cannot continue service and recovery through normal means is not practical within the required RTO.

Before failover, determine the primary's state, standby synchronization, potential data-loss exposure, and organizational approval requirements.

Broker example:
```
DGMGRL> SHOW CONFIGURATION;
DGMGRL> VALIDATE DATABASE '<standby_db_unique_name>';
DGMGRL> FAILOVER TO '<standby_db_unique_name>';
```

A failover has significant consequences. The former primary normally requires reinstate/rebuild handling before it can safely participate again.

## Interview Topics
Be prepared to explain switchover vs. failover, protection modes, synchronous vs. asynchronous transport, transport vs. apply lag, standby redo logs, Data Guard Broker, Fast-Start Failover, and how applications reconnect after a role transition.
