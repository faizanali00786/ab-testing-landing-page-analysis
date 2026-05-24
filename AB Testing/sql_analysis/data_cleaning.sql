-- =========================================
-- DATA CLEANING
-- =========================================

-- Remove Blank Experiment Groups
DELETE FROM ab_data
WHERE test_group IS NULL
   OR test_group = '';