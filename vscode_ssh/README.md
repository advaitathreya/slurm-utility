# Setup to run VSCode in a compute node

1. Copy the files in the current directory to your local machine.
2. Change the following:
    - In `svsc`: `LOCAL_SCRIPT_DIR` to the local directory path where you've saved these scripts.
    - In `svsc`, `vsc`, `launch_vscode_compute.sh`: `REMOTE_SCRIPT_DIR` to a directory path on your remote machine where you would like to save these same files
    - In `svsc`, `vscode_config_template`: `USERNAME` to your login username for your cluster
    - In `svsc`, `vscode_config_template`: `HOST` to the hostname for your cluster
    (Note that this assumes you have SSH keys set up to login to your cluster)
3. In your local VSCode installation, open settings and enter `@ext:ms-vscode-remote.remote-ssh,ms-vscode-remote.remote-ssh-edit,ms-vscode.remote-explorer config file` in the search box. Change this setting to `LOCAL_SCRIPT_DIR/vscode_config`
4. (Optional) Add `alias svsc="LOCAL_SCRIPT_DIR/svsc"` to your `.zshrc` or `.bashrc` file.
5. Copy the entire directory to you remote machine as well and save it at `REMOTE_SCRIPT_DIR`.
6. Running `svsc` from your local machine should start a new SLURM job called `vscode` or prompt you to connect to an existing one, and then open a VSCode window that is connected to the compute node.