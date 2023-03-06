# Linux updater
This program will update all your system applications and clean unnecessary packages. This script uses only apt package manager.

## How to use
1. Open your terminal and go to the updater.sh script directory.
2. Run the code below and wait for "done" output.
> sudo sh updater.sh

If you do not want to always go to the script's directory to execute it, you can add the scripts at sbin. Go to the updater.sh script directory and use the following command:
> mv updater.sh /usr/local/sbin/

After this command you will be able to execute the script in any directory:

>sudo updater.sh