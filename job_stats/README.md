# Scripts to get stats on SLURM jobs

`finishstat <JOBID>` prints efficiency and other useful statistics for a finished job. For array jobs if you provide the job ID it will print a table for all the jobs in the array.

`queuestat <REFRESH RATE>` will start a loop which prints a formatted output of `squeue` followed by the output of `LLfree` (available resources on MIT LLSC). I'd recommend creating an alias on your local machine to automatically start monitoring your SLURM jobs, like so:
``` ssh -t USER@HOST "bash -i -c REMOTE_SCRIPT_DIR/queuestat <REFRESH RATE>" ```