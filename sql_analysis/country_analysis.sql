-- =========================================
-- COUNTRY-LEVEL ANALYSIS
-- =========================================

-- Conversion Rate by Country
SELECT 
    c.country,
    
    COUNT(a.user_id) AS users,
    
    SUM(a.converted) AS converted_users,
    
    ROUND(
        SUM(a.converted) * 100.0 / COUNT(a.user_id),
        2
    ) AS conversion_rate

FROM ab_data a

INNER JOIN countries c
ON a.user_id = c.user_id

GROUP BY c.country

ORDER BY conversion_rate DESC;


-- Country-wise Control vs Treatment Performance
SELECT 
    c.country,
    a.test_group,

    COUNT(a.user_id) AS users,

    SUM(a.converted) AS converted_users,

    ROUND(
        SUM(a.converted) * 100.0 / COUNT(a.user_id),
        2
    ) AS conversion_rate

FROM ab_data a

INNER JOIN countries c
ON a.user_id = c.user_id

GROUP BY c.country, a.test_group

ORDER BY c.country, conversion_rate DESC;


-- Country-wise Conversion Uplift
WITH country_conversion AS (

    SELECT 
        c.country,
        a.test_group,

        ROUND(
            SUM(a.converted) * 100.0 / COUNT(a.user_id),
            2
        ) AS conversion_rate

    FROM ab_data a

    INNER JOIN countries c
    ON a.user_id = c.user_id

    GROUP BY c.country, a.test_group
)

SELECT 
    country,

    MAX(
        CASE 
            WHEN test_group = 'treatment'
            THEN conversion_rate
        END
    )
    
    -
    
    MAX(
        CASE 
            WHEN test_group = 'control'
            THEN conversion_rate
        END
    ) AS uplift

FROM country_conversion

GROUP BY country;