# State-of-Austin-crime-Analysis and Visualization

## Table of Contents
- [Project Overview](#project-overview)
- [Technical Workflow](#technical-workflow-abstract)
- [Data Source](#data-source)
- [Dashboard](#dashboard)
- [Tools and Techniques](#tools-and-techniques)
- [Key Findings](#key-findings)
- [Recommendations](#recommendations)
- [Future Enhancements](#future-enhancements)

---

## Project Overview
This project focuses on analyzing crime data recorded by the Austin Police Department from 2003 to 2024. The primary objective is to uncover meaningful insights, trends, and correlations while providing clear visualization dashboards for better decision-making by stakeholders.

Key deliverables include:
- Detailed crime trends over years
- Exploration of family violence incidents
- Crime frequency based on time and location
- Crime clearance efficiency analysis

---

## Technical Workflow Abstract
The project aimed to clean, validate, and prepare the crime dataset for analysis while ensuring data integrity and handling missing values. The analysis focused on creating clear exploratory visualizations to derive actionable insights, especially time-based and correlational analyses, helping stakeholders make strategic decisions.

---

## Data Source
The crime data was sourced from the City of Austin’s official open data portal.
- [Austin Crime Data Dataset](https://data.austintexas.gov/Public-Safety/Crime-Reports/fdj4-gpfu/about_data)

---

## Dashboard
Explore the interactive crime report dashboard on Tableau:
- [Austin Crime Report Dashboard](https://public.tableau.com/app/profile/snehith.reddy.kathi/viz/APDDashboard/Dashboard1)

---

## Tools and Techniques

- **Excel:** Data exploration and initial dataset evaluation
- **SQL:** Applied for data preprocessing, aggregation, and manipulation tasks, including:
  - Aggregate functions, string functions, and data manipulation
  - Indexing, grouping, filtering, and handling NULL values
  - Variable declaration for complex query logic
- **Tableau:** Developed interactive dashboards with features:
  - Interactive visuals
  - Calculated fields, filtering techniques
  - KPI charts, bar graphs, heat maps, tree maps

---

## Key Findings

1. **Total Incidents Recorded**
   - A total of **2,496,800 crime incidents** have been recorded between 2003 and 2024.

2. **Clearance Rate**
   - The average clearance period for arrests is **28 days**, while for exceptions, it stands at **35 days**.
   - A notable number of cases (**82,984**) remain unresolved.
   - Cases cleared by arrest: **567,278**, cleared by exceptions: **1,224,723**.

3. **Family Violence**
   - **160,380 incidents** involved family violence.

4. **Crime Frequency in 24 Hours**
   - Peak hour: **17:00 to 18:00 (5 PM to 6 PM)** with **136,300 incidents**.
   - Least frequent hour: **05:00 to 06:00 (5 AM to 6 AM)** with **109,012 incidents**.

5. **Crime Trends Over Time**
   - Crime rates have generally declined from 2003 to 2024.
   - Peak year: **2008** with **143,480 incidents**.
   - Lowest recorded year: **2024** with **62,776 incidents**.

6. **Crime Location Insights**
   - **Residences/homes** are the most frequent crime locations with **980,591 incidents**.
   - Highways/roads/alleys account for **529,301 incidents**, followed by parking/drop-off areas with **312,981 incidents**.

7. **Crimes by District & Sector**
   - District with the highest number of crimes: **ED district (340,271 incidents)**.
   - District with the fewest crimes: **DA district (216,685 incidents)**.

---

## Recommendations

### Enhanced Clearance Rate Strategies
- **Resource Allocation:** Allocate additional resources to districts with high unresolved cases, particularly the ED district.
- **Technology Integration:** Leverage predictive analytics to expedite the case clearance process.

### Targeted Patrol and Surveillance
- **Peak Hour Patrols:** Increase surveillance during the peak crime hours from **17:00 to 18:00**, focusing on homes and highways.
- **Infrastructure Improvements:** Install additional CCTV cameras and improve lighting in high-crime zones.

### Community Engagement
- **Family Violence Prevention:** Conduct awareness campaigns targeting family violence incidents.
- **Community Partnerships:** Collaborate with NGOs and schools to educate the public and support victims.

---

## Future Enhancements
- **Automation:** Create scripts for automated data updates.
- **Predictive Analysis:** Use machine learning to forecast crime rates and hotspot zones.
