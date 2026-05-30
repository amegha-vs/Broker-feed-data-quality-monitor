CREATE DATABASE broker_dataops_db;
USE broker_dataops_db;
CREATE TABLE feed_errors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Broker VARCHAR(50),
    TradeID VARCHAR(30),
    Issue_Type VARCHAR(100),
    Severity VARCHAR(20)
);
SELECT * FROM feed_errors LIMIT 10;