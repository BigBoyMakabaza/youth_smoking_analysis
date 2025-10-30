# Methodology

## Project Approach
This analysis follows a structured data analysis workflow:

### 1. Data Understanding & Cleaning
- **Initial Exploration**: Examined raw dataset structure and variables
- **Data Cleaning**: 
  - Removed invalid age group '14-Oct' (data entry error)
  - Filtered to focus on youth demographics (15-29 years)
  - Removed 'Both' gender category for clear male/female analysis

### 2. Analysis Strategy
- **Comparative Analysis**: Male vs Female smoking prevalence
- **Age Group Segmentation**: 15-19, 20-24, 25-29 year cohorts
- **Peer Influence Correlation**: Relationship between peer pressure levels (1-10) and smoking rates
- **Multi-dimensional Analysis**: Combined age, gender, and peer influence factors

### 3. Technical Implementation
- **SQL Views**: Created reusable views for each analysis dimension
- **Aggregation Methods**: Used SUM for totals, AVG for averages
- **Data Type Handling**: Explicit casting from string to float for numerical analysis
- **Multiple Visualization Approaches**: Scatter plots, line graphs, and bar charts

## Tools & Technologies
- **SQL Server**: Primary data processing and analysis
- **Tableau**: Data visualization and dashboard creation
- **Excel**: Initial data exploration and supplemental analysis

## Data Sources
Youth drug usage dataset containing demographic and behavioral variables including smoking prevalence, peer influence, and socioeconomic factors.
