### **Running the Project**

#### **Prerequisites**
Ensure you have the following installed on your system:
- **Docker**: [Install Docker](https://docs.docker.com/get-docker/)
- **Docker Compose**: [Install Docker Compose](https://docs.docker.com/compose/install/)
  
#### **1. Generate TPC Data**
In the `local-db-with-data/` directory, open a terminal and run:
```bash
chmod +x generate_data.sh
./generate_data.sh
```

This script will:
- Generate the TPC-DI data files.
- Save the generated data into a directory named `tpc-di-data/`.

**Note:** Ensure the `generate_data.sh` script has the necessary permissions and dependencies to execute properly.

#### **2. Copy the `.env` Template**
In the `local-db-with-data/` directory, open a terminal and run:
```bash
cp .env.example .env
```

Edit the `.env` file to set up your environment variables (database name, user, password, etc.). Example:
```plaintext
db_name=temp_db
db_user=postgres
db_password=your_password
```

#### **3. Build and Start the Docker Containers**
In the project directory, open a terminal and run:
```bash
docker compose up --build
```

This command will:
- Build the Docker image for the Python service.
- Set up the PostgreSQL database container.
- Automatically run the `load_data.py` script to process and insert data into the database.

#### **4. Verify Data Insertion**
To confirm that data has been successfully inserted into the database:

1. **Access the PostgreSQL Container Terminal:**
   ```bash
   docker exec -it <postgres_container_name> bash
   ```

2. **Connect to the PostgreSQL Database:**
   ```bash
   psql -U <db_user> -d <db_name>
   ```

3. **Set the Schema Context:**
   ```sql
   SET search_path TO staging;
   ```

4. **List All Tables:**
   ```sql
   \d
   ```

5. **Check Data in a Table:**
   For example, to view data in the `customermgmt` table:
   ```sql
   SELECT * FROM customermgmt;
   ```

---

### **Example SQL Workflow**

```sql
-- Connect to the database and set the schema:
SET search_path TO staging;

-- List all tables in the 'staging' schema:
\d

-- View data from a specific table:
SELECT * FROM customermgmt;
```

---

### **Additional Notes**
- **Environment Variables:** Ensure all necessary environment variables are correctly set in your `.env` file.
- **Docker Dependency Management:** Verify that all dependencies and services in the `docker-compose.yml` file are correctly configured.
- **Debugging:** If any container fails to start, check logs using:
  ```bash
  docker compose logs <container_name>
  ```