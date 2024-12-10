DROP schema IF EXISTS temp_db CASCADE;

/* create schema temp_db; */
CREATE SCHEMA temp_db;


DROP TABLE IF EXISTS temp_db.batchdate;

CREATE TABLE temp_db.batchdate (
    batchdate DATE -- Adjust column definitions as needed
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
STORED AS TEXTFILE;

DROP TABLE IF EXISTS temp_db.cashtransaction;

CREATE TABLE temp_db.cashtransaction (
    ct_ca_id DECIMAL(11), -- Adjust column definitions as needed
    ct_dts TIMESTAMP NOT NULL -- Add more columns as per your data structure
    ct_amt DECIMAL(10, 2) NOT NULL,
    ct_name CHAR(100) NOT NULL
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE;

DROP TABLE IF EXISTS temp_db.customermgmt;

CREATE TABLE temp_db.customermgmt(
	--action element
	actiontype CHAR(9),
	actionts VARCHAR,
	--action.customer element
	c_id DECIMAL(11) NOT NULL,
	c_tax_id CHAR(20),
	c_gndr CHAR(1),
	c_tier DECIMAL(1),
	c_dob date,
	--action.customer.name element
	c_l_name CHAR(25),
	c_f_name CHAR(20),
	c_m_name CHAR(1),
	--action.customer.address element
	c_adline1 CHAR(80),
	c_adline2 CHAR(80),
	c_zipcode CHAR(12),
	c_city CHAR(25),
	c_state_prov CHAR(20),
	c_ctry CHAR(24),
	--action.customer.contactinfo element
	c_prim_email CHAR(50),
	c_alt_email CHAR(50),
	--action.customer.contactinfo.phone element
	--phone1
	c_p_1_ctry_code CHAR(20),
	c_p_1_area_code CHAR(20),
	c_p_1_local CHAR(20),
	c_p_1_ext CHAR(20),
	--phone2
	c_p_2_ctry_code CHAR(20),
	c_p_2_area_code CHAR(20),
	c_p_2_local CHAR(20),
	c_p_2_ext CHAR(20),
	--phone3
	c_p_3_ctry_code CHAR(20),
	c_p_3_area_code CHAR(20),
	c_p_3_local CHAR(20),
	c_p_3_ext CHAR(20),
	--action.customer.taxinfo element
	c_lcl_tx_id CHAR(4),
	c_nat_tx_id CHAR(4),
	--action.customer.account attribute
	ca_id DECIMAL(11),
	ca_tax_st DECIMAL(1),
	--action.customer.account element
	ca_b_id DECIMAL(11),
	ca_name CHAR(50)	
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;



DROP TABLE IF EXISTS temp_db.dailymarket;

CREATE TABLE temp_db.dailymarket (
    dm_date DATE,
    dm_s_symb CHAR(15),
    dm_close DECIMAL(8, 2),
    dm_high DECIMAL(8, 2),
    dm_low DECIMAL(8, 2),
    dm_vol DECIMAL(12) -- Add more columns as per your data structure
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS temp_db.date;

CREATE TABLE temp_db.date (
    sk_dateid DECIMAL(11),
    datevalue CHAR(20),
    datedesc CHAR(20),
    calendaryearid DECIMAL(4),
    calendaryeardesc CHAR(20),
    calendarqtrid DECIMAL(5),
    calendarqtrdesc CHAR(20),
    calendarmonthid DECIMAL(6),
    calendarmonthdesc CHAR(20),
    calendarweekid DECIMAL(6),
    calendarweekdesc CHAR(20),
    dayofweeknum DECIMAL(1),
    dayofweekdesc CHAR(10),
    fiscalyearid DECIMAL(4),
    fiscalyeardesc CHAR(20),
    fiscalqtrid DECIMAL(5),
    fiscalqtrdesc CHAR(20),
    holidayflag BOOLEAN-- Add more columns as per your data structure
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE;

DROP TABLE IF EXISTS temp_db.finwire;
create TABLE temp_db.finwire(
	text STRING
);

DROP TABLE IF EXISTS temp_db.holdinghistory;

CREATE TABLE temp_db.holdinghistory (
    hh_h_t_id DECIMAL(15),
    hh_t_id DECIMAL(15),
    hh_before_qty DECIMAL(6),
    hh_after_qty DECIMAL(6)
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE;

DROP TABLE IF EXISTS temp_db.hr;

CREATE TABLE temp_db.hr (
    employeeid DECIMAL(11),
    managerid DECIMAL(11),
    employeefirstname CHAR(30),
    employeelastname CHAR(30),
    employeemi CHAR(1),
    employeejobcode DECIMAL(3),
    employeebranch CHAR(30),
    employeeoffice CHAR(10),
    employeephone CHAR(14)
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;


DROP TABLE IF EXISTS temp_db.industry;

CREATE TABLE temp_db.industry (
    in_id CHAR(2) NOT NULL,
    in_name CHAR(50) NOT NULL,
    in_sc_id CHAR(4) NOT NULL
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS temp_db.prospect;

CREATE TABLE temp_db.prospect (
    agencyid CHAR(30) NOT NULL,
    lastname CHAR(30) NOT NULL,
    firstname CHAR(30) NOT NULL,
    middleinitial CHAR(1),
    gender CHAR(1),
    addressline1 CHAR(80),
    addressline2 CHAR(80),
    postalcode CHAR(12),
    city CHAR(25) NOT NULL,
    state CHAR(20) NOT NULL,
    country CHAR(24),
    phone CHAR(30),
    income DECIMAL(9),
    numbercars DECIMAL(2),
    numberchildren DECIMAL(2),
    maritalstatus CHAR(1),
    age DECIMAL(3),
    creditrating DECIMAL(4),
    ownorrentflag CHAR(1),
    employer CHAR(30),
    numbercreditcards DECIMAL(2),
    networth DECIMAL(12)
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

DROP TABLE IF EXISTS temp_db.statustype;

CREATE TABLE temp_db.statustype (
    st_id CHAR(4) NOT NULL,
    st_name CHAR(10) NOT NULL -- Add more columns as per your data structure
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS temp_db.taxrate;

CREATE TABLE temp_db.taxrate (
    tx_id CHAR(4) NOT NULL,
    tx_name CHAR(50) NOT NULL,
    tx_rate DECIMAL(6, 5) NOT NULL -- Add more columns as per your data structure
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS temp_db.time;

CREATE TABLE temp_db.time (
    sk_timeid DECIMAL(11) NOT NULL,
    timevalue CHAR(20) NOT NULL,
    hourid DECIMAL(2) NOT NULL,
    hourdesc CHAR(20) NOT NULL,
    minuteid DECIMAL(2) NOT NULL,
    minutedesc CHAR(20) NOT NULL,
    secondid DECIMAL(2) NOT NULL,
    seconddesc CHAR(20) NOT NULL,
    markethoursflag BOOLEAN,
    officehoursflag BOOLEAN
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS temp_db.tradetype;

CREATE TABLE temp_db.tradehistory (
  th_t_id DECIMAL(15) NOT NULL,
  th_dts TIMESTAMP NOT NULL,
  th_st_id CHAR(4) NOT NULL
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS temp_db.trade;

CREATE TABLE temp_db.trade (
    t_id DECIMAL(15) NOT NUL, -- Adjust column definitions as needed
    t_dts TIMESTAMP NOT NULL, -- Add more columns as per your data structure
    t_st_id CHAR(4) NOT NULL,
    t_is_cash INT,
    t_s_symb CHAR(15),
    t_qty DECIMAL(6),
    t_bid_price DECIMAL(8, 2),
    t_ca_id DECIMAL(11),
    t_exec_name CHAR(49),
    t_trade_price DECIMAL(8, 2),
    t_chrg DECIMAL(10, 2),
    t_comm DECIMAL(10, 2),
    t_tax DECIMAL(10, 2)
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
TBLPROPERTIES ("serialization.null.format"="");



DROP TABLE IF EXISTS temp_db.tradetype;

CREATE TABLE temp_db.tradetype (
    tt_id CHAR(3) NOT NULL,
    tt_name CHAR(12) NOT NULL,
    tt_is_sell DECIMAL(1) NOT NULL,
    tt_is_mrkt DECIMAL(1)
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS temp_db.watchhistory;

CREATE TABLE temp_db.watchhistory (
    w_c_id DECIMAL(11) NOT NULL,
    w_s_symb CHAR(15) NOT NULL,
    w_dts TIMESTAMP NOT NULL,
    w_action CHAR(4)
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE;

DROP TABLE IF EXISTS temp_db.audit;

CREATE TABLE temp_db.audit (
    dataset CHAR(20) NOT NULL,
    batchid DECIMAL(5)
    date DATE,
    attribute CHAR(50) NOT NULL,
    value DECIMAL(15),
    dvalue DECIMAL(15, 5)
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
TBLPROPERTIES ("skip.header.line.count"="1", "serialization.null.format"="");