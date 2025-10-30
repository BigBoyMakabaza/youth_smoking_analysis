# Tableau Dashboard Documentation

## Dashboard URL
[Youth Smoking Data Visualizations](https://public.tableau.com/views/YouthSmokingDataVisualizations/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

## Dashboard Components

### 1. Gender Analysis
- **Visualization**: Comparative bar chart or pie chart
- **Data Source**: `SmokingPrevTotalMnF` SQL view
- **Insight**: Total smoking prevalence by gender

### 2. Age Group Analysis  
- **Visualization**: Bar chart showing averages
- **Data Source**: `AVGSmokingPrev` SQL view
- **Insight**: Average smoking prevalence by age group

### 3. Peer Influence Impact
- **Visualization**: Line graph or scatter plot
- **Data Source**: Peer influence aggregation queries
- **Insight**: Relationship between peer pressure and smoking rates

### 4. Interactive Features
- **Filters**: Age group, gender selection
- **Tooltips**: Detailed prevalence percentages
- **Color Coding**: Consistent color scheme across visualizations

## Data Flow
SQL Server → Processed Data → Tableau Extract → Interactive Dashboard

## Design Choices
- Clean, professional color scheme
- Intuitive layout for easy interpretation
- Mobile-responsive design
- Clear labeling and legends
