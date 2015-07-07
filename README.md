# .VIMRC

VIM Configuration for Python Development.


### Installation guide

- Put `.vimrc` file to home dir.

```bash
cd
git clone https://github.com/rmk135/vimrc.git
cp vimrc/.vimrc ~/.vimrc
```

- Put color schemes to `.vim/colors`.

```bash
mkdir ~/.vim && cp -r vimrc/.vim ~/
```

- Setup Vundle.

```bash
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

- Run VIM.
```bash
vim
```

- Install plugins.

Inside VIM:

```bash
:PluginInstall
```

- Use VIM!

