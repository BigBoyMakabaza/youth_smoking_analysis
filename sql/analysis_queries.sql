-- =============================================
-- PEER INFLUENCE DEEP DIVE
-- =============================================
-- Purpose: Detailed analysis of how peer influence affects smoking rates
-- Used in: Line graphs and peer influence charts
-- =============================================

-- =============================================
-- Peer Influence vs Smoking Prevalence (Averaged)
-- Used in: Line graph visualization
-- =============================================

-- Age Group 15-19
SELECT Peer_Influence, ROUND(AVG(CAST(Smoking_Prevalence as float)),2) AS AverageSmokingPrevalence
FROM DrugAnalysisDB.dbo.YouthDrugData
WHERE Age_Group = '15-19'
GROUP BY Peer_Influence
ORDER BY Peer_Influence DESC

-- Age Group 20-24
SELECT Peer_Influence, ROUND(AVG(CAST(Smoking_Prevalence as float)),2) AS AverageSmokingPrevalence
FROM DrugAnalysisDB.dbo.YouthDrugData
WHERE Age_Group = '20-24'
GROUP BY Peer_Influence
ORDER BY Peer_Influence DESC

-- Age Group 25-29
SELECT Peer_Influence, ROUND(AVG(CAST(Smoking_Prevalence as float)),2) AS AverageSmokingPrevalence
FROM DrugAnalysisDB.dbo.YouthDrugData
WHERE Age_Group = '25-29'
GROUP BY Peer_Influence
ORDER BY Peer_Influence DESC

-- =============================================
-- Alternative Approach: Total Prevalence by Peer Influence
-- From your second approach - bar graph data
-- =============================================
CREATE VIEW PeerInfluenceBarGraph AS
SELECT Peer_Influence, ROUND(SUM(CAST(Smoking_Prevalence as float)),2) AS TotalSmokingPrevalence
FROM DrugAnalysisDB.dbo.YouthDrugData
GROUP BY Peer_Influence;

SELECT *
FROM PeerInfluenceBarGraph
ORDER BY Peer_Influence;
