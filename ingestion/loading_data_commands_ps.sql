COPY temp_db.batchdate FROM '/home/workspace/data/sf_current/Batch1/BatchDate.txt' WITH (FORMAT text);
COPY temp_db.cashtransaction FROM '/home/workspace/data/sf_current/Batch1/CashTransaction.txt' DELIMITER '|' CSV;
COPY temp_db.dailymarket FROM '/home/workspace/data/sf_current/Batch1/DailyMarket.txt' DELIMITER '|' CSV;
COPY temp_db.date FROM '/home/workspace/data/sf_current/Batch1/Date.txt' DELIMITER '|' CSV;
COPY temp_db.holdinghistory FROM '/home/workspace/data/sf_current/Batch1/HoldingHistory.txt' DELIMITER '|' CSV;
COPY temp_db.hr FROM '/home/workspace/data/sf_current/Batch1/HR.csv' DELIMITER ',' CSV HEADER;
COPY temp_db.industry FROM '/home/workspace/data/sf_current/Batch1/Industry.txt' DELIMITER '|' CSV;
COPY temp_db.prospect FROM '/home/workspace/data/sf_current/Batch1/Prospect.csv' DELIMITER ',' CSV HEADER;
COPY temp_db.statustype FROM '/home/workspace/data/sf_current/Batch1/StatusType.txt' DELIMITER '|' CSV;
COPY temp_db.taxrate FROM '/home/workspace/data/sf_current/Batch1/TaxRate.txt' DELIMITER '|' CSV;
COPY temp_db.time FROM '/home/workspace/data/sf_current/Batch1/Time.txt' DELIMITER '|' CSV;
COPY temp_db.tradehistory FROM '/home/workspace/data/sf_current/Batch1/TradeHistory.txt' DELIMITER '|' CSV;
COPY temp_db.trade FROM '/home/workspace/data/sf_current/Batch1/Trade.txt' DELIMITER '|' CSV NULL AS '';
COPY temp_db.tradetype FROM '/home/workspace/data/sf_current/Batch1/TradeType.txt' DELIMITER '|' CSV;
COPY temp_db.watchhistory FROM '/home/workspace/data/sf_current/Batch1/WatchHistory.txt' DELIMITER '|' CSV;
COPY temp_db.audit FROM '/home/workspace/data/sf_current/Batch1_audit.csv' DELIMITER ',' CSV HEADER NULL AS '';


COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1967Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1967Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1967Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1967Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1968Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1968Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1968Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1968Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1969Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1969Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1969Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1969Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1970Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1970Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1970Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1970Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1971Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1971Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1971Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1971Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1972Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1972Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1972Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1972Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1973Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1973Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1973Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1973Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1974Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1974Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1974Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1974Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1975Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1975Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1975Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1975Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1976Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1976Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1976Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1976Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1977Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1977Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1977Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1977Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1978Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1978Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1978Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1978Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1979Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1979Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1979Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1979Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1980Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1980Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1980Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1980Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1981Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1981Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1981Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1981Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1982Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1982Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1982Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1982Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1983Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1983Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1983Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1983Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1984Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1984Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1984Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1984Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1985Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1985Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1985Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1985Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1986Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1986Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1986Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1986Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1987Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1987Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1987Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1987Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1988Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1988Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1988Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1988Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1989Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1989Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1989Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1989Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1990Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1990Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1990Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1990Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1991Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1991Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1991Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1991Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1992Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1992Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1992Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1992Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1993Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1993Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1993Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1993Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1994Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1994Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1994Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1994Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1995Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1995Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1995Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1995Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1996Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1996Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1996Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1996Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1997Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1997Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1997Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1997Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1998Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1998Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1998Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1998Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1999Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1999Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1999Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE1999Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2000Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2000Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2000Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2000Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2001Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2001Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2001Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2001Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2002Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2002Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2002Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2002Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2003Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2003Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2003Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2003Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2004Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2004Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2004Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2004Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2005Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2005Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2005Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2005Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2006Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2006Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2006Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2006Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2007Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2007Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2007Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2007Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2008Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2008Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2008Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2008Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2009Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2009Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2009Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2009Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2010Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2010Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2010Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2010Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2011Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2011Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2011Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2011Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2012Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2012Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2012Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2012Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2013Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2013Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2013Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2013Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2014Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2014Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2014Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2014Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2015Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2015Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2015Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2015Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2016Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2016Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2016Q3' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2016Q4' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2017Q1' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2017Q2' WITH (FORMAT text);
COPY temp_db.finwire FROM '/home/workspace/data/sf_current/Batch1/FINWIRE2017Q3' WITH (FORMAT text);


-- temp table
CREATE TABLE temp_db.customermgmt_xml (
    xmldata xml
);

INSERT INTO temp_db.customermgmt_xml (xmldata) VALUES (xmlparse(document pg_read_file('/var/lib/postgresql/data/CustomerMgmt.xml')));

-- Insert extracted data into the actual customermgmt table
INSERT INTO temp_db.customermgmt (
    actiontype, actionts, c_id, c_tax_id, c_gndr, c_tier, c_dob, c_l_name, c_f_name, c_m_name,
    c_adline1, c_adline2, c_zipcode, c_city, c_state_prov, c_ctry, 
    c_prim_email, c_alt_email, 
    c_p_1_ctry_code, c_p_1_area_code, c_p_1_local, c_p_1_ext,
    c_p_2_ctry_code, c_p_2_area_code, c_p_2_local, c_p_2_ext,
    c_p_3_ctry_code, c_p_3_area_code, c_p_3_local, c_p_3_ext,
    c_lcl_tx_id, c_nat_tx_id, 
    ca_id, ca_tax_st, ca_b_id, ca_name
)
SELECT 
    actiontype, 
    actionts, 
    c_id, 
    c_tax_id, 
    c_gndr, 
    nullif(c_tier, '')::DECIMAL(1) AS c_tier,  -- Handle empty string for C_TIER
    c_dob, 
    c_l_name, 
    c_f_name, 
    c_m_name,
    c_adline1,
    c_adline2,
    c_zipcode,
    c_city,
    c_state_prov,
    c_ctry,
    c_prim_email,
    c_alt_email,
    c_p_1_ctry_code,
    c_p_1_area_code,
    c_p_1_local,
    c_p_1_ext,
    c_p_2_ctry_code,
    c_p_2_area_code,
    c_p_2_local,
    c_p_2_ext,
    c_p_3_ctry_code,
    c_p_3_area_code,
    c_p_3_local,
    c_p_3_ext,
    c_lcl_tx_id,
    c_nat_tx_id,
    ca_id,
    ca_tax_st,
    ca_b_id,
    ca_name
FROM 
    temp_db.customermgmt_xml,
    xmltable(
        '/*[local-name()="Actions"]/*[local-name()="Action"]'  
        PASSING xmldata
        COLUMNS
            actiontype VARCHAR(9) PATH '@ActionType',
            actionts VARCHAR PATH '@ActionTS',
            c_id DECIMAL(11) PATH '*[local-name()="Customer"]/@C_ID',
            c_tax_id VARCHAR(20) PATH '*[local-name()="Customer"]/@C_TAX_ID',
            c_gndr CHAR(1) PATH '*[local-name()="Customer"]/@C_GNDR',
            c_tier TEXT PATH '*[local-name()="Customer"]/@C_TIER',
            c_dob DATE PATH '*[local-name()="Customer"]/@C_DOB',
            c_l_name VARCHAR(25) PATH '*[local-name()="Customer"]/*[local-name()="Name"]/*[local-name()="C_L_NAME"]',
            c_f_name VARCHAR(20) PATH '*[local-name()="Customer"]/*[local-name()="Name"]/*[local-name()="C_F_NAME"]',
            c_m_name CHAR(1) PATH '*[local-name()="Customer"]/*[local-name()="Name"]/*[local-name()="C_M_NAME"]',
            c_adline1 VARCHAR(80) PATH '*[local-name()="Customer"]/*[local-name()="Address"]/*[local-name()="C_ADLINE1"]',
            c_adline2 VARCHAR(80) PATH '*[local-name()="Customer"]/*[local-name()="Address"]/*[local-name()="C_ADLINE2"]',
            c_zipcode VARCHAR(12) PATH '*[local-name()="Customer"]/*[local-name()="Address"]/*[local-name()="C_ZIPCODE"]',
            c_city VARCHAR(25) PATH '*[local-name()="Customer"]/*[local-name()="Address"]/*[local-name()="C_CITY"]',
            c_state_prov VARCHAR(20) PATH '*[local-name()="Customer"]/*[local-name()="Address"]/*[local-name()="C_STATE_PROV"]',
            c_ctry VARCHAR(24) PATH '*[local-name()="Customer"]/*[local-name()="Address"]/*[local-name()="C_CTRY"]',
            c_prim_email VARCHAR(50) PATH '*[local-name()="Customer"]/*[local-name()="ContactInfo"]/*[local-name()="C_PRIM_EMAIL"]',
            c_alt_email VARCHAR(50) PATH '*[local-name()="Customer"]/*[local-name()="ContactInfo"]/*[local-name()="C_ALT_EMAIL"]',
            c_p_1_ctry_code VARCHAR(20) PATH '*[local-name()="Customer"]/*[local-name()="ContactInfo"]/*[local-name()="C_PHONE_1"]/*[local-name()="C_CTRY_CODE"]',
            c_p_1_area_code VARCHAR(20) PATH '*[local-name()="Customer"]/*[local-name()="ContactInfo"]/*[local-name()="C_PHONE_1"]/*[local-name()="C_AREA_CODE"]',
            c_p_1_local VARCHAR(20) PATH '*[local-name()="Customer"]/*[local-name()="ContactInfo"]/*[local-name()="C_PHONE_1"]/*[local-name()="C_LOCAL"]',
            c_p_1_ext VARCHAR(20) PATH '*[local-name()="Customer"]/*[local-name()="ContactInfo"]/*[local-name()="C_PHONE_1"]/*[local-name()="C_EXT"]',
            c_p_2_ctry_code VARCHAR(20) PATH '*[local-name()="Customer"]/*[local-name()="ContactInfo"]/*[local-name()="C_PHONE_2"]/*[local-name()="C_CTRY_CODE"]',
            c_p_2_area_code VARCHAR(20) PATH '*[local-name()="Customer"]/*[local-name()="ContactInfo"]/*[local-name()="C_PHONE_2"]/*[local-name()="C_AREA_CODE"]',
            c_p_2_local VARCHAR(20) PATH '*[local-name()="Customer"]/*[local-name()="ContactInfo"]/*[local-name()="C_PHONE_2"]/*[local-name()="C_LOCAL"]',
            c_p_2_ext VARCHAR(20) PATH '*[local-name()="Customer"]/*[local-name()="ContactInfo"]/*[local-name()="C_PHONE_2"]/*[local-name()="C_EXT"]',
            c_p_3_ctry_code VARCHAR(20) PATH '*[local-name()="Customer"]/*[local-name()="ContactInfo"]/*[local-name()="C_PHONE_3"]/*[local-name()="C_CTRY_CODE"]',
            c_p_3_area_code VARCHAR(20) PATH '*[local-name()="Customer"]/*[local-name()="ContactInfo"]/*[local-name()="C_PHONE_3"]/*[local-name()="C_AREA_CODE"]',
            c_p_3_local VARCHAR(20) PATH '*[local-name()="Customer"]/*[local-name()="ContactInfo"]/*[local-name()="C_PHONE_3"]/*[local-name()="C_LOCAL"]',
            c_p_3_ext VARCHAR(20) PATH '*[local-name()="Customer"]/*[local-name()="ContactInfo"]/*[local-name()="C_PHONE_3"]/*[local-name()="C_EXT"]',
            c_lcl_tx_id VARCHAR(4) PATH '*[local-name()="Customer"]/*[local-name()="TaxInfo"]/*[local-name()="C_LCL_TX_ID"]',
            c_nat_tx_id VARCHAR(4) PATH '*[local-name()="Customer"]/*[local-name()="TaxInfo"]/*[local-name()="C_NAT_TX_ID"]',
            ca_id DECIMAL(11) PATH '*[local-name()="Customer"]/*[local-name()="Account"]/@CA_ID',
            ca_tax_st DECIMAL(1) PATH '*[local-name()="Customer"]/*[local-name()="Account"]/@CA_TAX_ST',
            ca_b_id DECIMAL(11) PATH '*[local-name()="Customer"]/*[local-name()="Account"]/*[local-name()="CA_B_ID"]',
            ca_name VARCHAR(50) PATH '*[local-name()="Customer"]/*[local-name()="Account"]/*[local-name()="CA_NAME"]'
    );

DROP TABLE temp_db.customermgmt_xml;