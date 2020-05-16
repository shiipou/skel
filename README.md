# skel
My bash default User directory for new linux os install

# Installation

## Requirements

You need to install zsh, neovim, and spacevim.

```sh
sudo apt install -y neovim zsh build-essential
curl -sLf https://spacevim.org/install.sh | bash -s -- --install neovim
```

## Get repository content into user dir

```sh
git clone https://github.com/shiipou/skel.git
mv skel/{*,.*} ~/.
```

## Launch vim

To use the vim with this customization you must run it with `nvim` and not just with `vim`. I've split the two command because I want to keep `vim` empty because it so better to launch for quick edit.

The first launch will download all plugins, you can quit `nvim` and relaunch it to have it work !
```sh
:qa!
```
