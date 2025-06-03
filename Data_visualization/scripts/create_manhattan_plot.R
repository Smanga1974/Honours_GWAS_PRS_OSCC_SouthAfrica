library(qqman)
assoc_data <- read.table("oscc_70%_corrected-pheno-cc.assoc.txt",header = TRUE)
#Define the suggestive and significant threshold
suggestive_threshold <- 1e-5
significant_threshold <- 5e-8

# Generate the Manhattan plot
manhattan(assoc_data,chr="chr", bp="ps", snp="rs", p="p_wald", 
          col = c("black", "red"), # Colors for chromosomes
          suggestiveline = -log10(suggestive_threshold), 
          genomewideline = -log10(significant_threshold),
          annotatePval = 5e-8)


