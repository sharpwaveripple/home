sudo apt-get -y install software-properties-common
sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt-get -y update
sudo apt-get -y install neovim

# get python support
sudo apt-get -y install python-dev python-pip python3-dev python3-pip
sudo pip install --upgrade neovim

# create symlink to .vimrc
ln -s ~/.config/nvim/init.vim ~/.vimrc
