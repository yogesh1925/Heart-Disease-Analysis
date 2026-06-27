Heart Disease Risk Factor Analysis 🫀

A beginner-friendly data analysis project built using R programming that explores
heart disease patterns across 100 patients using simple and clean visualizations.


📁 Project Files

📁 heart-disease-analysis/
├── heart_disease_complete.R   → Main R script (all code)
├── heart_disease.csv          → Dataset (100 patients)
└── README.md                  → This file


📊 About the Dataset


Source: Cleveland Heart Disease Dataset (adapted)
Total Patients: 100
Columns:


ColumnDescriptionageAge of the patient in yearssex1 = Male, 0 = FemalecholSerum cholesterol level in mg/dltarget1 = Has Heart Disease, 0 = No Heart Disease


📈 Charts Created

1. Bar Chart — Disease Count

Shows how many patients have heart disease vs no heart disease.

2. Pie Chart — Disease Percentage

Shows the percentage split between disease and healthy patients.

3. Gender Bar Chart — Male vs Female

Compares how many men and women are affected by heart disease.

4. Histogram — Age Distribution

Shows how patients are spread across different age ranges with the average age marked.


🔍 Key Findings


52% of patients in this dataset have heart disease
Average patient age is 55.5 years
Average cholesterol is 252.5 mg/dl (above the healthy limit of 200)
Males (31) are more affected by heart disease than females (21)



🛠️ Tools Used


Language: R
IDE: RStudio
Library: ggplot2



▶️ How to Run

Step 1 — Install R and RStudio from:


R → https://cran.r-project.org
RStudio → https://posit.co/download/rstudio-desktop


Step 2 — Put both files in the same folder:

heart_disease_complete.R
heart_disease.csv

Step 3 — Open heart_disease_complete.R in RStudio

Step 4 — Install the required package (only once):

rinstall.packages("ggplot2")

Step 5 — Set working directory to your folder:

Session → Set Working Directory → To Source File Location

Step 6 — Run the full script:

Ctrl + Shift + Enter

All 4 charts will appear in the RStudio Plots panel.

Learning R Programming and Data Analysis
Project completed as part of self-learning journey


This is a beginner-level project built for learning purposes.
The dataset is a simplified adaptation of the Cleveland Heart Disease dataset.
