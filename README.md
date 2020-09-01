Update 
==
```
sudo apt-get update
```

Install ZSH & Oh-My-ZSH
==
```
sudo apt-get install zsh
```
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
Change default shell to zsh: https://evalcode.com/zsh-default-wsl-windows-10/ 
```
chsh -s $(which zsh)
```

Install TMUX
==
```
sudo apt-get install tmux
```

Install Tmux plugin manager
==
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Install Powerline
==
```
sudo apt-get install python-pip
sudo pip install powerline-status
```

Link .zhrc and .tmux.conf to home directory
==
```
cd ~
ln -nfs ~/dev/evansagge/dotfiles/.zshrc
ln -nfs ~/dev/evansagge/dotfiles/.tmux.conf
```

Installing & Configuring Git & Github
==
```
git config --global color.ui true
git config --global user.name "YOUR NAME"
git config --global user.email "YOUR@EMAIL.com"
ssh-keygen -t rsa -b 4096 -C "YOUR@EMAIL.com"
```
Add the contents of ~/.ssh/id_rsa.pub to Github https://github.com/settings/keys
Verify github access
```
ssh -T git@github.com
```

Install NeoVIM
==
```
sudo apt-get install neovim
```
Alias neovim 
```
echo "alias vim=nvim" >> ~/.zshrc
source ~/.zshrc
```
Setup neovim
```
mkdir -p ~/.config/nvim
vim ~/.config/nvim/init.vim
```
Setup nvim to read from .vimrc
```
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
```
Clone dotfiles to ~/dev/dotfiles
```
git clone git@github.com:evansagge/dotfiles.git
```
Symlink .vimrc and .vimrc.d
```
cd ~
ln -nfs ~/dev/dotfiles/vimrc .vimrc
ln -nfs ~/dev/dotfiles/vimrc.d .vimrc.d
```
Install Vundle https://github.com/VundleVim/Vundle.vim
```
cd ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
Open vim/nvim and install vim plugins
```
vim
:PluginInstall
```

Install scm_breeze
==
https://github.com/scmbreeze/scm_breeze

Install nerd fonts
==
https://github.com/ryanoasis/nerd-fonts
