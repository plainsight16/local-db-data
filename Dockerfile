# Dockerfile
FROM python:3.9-slim

WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    postgresql-client \
    file \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
COPY ingestion/realtime_ingestion/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY ingestion/realtime_ingestion/ .
COPY tpc-di-data/Batch1 ./csv_dir/

# Make the script executable
RUN chmod +x load_data.py

CMD ["python", "load_data.py"]