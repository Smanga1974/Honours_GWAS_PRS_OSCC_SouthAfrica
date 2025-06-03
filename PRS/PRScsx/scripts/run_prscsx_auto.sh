PATH_TO_REFERENCE="/home/soageng/PRSCsx/LD_reference_panels/ldblk_1kg_afr" #Full path to the LD reference panel
VALIDATION_BIM_PREFIX="/home/soageng/oscc_data_honors/oscc_30%_corrected" #Full path and the prefix of the files of the target (validation/testing) dataset
GWAS_SAMPLE_SIZE=3435  #This is the sample size of association analysis and it has to be an integer
SUM_STATS_FILE="/home/soageng/PRSCsx/GWAS_sumstats_toPRScs.txt"
OUTPUT_DIR="/home/soageng/PRSCsx/results/estimated_effect_sizes"
#N_THREADS="6"
PATH_TO_PRSCS_DIR="/home/soageng/PRSCsx/PRScs"  #Path to PRScs.py


#export MKL_NUM_THREADS=$N_THREADS
#export NUMEXPR_NUM_THREADS=$N_THREADS
#export OMP_NUM_THREADS=$N_THREADS

python3 $PATH_TO_PRSCS_DIR/PRScs.py --ref_dir=$PATH_TO_REFERENCE \
--bim_prefix=$VALIDATION_BIM_PREFIX \
--sst_file=$SUM_STATS_FILE --n_gwas=$GWAS_SAMPLE_SIZE \
--out_dir=$OUTPUT_DIR 
