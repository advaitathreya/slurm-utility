#!/bin/bash
#SBATCH -J vscode
#SBATCH -o REMOTE_SCRIPT_DIR/last_vscode.out
#SBATCH --time=24:00:00

echo "host=$HOST"
sleep 24h