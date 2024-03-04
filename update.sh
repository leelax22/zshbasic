#!/bin/bash

admin="leelax"
CURRENT_DATE=$(date "+%Y-%m-%d-%H-%M")
mkdir new
rm -rf  zshsetting-backup*
mv zshsetting.tar "zshsetting-backup-$CURRENT_DATE.tar"

sudo cp -r /home/${admin}/.fzf ./new
sudo cp -r /home/${admin}/.oh-my-zsh ./new
sudo cp /home/${admin}/.fasd ./new
sudo cp /home/${admin}/.p10k.zsh ./new
sudo cp /home/${admin}/.vimrc ./new
sudo cp /home/${admin}/.zshrc ./new

cd /home/${admin}/script/zshbasic/new
tar cvfz zshsetting.tar .fzf .oh-my-zsh .fasd .p10k.zsh .vimrc .zshrc

mv zshsetting.tar ..

cd ..
sudo rm -rf new
