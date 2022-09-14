# Install script haha

echo "Welcome to the install script! Make sure you have installed neovim before running this script.\n"

read -p "Press enter to continue: "

# install vim-plug

echo "Starting install"
echo "1. Installing vim-plug"
sleep 3s

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

echo "2. Installing plugins"
sleep 2s
mkdir ~/.config/nvim

mv stage1.lua ~/.config/nvim/init.lua

nvim +'PlugInstall' +qa

echo "3. Installing final config"
sleep 2s

mv stage2.lua ~/.config/nvim/init.lua

echo "Install finished!"
