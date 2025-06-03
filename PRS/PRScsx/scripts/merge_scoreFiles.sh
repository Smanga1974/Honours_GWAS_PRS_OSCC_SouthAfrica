wkdir="/home/soageng/PRSCsx/results/prscore/chromosomes/"
file_pattern="*profile"
out_file="/home/soageng/PRSCsx/results/prscore/individuals/oscc_30%_individuals_prsscores.profile"


Rscript merge_scoreFiles.R \
--wkdir $wkdir \
--file_pattern $file_pattern \
--out_file $out_file
