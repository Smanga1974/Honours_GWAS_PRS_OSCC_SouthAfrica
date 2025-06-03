# Load necessary packages
library(pROC)
library(ggplot2)

prs_data <- read.table("density_plot_prsice_2.txt", header = TRUE)

# Compute ROC curve
roc_curve <- roc(prs_data$phen_cc, prs_data$PRS)

# Prepare data for ggplot2
roc_data <- data.frame(
  fpr = roc_curve$specificities,  # False Positive Rate
  tpr = roc_curve$sensitivities   # True Positive Rate
)

# Plot ROC curve using ggplot2
ggplot(roc_data, aes(x = 1 - fpr, y = tpr)) +  # Correct FPR orientation
  geom_line(color = "blue", size = 1.2) +  # ROC curve line
  geom_abline(intercept = 0, slope = 1, linetype = "dashed", color = "gray") +  # Random classifier line
  labs(title = paste("ROC Curve (AUC =", round(auc(roc_curve), 2), ")"),
       x = "False Positive Rate (1 - Specificity)",
       y = "True Positive Rate (Sensitivity)") +
  theme_minimal() +
  coord_equal()  # Ensure the aspect ratio is 1:1
