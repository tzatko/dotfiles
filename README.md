# Juraj’s dotfiles

Forked from [Mathias](https://github.com/mathiasbynens/dotfiles). 

# Shameless hiring insert

Are you a command-line ninja and live in or near Bratislava Slovakia?

My company [DIGMIA](http://www.digmia.com/) is [hiring](http://www.digmia.com/pages/sk/o-nas/zamestnanie.html)
and we want smart and cool people in our team. Linux ninjas and internal developer wanted!

Our [sister company Essential Data](http://essential-data.sk) is
[hiring Ruby and Java developers and devops](http://www.essential-data.sk/pracujte-pre-nas/). And if you really
like hacking (i.e. breaking into systems), check out [open positions in Citadelo](https://www.citadelo.sk/o-citadelo/kariera/),
we are hiring in Bratislava and in Prague.

## Installation

**Warning:** If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need. Don’t blindly use my settings unless you know what that entails. Use at your own risk!

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/dotfiles`) The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/jooray/dotfiles.git && cd dotfiles && source bootstrap.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
source bootstrap.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
set -- -f; source bootstrap.sh
```

### Git-free install

To install these dotfiles without Git:

```bash
cd; curl -#L https://github.com/jooray/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,bootstrap.sh,LICENSE-MIT.txt}
```

To update later on, just run that command again.

### Specify the `$PATH`

If `~/.path` exists, it will be sourced along with the other files, before any feature testing takes place.

Here’s an example `~/.path` file that adds `/usr/local/bin` to the `$PATH`:

```bash
export PATH="/usr/local/bin:$PATH"
```

### Fast setup

If you don't want to read about Sensible OS X defaults, Janus install,
and homebrew setup, you can get fast results with 

```bash
./init/init.sh
```

### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./init/osx
```

### Install Homebrew formulae

When setting up a new Mac, you may want to install some common [Homebrew](http://brew.sh/) formulae (after installing Homebrew, of course). I also use ```brew cask``` for binary applications, because it's easier to autoupdate everything using ```update``` alias using homebrew then letting each and every app notify my about updates.

```bash
./init/brew.sh && ./init/brew-cask.sh
```

### Install Janus for vim

Janus is a dotfiles framework for vim. The integration is there by default and you can use it with:

```bash
./init/install-janus.sh
```

If you don't install Janus, dotfiles will try to fallback to some sensible vim defaults.


### Changing shell on Mac OS X

After running `brew.sh`, you will probably get errors related to history. You need to add `/usr/local/bin/bash` to `/etc/shells` and run

```bash
chsh -s /usr/local/bin/bash
```

### Add custom commands without creating a new fork

If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.

My `~/.extra` looks something like this:

```bash
# Git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME="Juraj Bednar"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="jooray@mailinator.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

You could also use `~/.extra` to override settings, functions and aliases from my dotfiles repository. It’s probably better to [fork this repository](https://github.com/jooray/dotfiles/fork) instead, though.

You can also use `~/.gitconfig.local` and `~/.vimrc.local`


## Feedback

Suggestions/improvements
[welcome](https://github.com/jooray/dotfiles/issues)!

## Improvements and changes from Matthias's dotfiles

* Customization for my needs (e.g. not using Sublime Text, going easy on some osx defaults)
* Should work on Linux as well
* Vagrant commands
* Bash prompt - change the color of '$' in the prompt to red if last process exited with error
* Customization of screen
* Don't force en_US locale, this is per user (I set mine in ~/.extra)
* cp_p command to copy with progress (uses rsync)
* OS X hot corners adjusted my needs
* Don't install JavaScript based stuff, install gpg and apg
* Sane defaults on Linux, don't alias functions that don't work. 
* Change ip alias to myip (ip is a system command on Linux). Alias ip to myip on Mac OS X. Support colorification for ip
* Add support for directory jumper (z). Install it either using brew (.brew.sh) or to ~/.z.sh
* Better support for [grc](https://github.com/garabik/grc) - on OS X. This adds colour to your boring unix commands :). Just install it with brew (included in .brew.sh)
* Make "update" work on OS X, Linux (yum-based and apt-get-based distributions)
* Support for [thefuck](https://github.com/nvbn/thefuck), which allows you to fix some common command-line mistakes. "fuck" command by default asks you to confirm the command it wants to execute.

## Authors

| [![twitter/jurbed](https://www.gravatar.com/avatar/59cd93d4261a85b1b2a6c210b0b4a4ce?s=70)](http://twitter.com/jurbed "Follow @jurbed on Twitter") |
|---|
| [Juraj Bednar](https://juraj.bednar.sk/) |

## Thanks to…

* [Mathias Bynens](https://mathiasbynens.be/) and his [dotfiles repository](https://github.com/mathiasbynens/dotfiles) - this is our upstream project
* [dotphiles](https://github.com/dotphiles/dotphiles) for inspiration and some configuration scripts
* [janus](https://github.com/carlhuda/janus) - dotfiles repository for vim that we use
* @ptb and [his _OS X Lion Setup_ repository](https://github.com/ptb/Mac-OS-X-Lion-Setup)
* [Ben Alman](http://benalman.com/) and his [dotfiles repository](https://github.com/cowboy/dotfiles)
* [Chris Gerke](http://www.randomsquared.com/) and his [tutorial on creating an OS X SOE master image](http://chris-gerke.blogspot.com/2012/04/mac-osx-soe-master-image-day-7.html) + [_Insta_ repository](https://github.com/cgerke/Insta)
* [Cătălin Mariș](https://github.com/alrra) and his [dotfiles repository](https://github.com/alrra/dotfiles)
* [Gianni Chiappetta](http://gf3.ca/) for sharing his [amazing collection of dotfiles](https://github.com/gf3/dotfiles)
* [Jan Moesen](http://jan.moesen.nu/) and his [ancient `.bash_profile`](https://gist.github.com/1156154) + [shiny _tilde_ repository](https://github.com/janmoesen/tilde)
* [Lauri ‘Lri’ Ranta](http://lri.me/) for sharing [loads of hidden preferences](http://osxnotes.net/defaults.html)
* [Matijs Brinkhuis](http://hotfusion.nl/) and his [dotfiles repository](https://github.com/matijs/dotfiles)
* [Nicolas Gallagher](http://nicolasgallagher.com/) and his [dotfiles repository](https://github.com/necolas/dotfiles)
* [Sindre Sorhus](http://sindresorhus.com/)
* [Tom Ryder](http://blog.sanctum.geek.nz/) and his [dotfiles repository](https://github.com/tejr/dotfiles)
* [Kevin Suttle](http://kevinsuttle.com/) and his [dotfiles repository](https://github.com/kevinSuttle/dotfiles) and [OSXDefaults project](https://github.com/kevinSuttle/OSXDefaults), which aims to provide better documentation for [`~/.osx`](https://mths.be/osx)
* [Haralan Dobrev](http://hkdobrev.com/)
* anyone who [contributed a patch](https://github.com/jooray/dotfiles/contributors) or [made a helpful suggestion](https://github.com/jooray/dotfiles/issues) - either here or to the original dotfiles


