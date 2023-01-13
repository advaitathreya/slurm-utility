#!/bin/bash
#SBATCH -J jupyter
#SBATCH -o REMOTE_SCRIPT_DIR/last_jupyter.out
#SBATCH --time=24:00:00

eval "$(conda shell.bash hook)"
conda activate jup

export XDG_RUNTIME_DIR=""
export JUPYTER_PORT="12440"
jupyter lab --no-browser --notebook-dir=$HOME
