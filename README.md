It contains configurations for vim, bash, tmux and others.

Install some dependencies first and then copy or symlink dot files as required via `homebrew`:

```
$ <brew.txt xargs brew install
```

There's a `init.sh` script included you could use to add some symlinks to your home folder.

Vim plugins are managed using [Vim package manager](http://vimhelp.appspot.com/repeat.txt.html#packages), and each plugin is set as git submodule. Color schemes were directly added to the repo:

* [Tomorrow](https://github.com/chriskempson/tomorrow-theme), by Chris Kempson.
* GitHub, by Anthony Carapetis.
* [Ground](https://github.com/luisbelloch/dotfiles/blob/master/.vim/colors/ground.vim) color scheme was random generated using a HUSL [tool](http://www.boronine.com/husl/syntax/), with minor modifications.

