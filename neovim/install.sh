set -e
set -x

# Install Packer
# https://github.com/wbthomason/packer.nvim
PACKER_ROOT="${HOME}/.local/share/nvim/site/pack/packer/start/packer.nvim"
if [ -d "${PACKER_ROOT}" ]
  then
    cd "${PACKER_ROOT}"
    git pull
    cd -
  else
    git clone --depth 1 https://github.com/wbthomason/packer.nvim "${PACKER_ROOT}"
fi

mkdir -p $HOME/.config
ln -sf $ZSH/neovim/nvim $HOME/.config/nvim
