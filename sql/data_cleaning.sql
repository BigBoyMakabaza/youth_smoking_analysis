-- =============================================
-- CORE ANALYSIS QUERIES
-- =============================================
-- Purpose: Main analytical queries that power the Tableau visualizations
-- =============================================

-- =============================================
-- ANALYSIS 1: Total Smoking Prevalence by Gender
-- Used in: Gender comparison chart
-- =============================================
CREATE VIEW SmokingPrevTotalMnF AS
SELECT Gender, ROUND(SUM(cast(Smoking_Prevalence as float)),2) AS TotalSmokingPrevalence
FROM DrugAnalysisDB.dbo.YouthDrugData
GROUP BY Gender

SELECT *
FROM SmokingPrevTotalMnF
ORDER BY TotalSmokingPrevalence

-- =============================================
-- ANALYSIS 2: Average Smoking Prevalence by Age Group
-- Used in: Age group bar chart
-- =============================================
CREATE VIEW AVGSmokingPrev AS
SELECT Age_Group, ROUND(AVG(CAST(Smoking_Prevalence as float)),2) AS AverageSmokingPrevalence
FROM DrugAnalysisDB.dbo.YouthDrugData
GROUP BY Age_Group

SELECT *
FROM AVGSmokingPrev
ORDER BY AverageSmokingPrevalence

-- =============================================
-- ANALYSIS 3: Peer Influence Scatter Plot Data
-- Used in: Scatter plot visualizations by age group
-- =============================================

-- For Age Group 15-19
CREATE VIEW PeerInfluenceScatterPlot15 AS
SELECT Age_Group, Peer_Influence, Smoking_Prevalence
FROM DrugAnalysisDB.dbo.YouthDrugData
WHERE Age_Group = '15-19'

SELECT *
FROM PeerInfluenceScatterPlot15
ORDER BY Peer_Influence DESC

-- For Age Group 20-24
CREATE VIEW PeerInfluenceScatterPlot20 AS
SELECT Age_Group, Peer_Influence, Smoking_Prevalence
FROM DrugAnalysisDB.dbo.YouthDrugData
WHERE Age_Group = '20-24'

SELECT *
FROM PeerInfluenceScatterPlot20
ORDER BY Peer_Influence DESC

-- For Age Group 25-29
CREATE VIEW PeerInfluenceScatterPlot25 AS
SELECT Age_Group, Peer_Influence, Smoking_Prevalence
FROM DrugAnalysisDB.dbo.YouthDrugData
WHERE Age_Group = '25-29'

SELECT *
FROM PeerInfluenceScatterPlot25
ORDER BY Peer_Influence DESC
