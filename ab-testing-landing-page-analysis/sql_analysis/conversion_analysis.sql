-- =========================================
-- OVERALL CONVERSION ANALYSIS
-- =========================================

-- Conversion Rate by Experiment Group
SELECT
    test_group,
    
    COUNT(user_id) AS users,
    
    SUM(converted) AS converted_users,
    
    ROUND(
        SUM(converted) * 100.00 / COUNT(user_id),
        2
    ) AS conversion_rate

FROM ab_data

GROUP BY test_group;


-- Overall Conversion Uplift
SELECT 
    ROUND(
        (
            SELECT 
                SUM(converted) * 100.0 / COUNT(*)
            FROM ab_data
            WHERE test_group = 'treatment'
        )
        -
        (
            SELECT 
                SUM(converted) * 100.0 / COUNT(*)
            FROM ab_data
            WHERE test_group = 'control'
        ),
        2
    ) AS conversion_uplift;