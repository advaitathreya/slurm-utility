# Setup to run JupyterLab on a remote compute node

1. Copy the files in the current directory to your local machine to path `LOCAL_SCRIPT_DIR`.
2. Change the following:
    - In `sjup`, `jup`, `launch_jupyterlab.sh`: `REMOTE_SCRIPT_DIR` to a directory path on your remote machine where you would like to save these files
    - In `sjup`, `jup`: `USERNAME` to your login username for your cluster
    - In `sjup`, `jup`: `HOST` to the hostname for your cluster
    (Note that this assumes you have SSH keys set up to login to your cluster)
3. (Optional) Add `alias sjup="LOCAL_SCRIPT_DIR/sjup"` to your `.zshrc` or `.bashrc` file on your local machine.
4. Copy the entire directory to your remote machine as well and save it at `REMOTE_SCRIPT_DIR`.
5. On your remote machine, ensure that you have conda activated and run `conda env create -f jup.yaml` to create a new conda environment to run Jupyter.
6. Running `sjup` from your local machine should start a new SLURM job called `jupyter` or prompt you to connect to an existing one, and then open a JupyterLab session in your default web browser window that is connected to the compute node.