sumstats="/home/soageng/PRSCsx/GWAS_sumstats.txt" #Full path and file name to my GWAS sumstats
headers="SNP,A1,A2,BETA,P"  #The names I want my selected columns to be named

Rscript toPRScsFormat.R \
--sumstats $sumstats \
--headers $headers
