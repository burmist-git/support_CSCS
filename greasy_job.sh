#!/bin/bash -l
#SBATCH --job-name=ctapipe
#SBATCH --output=ctapipe.%j.out
#SBATCH --error=ctapipe.%j.err
#SBATCH --account=cta04
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --partition=normal
#SBATCH --constraint=mc
#SBATCH --mem=120GB

module load singularity
module load daint-mc
module load gcc/9.3.0
module load GSL/2.7-CrayGNU-21.09
module load cray-python/3.9.12.1
module load GREASY
 
greasy greasy_job.joblist
