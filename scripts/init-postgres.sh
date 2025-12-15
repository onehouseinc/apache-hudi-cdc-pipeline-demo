#!/bin/bash
set -e

# Create the initial database and user
psql -v ON_ERROR_STOP=1 --username "cdc_user" --dbname "cdc_db" <<-EOSQL
    -- Create orders table
    CREATE TABLE public.orders (
        id SERIAL PRIMARY KEY,
        customer_id INT NOT NULL,
        product_name VARCHAR(100) NOT NULL,
        quantity INT NOT NULL,
        price DECIMAL(10,2) NOT NULL,
        status VARCHAR(50) DEFAULT 'pending',
        created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
    );

    -- Insert sample order data
    INSERT INTO public.orders (customer_id, product_name, quantity, price, status) VALUES
        (1, 'Laptop', 1, 1200.00, 'confirmed'),
        (2, 'Smartphone', 2, 800.00, 'shipped'),
        (3, 'Headphones', 3, 150.00, 'pending'),
        (4, 'Monitor', 1, 300.00, 'delivered'),
        (5, 'Keyboard', 2, 100.00, 'canceled');

    -- Create a user for Debezium
    CREATE USER debezium_user WITH REPLICATION LOGIN PASSWORD 'debezium_password';

    -- Grant necessary privileges
    GRANT CONNECT ON DATABASE cdc_db TO debezium_user;
    GRANT USAGE ON SCHEMA public TO debezium_user;
    GRANT SELECT ON ALL TABLES IN SCHEMA public TO debezium_user;
    ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO debezium_user;

    -- Create a publication for the orders table
    CREATE PUBLICATION debezium_pub FOR TABLE orders;
EOSQL