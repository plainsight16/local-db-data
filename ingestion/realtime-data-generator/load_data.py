import os
import subprocess
import time
import csv
import json
import psycopg2
from psycopg2 import sql
import xml.etree.ElementTree as ET

# Set up database credentials from environment
db_params = {
    'dbname': os.environ.get("db_name"),
    'user': os.environ.get("db_user"),
    'password': os.environ.get("db_password"),
    'host': os.environ.get("db_host", "database"),
}

def connect_to_db():
    try:
        conn = psycopg2.connect(**db_params)
        conn.autocommit = True
        cursor = conn.cursor()
        cursor.execute("SET search_path TO staging")
        return conn, cursor
    except Exception as e:
        print(f"Error connecting to the database: {e}")
        return None, None

def determine_file_encoding(file_path):
    try:
        output = subprocess.run(["file", "--mime", file_path], 
                                stdout=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True)
        if output.returncode == 0 and "charset=" in output.stdout:
            return output.stdout.split("charset=")[-1].strip()
        print(f"Charset not found, defaulting to 'utf-8-sig'")
    except subprocess.SubprocessError as e:
        print(f"Error determining file encoding: {e}")
    return 'utf-8-sig' # Default  encoding fallback

def insert_data(table_name, columns, rows):
    conn, cursor = connect_to_db()
    if not cursor:
        return
    try:
        insert_query = f"INSERT INTO \"{table_name}\" ({', '.join(columns)}) VALUES ({', '.join(['%s'] * len(columns))})"
        cursor.executemany(insert_query, rows)
        print(f"Data successfully inserted into {table_name}")
    except Exception as e:
        print(f"Error inserting data into {table_name}: {e}")
    finally:
        cursor.close()
        conn.close()

def process_csv_file(csv_file, table_name, columns):
    encoding = determine_file_encoding(csv_file)

    rows = []
    try:
        with open(csv_file, encoding=encoding) as file:
            delimeter = '|' if csv_file.endswith(".txt") else ','
            reader = csv.reader(file, delimiter=delimeter)
            rows = [[None if field.strip() == '' else field for field in row] for row in reader]
        insert_data(table_name, columns, rows)
    except Exception as e:
        print(f"Error reading CSV file {csv_file}: {e}")

def process_finwire(finwire_file, table_name, columns):
    encoding = determine_file_encoding(finwire_file)

    rows = []
    try:
        with open(finwire_file, encoding=encoding) as file:
            for line in file:
                rows.append(line.strip())
        insert_data(table_name, columns, rows)
    except Exception as e:
        print(f"Error reading Finwire file {finwire_file}: {e}")

def process_xml_file(xml_file, table_name, columns):
    rows = []
    try:
        tree = ET.parse(xml_file)
        root = tree.getroot()
        namespace = {"TPCDI": "http://www.tpc.org/tpc-di"}

        for action in root.findall("TPCDI:Action", namespace):
            action_data = {
                'actiontype': action.get('ActionType'),
                'actionts': action.get('ActionTS'),
            }

            customer = action.find("Customer", namespace)
            if customer is not None:
                customer_data = {
                    'c_id': customer.get('C_ID', None),
                    'c_tax_id': customer.get('C_TAX_ID', None),
                    'c_gndr': customer.get('C_GNDR', None),
                    'c_tier': customer.get('C_TIER', None),
                    'c_dob': customer.get('C_DOB', None),
                    'c_l_name': customer.findtext('Name/C_L_NAME', default=None, namespaces=namespace),
                    'c_f_name': customer.findtext('Name/C_F_NAME', default=None, namespaces=namespace),
                    'c_m_name': customer.findtext('Name/C_M_NAME', default=None, namespaces=namespace),
                    'c_adline1': customer.findtext('Address/C_ADLINE1', default=None, namespaces=namespace),
                    'c_adline2': customer.findtext('Address/C_ADLINE2', default=None, namespaces=namespace),
                    'c_zipcode': customer.findtext('Address/C_ZIPCODE', default=None, namespaces=namespace),
                    'c_city': customer.findtext('Address/C_CITY', default=None, namespaces=namespace),
                    'c_state_prov': customer.findtext('Address/C_STATE_PROV', default=None, namespaces=namespace),
                    'c_ctry': customer.findtext('Address/C_CTRY', default=None, namespaces=namespace),
                    'c_prim_email': customer.findtext('ContactInfo/C_PRIM_EMAIL', default=None, namespaces=namespace),
                    'c_alt_email': customer.findtext('ContactInfo/C_ALT_EMAIL', default=None, namespaces=namespace),
                    'c_phone1_local': customer.findtext('ContactInfo/C_PHONE_1/C_LOCAL', default=None, namespaces=namespace),
                    'c_phone2_local': customer.findtext('ContactInfo/C_PHONE_2/C_LOCAL', default=None, namespaces=namespace),
                    'c_phone3_local': customer.findtext('ContactInfo/C_PHONE_3/C_LOCAL', default=None, namespaces=namespace),
                    'c_lcl_tx_id': customer.findtext('TaxInfo/C_LCL_TX_ID', default=None, namespaces=namespace),
                    'c_nat_tx_id': customer.findtext('TaxInfo/C_NAT_TX_ID', default=None, namespaces=namespace),
                }
                account = customer.find('Account', namespace)
                if account is not None:
                    customer_data.update({
                        'ca_id': account.get('CA_ID', None),
                        'ca_tax_st': account.get('CA_TAX_ST', None),
                        'ca_b_id': account.findtext('CA_B_ID', default=None, namespaces=namespace),
                        'ca_name': account.findtext('CA_NAME', default=None, namespaces=namespace),
                    })
                else:
                    customer_data.update({
                        'ca_id': None,
                        'ca_tax_st': None,
                        'ca_b_id': None,
                        'ca_name': None, 
                    })
            row = [action_data.get(col) or customer_data.get(col) for col in columns]
            rows.append([None if field is None or field.strip() == "" else field for field in row])
        insert_data(table_name, columns, rows)
    except ET.ParseError as e:
        print(f"Error parsing XML file {xml_file}: {e}")

def process_file(file_path, table_info):
    table_name = table_info["table"]
    columns = table_info["columns"].split(",")
    if file_path.endswith(".xml"):
        process_xml_file(file_path, table_name, columns)
    elif "finwire" in file_path:
        process_finwire(file_path, table_name, columns)
    else:
        process_csv_file(file_path, table_name, columns)

if __name__ == "__main__":
    print("Waiting for PostgreSQL to be ready...")
    time.sleep(5)  # Ensure the DB is up before processing files

    with open("mapping.json", "r") as f:
        file_to_table = json.load(f)

    csv_dir = './csv_dir'
    for filename in os.listdir(csv_dir):
        if "_audit" not in filename:
            normalized_filename = filename.lower().replace("-", "_").replace(" ", "_").strip()
            if normalized_filename in file_to_table:
                file_path = os.path.join(csv_dir, filename)
                table_info = file_to_table[normalized_filename]
                process_file(file_path, table_info)
            elif "finwire" in normalized_filename:
                file_path = os.path.join(csv_dir, filename)
                table_info = file_to_table["finwire"]
                process_file(file_path, table_info)