#!/bin/bash
set -e

echo "Creating metastore database schemas..."
mysql -u root -pmetastore-root-password <<-EOSQL
    CREATE DATABASE IF NOT EXISTS metastore;
    GRANT ALL PRIVILEGES ON metastore.* TO 'metastore-user'@'%';
    FLUSH PRIVILEGES;
EOSQL