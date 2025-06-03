library(ggplot2)

pca <- read.table("all_pca.txt", header = TRUE)

#plot the PC plot
# Create PCA plot
ggplot(pca, aes(x = PC1, y = PC2, color = Population)) +
  geom_point(size = 2,alpha = 0.5) +
  labs(title = "PCA Plot of GWAS Data",
       x = "Principal Component 1",
       y = "Principal Component 2",
       color = "Population") +
  theme_minimal() +
  theme(legend.position = "right")
