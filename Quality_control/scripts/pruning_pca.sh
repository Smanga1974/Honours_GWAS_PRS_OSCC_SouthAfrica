#loading the data
INPUT = "/home/soageng/Honours_work/oscc_data_honors/oscc_dnachip_v5.1"
#pruning
plink --bfile ${INPUT} --indep-pairwise 100 20 0.2 --out pruned_input_t
plink --bfile ${INPUT} --extract pruned_input_t.prune.in --make-bed --out pruned_input
#pca
plink --bfile pruned_input --pca 10 --out oscc_dnachip_v5.1_pca
