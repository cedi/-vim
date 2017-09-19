# vim-config
In this repository, i keep track of my vim configuration.

# Install vim
there are two ways to do this.
1. Install vim trough your packet manager, for eg.

```
    sudo apt-get install vim 
```

2. Or you compile vim by yourself to enable many more features

```
    git clone git@github.com:vim/vim.git $HOME/src/vim
	cd $HOME/src/vim

	# configure vim, requires ruby, python2.7, python3, perl, lua and x11 installed
    ./configure \
        --with-features=huge \
        --enable-rubyinterp=yes \
        --enable-pythoninterp=yes \
        --enable-python3interp=yes \
        --enable-perlinterp=yes \
        --enable-luainterp=yes \
        --enable-gui=gtk2 \
        --enable-cscope \
        --enable-terminal \
        --enable-multibyte \
        --prefix=/usr/local

	# build vim
    make

    # install vim
    sudo make install

    # check installation
    vim --version
```

# Setup
1. fork this repository in order to add your own configuration
2. Clone your repository

```
    git clone git@github.com:<username>/vim-config.git ~/.vim
```

3. install [vim-plug](https://github.com/junegunn/vim-plug)

```
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

4. start vim
5. load the plugins

```
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

