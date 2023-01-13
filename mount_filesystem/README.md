# Steps to mount a remote filesystem on your local machine

On your local machine, install macFUSE and SSHFS from https://osxfuse.github.io/. Follow the installation instructions and update your system permissions as necessary.

Run the following snippet everytime you want to mount the remote filesystem locally (it will disconnect when your computer goes to sleep so you'll need to run this regularly. I'd recommended putting it in a script and adding an alias to make it easy to remount).

```
cd ~
mkdir -p REMOTE_FILE_MOUNT

diskutil umount force REMOTE_FILE_MOUNT
sshfs -o allow_other,defer_permissions USER@HOST:REMOTE_HOME_PATH REMOTE_FILE_MOUNT -ovolname=REMOTE_FILE_MOUNT
```
