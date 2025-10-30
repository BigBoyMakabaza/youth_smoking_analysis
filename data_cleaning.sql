-- =============================================
-- DATA CLEANING & PREPARATION
-- =============================================
-- Purpose: Prepare the dataset for analysis by removing invalid records
-- and focusing on the target demographic (youth ages 15-29)
-- =============================================

-- First, examine the raw dataset
SELECT *
FROM DrugAnalysisDB.dbo.YouthDrugData;

-- =============================================
-- CLEANING STEP 1: Remove invalid age group '14-Oct'
-- Reason: This appears to be a data entry error
-- =============================================
DELETE FROM DrugAnalysisDB.dbo.YouthDrugData
WHERE Age_Group LIKE '14-Oct';

-- =============================================
-- CLEANING STEP 2: Focus on youth demographics (15-29 years)
-- Reason: Project scope is youth smoking analysis
-- =============================================
DELETE FROM DrugAnalysisDB.dbo.YouthDrugData
WHERE Age_Group NOT LIKE '15-19'
	AND Age_Group NOT LIKE '20-24'
	AND Age_Group NOT LIKE '25-29';

-- =============================================
-- CLEANING STEP 3: Remove 'Both' gender category
-- Reason: To enable clear male vs female comparison
-- =============================================
DELETE FROM DrugAnalysisDB.dbo.YouthDrugData
WHERE Gender LIKE 'Both';
