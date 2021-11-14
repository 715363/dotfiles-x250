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
cp -r  $HOME/.config/{alacritty,gtk*,i3,kitty,neofetch,oh-my-zsh,picom,polybar,rofi} $HOME/dotfiles/

# copy other dot files
cp -r $HOME/{.zshrc,.xinitrc,.moc} $HOME/dotfiles



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
