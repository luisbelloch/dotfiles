It contains configurations for vim, bash, tmux and others.

Install some dependencies first and then copy or symlink dot files as required. No install script, sorry.

```
$ brew install ctags direnv macvim cscope tmux
```

It assumes [Go](http://golang.org/) is installed.

Vim plugins are managed using [Vim package manager](http://vimhelp.appspot.com/repeat.txt.html#packages), and each plugin is set as git submodule. Color schemes were directly added to the repo:

* [Tomorrow](https://github.com/chriskempson/tomorrow-theme), by Chris Kempson.
* GitHub, by Anthony Carapetis.
* [Ground](https://github.com/luisbelloch/dotfiles/blob/master/.vim/colors/ground.vim) color scheme was random generated using a HUSL [tool](http://www.boronine.com/husl/syntax/), with minor modifications.

