#!/bin/bash
# Format the namenode if it hasn't been formatted already
if [ ! -d "/hadoop/dfs/name/current" ]; then
  echo "Formatting namenode..."
  hdfs namenode -format
  echo "Namenode formatted successfully..."
fi

# Start the namenode in the background
echo "Starting namenode..."
hdfs namenode