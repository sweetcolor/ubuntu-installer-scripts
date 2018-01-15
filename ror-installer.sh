#!/usr/bin/env bash

sudo apt-get install -y curl
\curl -sSL https://get.rvm.io | bash -s stable --ruby
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' >> ~/.bashrc
source ~/.bashrc
sudo apt-get install -y nodejs
