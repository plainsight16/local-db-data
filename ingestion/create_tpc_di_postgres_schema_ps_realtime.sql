-- Drop the schema if it exists
DROP SCHEMA IF EXISTS staging CASCADE;

-- Create schema
CREATE SCHEMA staging;

-- Drop and create batchdate table
DROP TABLE IF EXISTS staging.batchdate;

CREATE TABLE staging.batchdate (
    batchdate DATE
);

-- Drop and create cashtransaction table
DROP TABLE IF EXISTS staging.cashtransaction;

CREATE TABLE staging.cashtransaction (
    ct_ca_id DECIMAL(11),
    ct_dts TIMESTAMP NOT NULL,
    ct_amt DECIMAL(10, 2) NOT NULL,
    ct_name VARCHAR(100) NOT NULL
);

-- Drop and create customermgmt table
DROP TABLE IF EXISTS staging.customermgmt;

CREATE TABLE staging.customermgmt (
    actiontype VARCHAR(9),
    actionts VARCHAR,
    c_id DECIMAL(11) NOT NULL,
    c_tax_id VARCHAR(20),
    c_gndr CHAR(1),
    c_tier DECIMAL(1),
    c_dob DATE,
    c_l_name VARCHAR(25),
    c_f_name VARCHAR(20),
    c_m_name CHAR(1),
    c_adline1 VARCHAR(80),
    c_adline2 VARCHAR(80),
    c_zipcode VARCHAR(12),
    c_city VARCHAR(25),
    c_state_prov VARCHAR(20),
    c_ctry VARCHAR(24),
    c_prim_email VARCHAR(50),
    c_alt_email VARCHAR(50),
    c_p_1_ctry_code VARCHAR(20),
    c_p_1_area_code VARCHAR(20),
    c_p_1_local VARCHAR(20),
    c_p_1_ext VARCHAR(20),
    c_p_2_ctry_code VARCHAR(20),
    c_p_2_area_code VARCHAR(20),
    c_p_2_local VARCHAR(20),
    c_p_2_ext VARCHAR(20),
    c_p_3_ctry_code VARCHAR(20),
    c_p_3_area_code VARCHAR(20),
    c_p_3_local VARCHAR(20),
    c_p_3_ext VARCHAR(20),
    c_lcl_tx_id VARCHAR(4),
    c_nat_tx_id VARCHAR(4),
    ca_id DECIMAL(11),
    ca_tax_st DECIMAL(1),
    ca_b_id DECIMAL(11),
    ca_name VARCHAR(50)
);

-- Drop and create dailymarket table
DROP TABLE IF EXISTS staging.dailymarket;

CREATE TABLE staging.dailymarket (
    dm_date DATE,
    dm_s_symb VARCHAR(15),
    dm_close DECIMAL(8, 2),
    dm_high DECIMAL(8, 2),
    dm_low DECIMAL(8, 2),
    dm_vol DECIMAL(12)
);

-- Drop and create date table
DROP TABLE IF EXISTS staging.date;

CREATE TABLE staging.date (
    sk_dateid DECIMAL(11),
    datevalue VARCHAR(20),
    datedesc VARCHAR(20),
    calendaryearid DECIMAL(4),
    calendaryeardesc VARCHAR(20),
    calendarqtrid DECIMAL(5),
    calendarqtrdesc VARCHAR(20),
    calendarmonthid DECIMAL(6),
    calendarmonthdesc VARCHAR(20),
    calendarweekid DECIMAL(6),
    calendarweekdesc VARCHAR(20),
    dayofweeknum DECIMAL(1),
    dayofweekdesc VARCHAR(10),
    fiscalyearid DECIMAL(4),
    fiscalyeardesc VARCHAR(20),
    fiscalqtrid DECIMAL(5),
    fiscalqtrdesc VARCHAR(20),
    holidayflag BOOLEAN
);

-- Drop and create finwire table
DROP TABLE IF EXISTS staging.finwire;

CREATE TABLE staging.finwire (
    text TEXT
);

-- Drop and create holdinghistory table
DROP TABLE IF EXISTS staging.holdinghistory;

CREATE TABLE staging.holdinghistory (
    hh_h_t_id DECIMAL(15),
    hh_t_id DECIMAL(15),
    hh_before_qty DECIMAL(6),
    hh_after_qty DECIMAL(6)
);

-- Drop and create hr table
DROP TABLE IF EXISTS staging.hr;

CREATE TABLE staging.hr (
    employeeid DECIMAL(11),
    managerid DECIMAL(11),
    employeefirstname VARCHAR(30),
    employeelastname VARCHAR(30),
    employeemi CHAR(1),
    employeejobcode DECIMAL(3),
    employeebranch VARCHAR(30),
    employeeoffice VARCHAR(10),
    employeephone VARCHAR(14)
);

-- Drop and create industry table
DROP TABLE IF EXISTS staging.industry;

CREATE TABLE staging.industry (
    in_id VARCHAR(2) NOT NULL,
    in_name VARCHAR(50) NOT NULL,
    in_sc_id VARCHAR(4) NOT NULL
);

-- Drop and create prospect table
DROP TABLE IF EXISTS staging.prospect;

CREATE TABLE staging.prospect (
    agencyid VARCHAR(30) NOT NULL,
    lastname VARCHAR(30) NOT NULL,
    firstname VARCHAR(30) NOT NULL,
    middleinitial CHAR(1),
    gender CHAR(1),
    addressline1 VARCHAR(80),
    addressline2 VARCHAR(80),
    postalcode VARCHAR(12),
    city VARCHAR(25) NOT NULL,
    state VARCHAR(20) NOT NULL,
    country VARCHAR(24),
    phone VARCHAR(30),
    income DECIMAL(9),
    numbercars DECIMAL(2),
    numberchildren DECIMAL(2),
    maritalstatus CHAR(1),
    age DECIMAL(3),
    creditrating DECIMAL(4),
    ownorrentflag CHAR(1),
    employer VARCHAR(30),
    numbercreditcards DECIMAL(2),
    networth DECIMAL(12)
);

-- Drop and create statustype table
DROP TABLE IF EXISTS staging.statustype;

CREATE TABLE staging.statustype (
    st_id VARCHAR(4) NOT NULL,
    st_name VARCHAR(10) NOT NULL
);

-- Drop and create taxrate table
DROP TABLE IF EXISTS staging.taxrate;

CREATE TABLE staging.taxrate (
    tx_id VARCHAR(4) NOT NULL,
    tx_name VARCHAR(50) NOT NULL,
    tx_rate DECIMAL(6, 5) NOT NULL
);

-- Drop and create time table
DROP TABLE IF EXISTS staging.time;

CREATE TABLE staging.time (
    sk_timeid DECIMAL(11) NOT NULL,
    timevalue VARCHAR(20) NOT NULL,
    hourid DECIMAL(2) NOT NULL,
    hourdesc VARCHAR(20) NOT NULL,
    minuteid DECIMAL(2) NOT NULL,
    minutedesc VARCHAR(20) NOT NULL,
    secondid DECIMAL(2) NOT NULL,
    seconddesc VARCHAR(20) NOT NULL,
    markethoursflag BOOLEAN,
    officehoursflag BOOLEAN
);

-- Drop and create tradehistory table
DROP TABLE IF EXISTS staging.tradehistory;

CREATE TABLE staging.tradehistory (
    th_t_id DECIMAL(15) NOT NULL,
    th_dts TIMESTAMP NOT NULL,
    th_st_id VARCHAR(4) NOT NULL
);

-- Drop and create trade table
DROP TABLE IF EXISTS staging.trade;

CREATE TABLE staging.trade (
    t_id DECIMAL(15) NOT NULL,
    t_dts TIMESTAMP NOT NULL,
    t_st_id VARCHAR(4) NOT NULL,
    t_tt_id VARCHAR(3) NOT NULL,
    t_is_cash INT CHECK (t_is_cash IN (0, 1)),
    t_s_symb VARCHAR(15),
    t_qty DECIMAL(6),
    t_bid_price DECIMAL(8, 2),
    t_ca_id DECIMAL(11),
    t_exec_name VARCHAR(49),
    t_trade_price DECIMAL(8, 2),
    t_chrg DECIMAL(10, 2),
    t_comm DECIMAL(10, 2),
    t_tax DECIMAL(10, 2)
);

-- Drop and create tradetype table
DROP TABLE IF EXISTS staging.tradetype;

CREATE TABLE staging.tradetype (
    tt_id VARCHAR(3) NOT NULL,
    tt_name VARCHAR(12) NOT NULL,
    tt_is_sell DECIMAL(1) NOT NULL,
    tt_is_mrkt DECIMAL(1)
);

-- Drop and create watchhistory table
DROP TABLE IF EXISTS staging.watchhistory;

CREATE TABLE staging.watchhistory (
    w_c_id DECIMAL(11) NOT NULL,
    w_s_symb VARCHAR(15) NOT NULL,
    w_dts TIMESTAMP NOT NULL,
    w_action VARCHAR(4)
);

-- Drop and create audit table
DROP TABLE IF EXISTS staging.audit;

CREATE TABLE staging.audit (
    dataset VARCHAR(20) NOT NULL,
    batchid DECIMAL(5),
    audit_date DATE,
    attribute VARCHAR(50) NOT NULL,
    value DECIMAL(15),
    dvalue DECIMAL(15, 5)
);