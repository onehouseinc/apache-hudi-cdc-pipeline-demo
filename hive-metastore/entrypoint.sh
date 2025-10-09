#!/bin/bash
set -e

# Copy custom configurations if provided
if [ -d "${HIVE_CUSTOM_CONF_DIR}" ]; then
 echo "Copying custom Hive configuration from ${HIVE_CUSTOM_CONF_DIR}"
 cp ${HIVE_CUSTOM_CONF_DIR}/* ${HIVE_HOME}/conf/
fi

# Init schema if needed
schematool -dbType mysql -initSchema

# Start Hive Metastore service in foreground
exec hive --service metastore
