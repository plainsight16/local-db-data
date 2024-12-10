#!/bin/bash

while getopts s: flag
do
    case "${flag}" in
        s) scale_factor=${OPTARG};;
    esac
done

# Step 1: Generate TPC-DI Data
sh ./generate_data.sh $scale_factor

# start shared network
docker network create shared-network

# Step 2: Start PostgreSQL container for TPC-DI schema
docker compose up --wait


# Step 3: Create the TPC-DI schema in PostgreSQL
cd ./ingestion
POSTGRES_CONTAINER="postgres-db"


# Wait until PostgreSQL is accepting connections
until docker exec -i $POSTGRES_CONTAINER pg_isready -U postgres; do
  echo "Waiting for PostgreSQL to be ready..."
  sleep 10
done

# printf "${NC}Creating the TPC-DI schema in PostgreSQL...${NC}"
docker exec -i $POSTGRES_CONTAINER psql -U postgres < ./create_tpc_di_postgres_schema_ps.sql 


docker exec -i $POSTGRES_CONTAINER cp /home/workspace/data/sf_current/Batch1/CustomerMgmt.xml /var/lib/postgresql/data/CustomerMgmt.xml


until docker exec -i $POSTGRES_CONTAINER pg_isready -U postgres; do
  echo "Waiting for PostgreSQL to be ready..."
  sleep 10
done

# Step 4: Load the data into PostgreSQL tables
docker exec -i $POSTGRES_CONTAINER psql -U postgres < ./loading_data_commands_ps.sql 


until docker exec -i $POSTGRES_CONTAINER pg_isready -U postgres; do
  echo "Waiting for PostgreSQL to be ready..."
  sleep 10
done

docker exec -i postgres-db psql -U postgres -c "SELECT table_name FROM information_schema.tables WHERE table_schema NOT IN ('pg_catalog', 'information_schema');"