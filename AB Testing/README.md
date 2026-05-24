\# A/B Testing \& Landing Page Conversion Analysis



\## Project Overview



This project analyzes the performance of a new landing page using A/B testing techniques to determine whether the treatment group improved user conversion rates compared to the control group.



The analysis focuses on:

\- Conversion performance comparison

\- Geographic segmentation

\- Experiment uplift analysis

\- Business recommendations based on data insights



The project was built using:

\- SQL

\- Power BI

\- Business Analytics concepts



\---



\# Business Problem



A company launched a new landing page design and conducted an A/B test to evaluate whether the new experience improved user conversion rates.



The objective was to answer:



> Should the company roll out the new landing page to all users?



\---



\# Dataset Information



The project uses two datasets:



| Dataset | Description |

|---|---|

| ab\_data | Experiment group, landing page, timestamp, conversion data |

| countries | User geographic information |



\---



\# Tools \& Technologies Used



\- SQL (Data Cleaning \& Analysis)

\- Power BI (Dashboard \& Visualization)

\- Excel (Initial Cleaning \& Validation)



\---



\# Key Business Questions



\- Did the treatment group improve conversion rates?

\- What was the overall conversion uplift?

\- Did campaign performance vary across countries?

\- Which regions responded best to the treatment experience?

\- Should the new landing page be rolled out globally?



\---



\# SQL Analysis Performed



\## Data Validation

\- Total rows check

\- Unique user validation

\- Experiment group distribution

\- Conversion value validation



\## Data Cleaning

\- Removed blank experiment groups

\- Validated conversion values



\## Conversion Analysis

\- Conversion rate by experiment group

\- Overall conversion uplift



\## Geographic Analysis

\- Country-wise conversion performance

\- Country-wise treatment vs control analysis

\- Regional uplift comparison



\---



\# Dashboard Preview



!\[Dashboard Preview](images/dashboard\_preview.png)



\---



\# Key Insights



\- The treatment landing page generated a slightly lower overall conversion rate compared to the control group.

\- Overall conversion uplift was negative (-0.15%).

\- The UK was the only region where the treatment group slightly outperformed the control group.

\- Both the US and Canada experienced lower conversion performance under the treatment experience.

\- Results suggest that customer response varies geographically.



\---



\# Business Recommendation



Based on the analysis, a universal rollout of the treatment landing page is not recommended.



Instead, the company should:

\- Conduct additional localized experimentation

\- Optimize landing page experience region-wise

\- Further analyze user behavior differences across markets



\---



\# Dashboard Features



The Power BI dashboard includes:

\- KPI cards

\- Conversion rate comparison

\- Geographic performance analysis

\- Executive recommendation summary



\---



\# Project Structure



```plaintext

AB Testing/

│

├── dashboard/

│   ├── ab\_testing\_dashboard.pbix

│   └── dashboard\_screenshot.png

│

├── images/

│   └── dashboard\_preview.png

│

├── sql\_analysis/

│   ├── overview.sql

│   ├── data\_cleaning.sql

│   ├── conversion\_analysis.sql

│   └── country\_analysis.sql

│

└── README.md

