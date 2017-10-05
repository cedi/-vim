# vim-config
In this repository, i keep track of my neovim configuration.

# Install neovim

1. clone the neovim repo

```bash
git clone https://github.com/neovim/neovim.git
```

2. build neovim

2.1 install dependencies (for debian/ubuntu)

```bash
sudo apt-get install libtool libtool-bin autoconf automake cmake g++ pkg-config unzip
```

2.2 make neovim

```bash
make CMAKE_BUILD_TYPE=RelWithDebInfo
```

2.3 install neovim

```bash
sudo make install
```

# Setup
1. fork this repository in order to add your own configuration
2. Clone your repository

```bash
    git clone git@github.com:<username>/vim-config.git ~/.vim
```

3. install [vim-plug](https://github.com/junegunn/vim-plug)

```bash
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

4. start vim
5. load the plugins

```bash
    :PlugInstall
```

# Plugins
* [NERDTree](https://github.com/scrooloose/nerdtree)
  * A tree explorer plugin for vim.
* [flatlandia](https://github.com/jordwalke/flatlandia)
  * Vim colorscheme based on flatland with Airline integration.
* [tagbar](https://github.com/majutsushi/tagbar)
  * Vim plugin that displays tags in a window, ordered by scope
* [vim-airline](https://github.com/vim-airline/vim-airline)
  * lean & mean status/tabline for vim that's light as air
* [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
* [vim-cpp-enhanced-highlight](https://github.com/octol/vim-cpp-enhanced-highlight)
  * Additional Vim syntax highlighting for C++ (including C++11/14)
* [ctrlp](https://github.com/ctrlpvim/ctrlp.vim)
  * Fuzzy file, buffer, mru, tag, etc finder.
* [vim-go](https://github.com/fatih/vim-go)
  * Go development plugin for Vim

## Required
* [go](https://golang.org)
* [ctags](http://ctags.sourceforge.net)
* [cscope](http://cscope.sourceforge.net)

