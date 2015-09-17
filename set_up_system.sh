set -o verbose
cd ~/Desktop
git clone https://arunghosh@bitbucket.org/arunghosh/my-desktop.git

config_path=~/Scratch/Config-Files/
cp $config_path.vimrc ~/.vimrc
cp $config_path.tmux.conf ~/.tmux.conf
