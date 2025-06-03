#!/bin/bash

# Define variables for the command
INPUT_DIR="/home/soageng/oscc_data_honors/" # Path to your input PLINK files
INPUT_PAT="oscc_70%_qc" # Name of the PLINK files (.bed, .bim, and .fam)
DATA="/home/soageng/oscc_data_honors/oscc_70%_cleaned_sex_cov_phen" # Path to the .phen file
PHENO="pheno_cc" # Name of the column to be used in the .phen file
COVAR="PC1,PC2,PC3,PC4,PC5,PC6,Sex" # Columns with PCs as coviriates
OUTPUT_DIR="/home/soageng/assoc_results_cov_corrected/results" # Where you want your output to be

# Run the Nextflow command
nextflow run h3abionet/h3agwas/assoc/assoc.nf \
  --input_dir "$INPUT_DIR" \
  --input_pat "$INPUT_PAT" \
  --data "$DATA" \
  --pheno "$PHENO" \
  --covariates "$COVAR" \
  --output_dir "$OUTPUT_DIR" \
  --gemma 1 \
  -profile slurmSingularity



