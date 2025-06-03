#!/usr/bin/env Rscript

###################################################################
####QC and re-format GWAS sumstats for PRScs                   ####
####Ying Wang (yiwang@broadinstitute.org) in June-2021         ####
###################################################################

########load packages needed########
library(data.table)
library(optparse) #for parsing arguments

#########parsing argument options########
option_list <- list(
  make_option(c("--sumstats"), type = "character", default = NULL, help = "Full path to your GWAS sumstats"),
  make_option(c("--headers"), type = "character", default = NULL, help = "The column names for (SNP,A1,A2,BETA,P) in your GWAS sumstats in the exactly same order, separated by comma.")
)

opt = parse_args(OptionParser(option_list=option_list))
sumstats <- opt$sumstats
headers <- opt$headers
headers1 <- strsplit(headers, ",")[[1]]


gwas <- fread(sumstats)
names(gwas) <- c("SNP", "A1", "A2", "BETA", "P")
gwas1 <- gwas[!duplicated(SNP)][grep("rs", SNP)]

if(grepl(".gz", sumstats)){
  outf <- gsub(".txt.gz", "", sumstats)
  fwrite(gwas1, file = paste0(outf,"_toPRScs.txt"), sep = "\t")
} else{
  outf <- gsub(".txt", "", sumstats)
  fwrite(gwas1, file = paste0(outf,"_toPRScs.txt"), sep = "\t")
}
