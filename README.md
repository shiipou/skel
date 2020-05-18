# skel
My bash default User directory for new linux os install

# Installation

## Requirements

You need to install zsh, oh-my-zsh, neovim, and spacevim.

```sh
sudo apt install -y neovim zsh build-essential
curl -sLf https://spacevim.org/install.sh | bash -s -- --install neovim
curl -sSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
```

## Get repository content into user dir

```sh
git clone https://github.com/shiipou/skel.git
mv skel/{*,.*} ~/
```

## Launch vim

To use the vim with this customization you must run it with `nvim` and not just with `vim`. I've split the two command because I want to keep `vim` empty because it so better to launch for quick edit.

The first launch will download all plugins, you can quit `nvim` and relaunch it to have it work !
```sh
:qa!
```
