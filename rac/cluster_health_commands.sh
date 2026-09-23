#!/bin/bash
# Read-only Oracle Clusterware/RAC health-check examples.
# Run with the appropriate Grid Infrastructure environment.

echo "=== Cluster resources ==="
crsctl status resource -t

echo "=== Cluster status ==="
crsctl check cluster -all

echo "=== Database configuration ==="
# Replace <db_unique_name> before use.
srvctl config database -d <db_unique_name>

echo "=== Database status ==="
srvctl status database -d <db_unique_name>

echo "=== ASM status ==="
srvctl status asm
