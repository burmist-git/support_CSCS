#!/bin/bash
#SBATCH --job-name=ctapipe
#SBATCH --output=ctapipe.%j.out
#SBATCH --error=ctapipe.%j.err
#SBATCH --account=cta03
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --partition=normal
#SBATCH --constraint=mc
#SBATCH --mem=120GB

siffile="/scratch/snx3000/lburmist/singularity/21.10.2024/ctapipe.sif"
input="/scratch/snx3000/lburmist/support_CSCS/corsika_run1.simtel.gz"
output="/scratch/snx3000/lburmist/support_CSCS/gamma_run1.r1.dl1.h5"
config="/scratch/snx3000/lburmist/support_CSCS/ctapipe_standard_sipm_config.json"

echo "siffile = $siffile"
echo "input   = $input"
echo "output  = $output"
echo "config  = $config"

#--max-events=10
#--DataWriter.write_r1_waveforms=True
#--DataWriter.transform_waveform=True	
cmd="singularity run -B /scratch/snx3000/lburmist/:/scratch/snx3000/lburmist/ $siffile ctapipe-process --overwrite --input=$input --output=$output --config=$config --write-images --write-parameters --no-write-showers --DataWriter.write_r1_waveforms=True --DataWriter.transform_waveform=True --DataWriter.write_index_tables=True"
echo "$cmd"
$cmd
