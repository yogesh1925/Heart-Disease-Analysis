🫀 Heart Disease Risk Factor Analysis — R Programming

A beginner-friendly Data Analysis project that explores heart disease patterns
across 100 patients using R programming and ggplot2 for clean, insightful visualizations.


📁 Repository Structure

📦 Heart Disease Analysis
 ┣ 📂 R Script
 ┃ ┗ 📄 heart_disease_complete.R
 ┣ 📂 Raw Data
 ┃ ┗ 📄 heart_disease.csv
 ┗ 📄 README.md


🎯 Project Objective

Build a simple yet meaningful analysis to help understand heart disease patterns by:


Identifying how many patients have heart disease vs healthy patients
Comparing disease rates between male and female patients
Analyzing the age distribution of patients
Extracting key health facts like average age and cholesterol levels



📌 Key Facts from the Data

MetricValueTotal Patients100Patients With Heart Disease52 (52%)Patients Without Heart Disease48 (48%)Average Patient Age55.5 yearsAverage Cholesterol Level252.5 mg/dlMales With Heart Disease31Females With Heart Disease21


📊 Charts Created

1. Bar Chart — Disease Count

Shows how many patients have heart disease vs no heart disease with count labels on each bar.

2. Pie Chart — Disease Percentage

Displays the 52% vs 48% split between disease and healthy patients as a labeled circle.

3. Gender Bar Chart — Male vs Female

Side-by-side comparison of how many men and women are affected by heart disease.

4. Histogram — Age Distribution

Shows how patients are spread across different age ranges with a red dashed line marking the average age of 55.5 years.


🗃️ Dataset

PropertyValueRows100 patient recordsDomainHealthcare / MedicalFormatCSV

Column Description

ColumnDescriptionageAge of the patient in yearssex1 = Male, 0 = FemalecholSerum cholesterol level in mg/dltarget1 = Has Heart Disease, 0 = No Heart Disease


🛠️ Tools & Technologies

ToolPurposeR ProgrammingCore language for analysisRStudioIDE for writing and running R codeggplot2Building all 4 charts


🔍 Key Learnings


Loading and structuring data using data.frame() in R
Cleaning and labeling raw numeric data into readable categories
Building bar charts, pie charts, and histograms using ggplot2
Extracting meaningful statistics using mean(), sum(), and table()
Annotating charts with average lines and count labels



👤 Author
Yogeshwaran 

🔗 www.linkedin.com/in/yogeshwaran-subramanian-371909270
📧 yogeshsubramanian05@gmail.com
