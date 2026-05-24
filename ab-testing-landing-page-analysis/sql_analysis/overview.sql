-- =========================================
-- OVERVIEW & DATA VALIDATION
-- =========================================

-- Total Rows
SELECT COUNT(*) AS total_rows
FROM ab_data;

-- Unique Users
SELECT COUNT(DISTINCT user_id) AS unique_users
FROM ab_data;

-- Experiment Group Distribution
SELECT 
    test_group,
    COUNT(*) AS users
FROM ab_data
GROUP BY test_group;

-- Conversion Value Validation
SELECT DISTINCT converted
FROM ab_data;