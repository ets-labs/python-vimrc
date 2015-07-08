# .VIMRC


VIM Configuration for Python Development.

### Requirements

- VIM 7.4
- git

### Installation guide

```bash
# Clone repo:
git clone https://github.com/rmk135/vimrc.git ~/vimrc

# Copy .vimrc file to home dir
cp ~/vimrc/.vimrc ~/.vimrc

# Copy color schemes to .vim home dir
mkdir ~/.vim && cp -r ~/vimrc/.vim ~/

# Setup Vundle (Vim Plugin Manager)
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Run VIM (ignore errors)
vim

# Install VIM Plugins (inside VIM)
:PluginInstall

# Rehash terminal
hash -r
```

Keep calm and use VIM!

