USE broker_dataops_db;

-- 1. Verify that the rows loaded successfully
SELECT * FROM feed_errors LIMIT 10;

-- 2. Generate a quick business insight metric by severity
SELECT Severity, COUNT(*) as Total_Issues
FROM feed_errors
GROUP BY Severity;