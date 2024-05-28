echo "getting nvim config..."
# pull nvim config
if [ -d "~/.config" ]; then
    echo "~/.config exists"
else
    mkdir ~/.config
fi

git clone https://github.com/hansenz42/nvim.git ~/.config/nvim

# install neovim (0.9.5)
wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim.appimage
chmod 755 nvim.appimage

ehco "installing nvim to ~.local/bin..."

# check nvim config path
if [ -d "~/.local/bin" ]; then
    echo "~/.local/bin exists"
else
    mkdir ~/.local/bin
fi

mv nvim.appimage ~/.local/bin

echo "run 'export PATH=$PATH:~/.local/bin' to add nvim to PATH"

echo "done, run 'nvim' to install plugins!"
