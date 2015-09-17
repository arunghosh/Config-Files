set -o verbose
echo Sync Desktop Files
cd ~/Desktop
git add .
git ci -m"auto sync"
git push


echo "Sync Config Files"
config_path=~/Scratch/Config-Files/
mv ~/.vimrc $config_path 
mv ~/.tmux.conf $config_path
cd $config_path
git add -A
git ci -m"auto sync"
git push
