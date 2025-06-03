#OR approximation
# Load the data into R by typing Rscript
library(data.table)
assoc_data <- fread("/home/soageng/assoc_results_cov_corrected/results/gemma/oscc_70%_qc-pheno-cc.assoc.txt")

# Ensure the ratio of cases to total samples is correct !!!!
alphalin <- 1182 / 3433

# Calculate alphalin_1_alin
alphalin_1_alin <- alphalin * (1 - alphalin)

# Calculate the approximate odds ratio using the beta coefficient
assoc_data$beta_log_or <- assoc_data$beta / alphalin_1_alin

# Exponentiate to get the odds ratio
assoc_data$or_approx <- exp(assoc_data$beta_log_or)

# Calculate betalin (variance of beta)
assoc_data$betalin <- assoc_data$se^2

# Calculate alphalin2
alphalin2 <- alphalin^2

# Calculate the variance of the log odds ratio
assoc_data$betalog_variance <- assoc_data$betalin / alphalin2

# Calculate the standard error of the log odds ratio
assoc_data$betalog_se <- sqrt(assoc_data$betalog_variance)

# Calculate the confidence intervals
ci_se <- 1.96 * assoc_data$betalog_se
assoc_data$ci_L <- assoc_data$or_approx - ci_se
assoc_data$ci_U <- assoc_data$or_approx + ci_se
 
# Taking out only relevant columns
assoc_data <- assoc_data[,.(Chr = chr,rs_ID = rs, Position = ps, EA = allele1, AA = allele0, EAF = af, OR = or_approx, ci_L, ci_U, P_value = p_wald)]
# View the first few rows of the data with the approximated OR and their cofidence interval
head(assoc_data)

#save the data
fwrite(assoc_data,"/home/soageng/assoc_results_cov_corrected/results/gemma/oscc_GWAS_sumstats_OR.txt", sep = "\t", col.names = TRUE)
