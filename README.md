## Terminal Config
It's a config repository that includes:
- [nvim](https://neovim.io)
- [brew](https://brew.sh/)
- [zellij](https://zellij.dev)
- [lm-studio](https://lmstudio.ai)

### Dependencies
- brew install zsh-autocomplete zsh-autosuggestions
- brew install fd ripgrep gopls yarn delve pyright
- brew install --cask font-hack-nerd-font
- brew install htop

## Post Configuration
- Create a .zshenv file in home directory
- Add `ZDOTDIR=dotfiles-root-path/zsh` as config
- Add `ZELLIJ_CONFIG_DIR=dotfiles-root-path/zellij` as config
- Add `HTOPRC=dotfiles-root-path/htop/htoprc` as config
- Add `XDG_CONFIG_HOME=dotfiles-root-path` as config | **Note:** Don't specified `nvim` folder in the path

## Note
Default LM configuraion is `http://localhost:1234`. Local LM configurations placed in `codecompanion/config.lau`, you must change configuration if LM works different port or addresses.
