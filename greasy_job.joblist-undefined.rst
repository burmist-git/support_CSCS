# 
# Greasy restart file generated at 2024-11-15 13:20:36
# Original task file: /scratch/snx3000/lburmist/support_CSCS/greasy_job.joblist
# Log file: /scratch/snx3000/lburmist/support_CSCS/greasy-58305931.log
# 

# Warning: Task 1 failed
singularity run -B /scratch/snx3000/lburmist/:/scratch/snx3000/lburmist/ /scratch/snx3000/lburmist/singularity/21.10.2024/ctapipe.sif ctapipe-process --overwrite --input=/scratch/snx3000/lburmist/support_CSCS/corsika_run1.simtel.gz --output=/scratch/snx3000/lburmist/support_CSCS/gamma_run1.r1.dl1.h5 --config=/scratch/snx3000/lburmist/support_CSCS/ctapipe_standard_sipm_config.json --write-images --write-parameters --no-write-showers --DataWriter.write_r1_waveforms=True --DataWriter.transform_waveform=True --DataWriter.write_index_tables=True

# End of restart file
