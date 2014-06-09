It contains configurations for vim, bash, tmux and others.

Install some dependencies first and then copy or symlink dot files as required. No install script, sorry.

		$ brew install autojump ctags macvim cscope tmux
		$ go get -u github.com/nsf/gocode

It assumes [Go](http://golang.org/) is installed at `/usr/local/go/`. Remove symlink created in `.vim/bundle/golang` if you are not planning to use Go.

Vim plugins are managed using [Pathogen](http://www.vim.org/scripts/script.php?script_id=2332), so each plugin is set as git submodule. Color schemes were directly added to the repo:

* [Tomorrow](https://github.com/chriskempson/tomorrow-theme), by Chris Kempson.
* GitHub, by Anthony Carapetis.
* [Ground](https://github.com/luisbelloch/dotfiles/blob/master/.vim/colors/ground.vim) color scheme was random generated using a HUSL [tool](http://www.boronine.com/husl/syntax/).

