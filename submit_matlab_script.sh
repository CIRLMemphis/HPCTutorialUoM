#!/bin/bash

#SBATCH --partition gpuq 
#SBATCH --nodes 1
#SBATCH --cpus-per-task=2
#SBATCH --mem-per-cpu=500M
#SBATCH --time=0-00:10:00
#SBATCH --mail-type=END
#SBATCH --mail-user=cvan@memphis.edu

# run matlab program via the run_matlab script
logFile=running_m_file_in_hpc_gpu.log
mFile=running_m_file_in_hpc_gpu.m
/public/apps/matlab/R2018a/bin/matlab -nodisplay -nosplash -nodesktop -logfile $logFile -r "run $mFile;quit;"
