
Rscript /home/soageng/PRSice-2/PRSice.R \
    --prsice /home/soageng/PRSice-2/PRSice_linux \
    --base /home/soageng/assoc_results_cov_corrected/results/gemma/oscc_70%_qc-pheno-cc.assoc.txt \
    --beta \
    --target /home/soageng/oscc_data_honors/oscc_30%_corrected \
    --binary-target T \
    --pheno /home/soageng/oscc_data_honors/oscc_30%_corrected.phen --pheno-col phen_cc \
    --stat beta \
    --pvalue p_wald \
    --snp rs \
    --chr chr \
    --bp ps \
    --A1 allele1 \
    --A2 allele0 \
    --cov /home/soageng/oscc_data_honors/oscc_30%_corrected.covariate --cov-col PC1,PC2,PC3,PC4,PC5,PC6,Sex \
    --out /home/soageng/PRSice-2/results/prsice_2_result

