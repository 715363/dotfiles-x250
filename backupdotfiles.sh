#!/bin/bash


# check to see is git command line installed in this machine
IS_GIT_AVAILABLE="$(git --version)"
if [[ $IS_GIT_AVAILABLE == *"version"* ]]; then
  echo "Git is Available"
else
  echo "Git is not installed"
  exit 1
fi


# copy Vs-Code files
cp -r  /home/zmtg/.config/{gtk*,i3,kitty,neofetch,picom,polybar,rofi,oh-my-zsh,conky,hypr,hyprland,waybar} /home/zmtg/dotfiles-x250/

# copy other dot files
cp -r /home/zmtg/{.zshrc,.moc} /home/zmtg/dotfiles-x250



# Check git status
gs="$(git status | grep -i "modified")"
# echo "${gs}"

# If there is a new change
if [[ $gs == *"modified"* ]]; then
  echo "push"
fi


# push to Github
git add .;
git commit -m "Modified `date +'%Y-%m-%d %H:%M:%S'`";
git push origin main
