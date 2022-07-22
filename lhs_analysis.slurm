#!/bin/bash
#SBATCH --job-name=lhs_analysis    # Job name
#SBATCH --mail-type=END,FAIL          # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=esk81@case.edu     # Where to send mail	
#SBATCH --ntasks=1                    # Run on a single CPU
#SBATCH --mem=16gb                     # Job memory request
#SBATCH --time=24:00:00               # Time limit hrs:min:sec
#SBATCH --output=serial_test_%j.log   # Standard output and error log
pwd; hostname; date

module load python/3.7.0
source "/home/esk81/cluster_code/venv_dir/seascapes/bin/activate"
python /home/esk81/seascapes_figures/experiments/latin_hypercube_analysis.py

date
