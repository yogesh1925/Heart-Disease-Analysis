
library(ggplot2)   
df <- read.csv("heart_disease.csv", stringsAsFactors = FALSE)

head(df)       
nrow(df)       

avg_age <- round(mean(df$age), 1)
cat("Average age of all patients:", avg_age, "years\n")

avg_chol <- round(mean(df$chol), 1)
cat("Average cholesterol level  :", avg_chol, "mg/dl\n")



disease_count    <- sum(df$target == 1)   
no_disease_count <- sum(df$target == 0)   

cat("Patients WITH heart disease   :", disease_count, "\n")
cat("Patients WITHOUT heart disease:", no_disease_count, "\n")



chart_data <- data.frame(
  Group = c("Has Heart Disease", "No Heart Disease"),
  Count = c(disease_count, no_disease_count)
)

chart_data$Percentage <- round(chart_data$Count / sum(chart_data$Count) * 100, 1)
print(chart_data)

#bar graph
ggplot(chart_data, aes(x = Group, y = Count, fill = Group)) +

  geom_bar(stat = "identity", width = 0.5) +

  geom_text(aes(label = Count), vjust = -0.5, size = 5, fontface = "bold") +

  scale_fill_manual(values = c("Has Heart Disease" = "#e74c3c",
                                "No Heart Disease"  = "#2ecc71")) +

  labs(
    title    = "How Many Patients Have Heart Disease?",
    subtitle = "Based on 100 patient records",
    x        = "Patient Group",
    y        = "Number of Patients"
  ) +

  theme_minimal(base_size = 14) +

  theme(legend.position = "none")

#pie chart 
chart_data$Label <- paste0(chart_data$Group, "\n", chart_data$Percentage, "%")

ggplot(chart_data, aes(x = "", y = Count, fill = Group)) +

  geom_bar(stat = "identity", width = 1, color = "white", linewidth = 1) +

  coord_polar(theta = "y") +

  geom_text(aes(label = Label),
            position = position_stack(vjust = 0.5),
            size = 5, fontface = "bold", color = "white") +

  scale_fill_manual(values = c("Has Heart Disease" = "#e74c3c",
                                "No Heart Disease"  = "#2ecc71")) +

  labs(
    title    = "Percentage of Patients With and Without Heart Disease",
    subtitle = "Based on 100 patient records"
  ) +

  theme_void(base_size = 14) +

  theme(legend.position = "none")


#gender bar

df$sex_label <- ifelse(df$sex == 1, "Male", "Female")

df$disease_label <- ifelse(df$target == 1, "Has Disease", "No Disease")

gender_data <- as.data.frame(table(df$sex_label, df$disease_label))
colnames(gender_data) <- c("Gender", "Status", "Count")

ggplot(gender_data, aes(x = Gender, y = Count, fill = Status)) +

  geom_bar(stat = "identity", position = "dodge", width = 0.5) +

  geom_text(aes(label = Count),
            position = position_dodge(width = 0.5),
            vjust = -0.5, size = 5, fontface = "bold") +

  scale_fill_manual(values = c("Has Disease" = "#e74c3c",
                                "No Disease"  = "#2ecc71")) +

  labs(
    title    = "Heart Disease Count by Gender",
    subtitle = "Are men or women more affected?",
    x        = "Gender",
    y        = "Number of Patients",
    fill     = "Status"
  ) +

  theme_minimal(base_size = 14)


#histogram
ggplot(df, aes(x = age)) +

  geom_histogram(bins = 10, fill = "#3498db", color = "white", linewidth = 0.8) +

  stat_bin(bins = 10,
           geom = "text",
           aes(label = after_stat(count)),
           vjust = -0.5,
           size  = 4,
           fontface = "bold",
           color = "#2c3e50") +

  geom_vline(xintercept = avg_age,
             color    = "#e74c3c",
             linetype = "dashed",
             linewidth = 1) +

  annotate("text",
           x     = avg_age + 1.5,
           y     = 18,
           label = paste0("Avg Age: ", avg_age),
           color = "#e74c3c",
           size  = 4.5,
           fontface = "bold") +

  labs(
    title    = "Age Distribution of All Patients",
    subtitle = "How old are the patients in this dataset?",
    x        = "Age (years)",
    y        = "Number of Patients"
  ) +

  theme_minimal(base_size = 14)


cat("\n============================\n")
cat("  4 Charts + 2 Data Facts!\n")
cat("  1. Bar Chart  - Disease Count\n")
cat("  2. Pie Chart  - Disease Percentage\n")
cat("  3. Bar Chart  - Gender Comparison\n")
cat("  4. Histogram  - Age Distribution\n")
cat("----------------------------\n")
cat("  Data Facts:\n")
cat("  Average Patient Age      :", avg_age, "years\n")
cat("  Average Cholesterol Level:", avg_chol, "mg/dl\n")
cat("============================\n")
