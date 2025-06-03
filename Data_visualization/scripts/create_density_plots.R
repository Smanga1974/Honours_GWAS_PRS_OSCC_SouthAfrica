library("ggplot2")
library("data.table")

prs_data <- fread("density_plot_prsice_2.txt")

#change the phen_cc file to cases (2) and controls(1)
prs_data$phenotype <- ifelse(prs_data$phen_cc == 2, "control", "case")

# Standardize the PRS
prs_data$standardized_prs <- scale(prs_data$PRS)

ggplot(prs_data, aes(x = standardized_prs, fill = phenotype, color = phenotype)) +
  geom_density(alpha = 0.5) +
  labs(title = "Density Plot of Standardized Polygenic Risk Scores by Group",
       x = "Standardized Polygenic Risk Score",
       y = "Density") +
  theme_minimal() +
  scale_fill_manual(values = c("white", "white")) + # Set fill colors
  scale_color_manual(values = c("blue", "red"))
