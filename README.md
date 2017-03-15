# Dotfiles

A collection of dotfiles to help setting up development environment. Pros and cons of dotfiles could be found [here](https://dotfiles.github.io/)

# Usage

## Installation

Follow this step-by-step installation.

### XCode

Install XCode through the Mac App Store.

Run:

`xcode-select --install`

### Homebrew

Next, install [Homebrew](http://mxcl.github.com/homebrew/) using the following
command.

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

After installing Homebrew, ensure permissions are correct by running the
following.

```
sudo chown -R "$USER" /usr/local
brew update

brew bundle --file=Brewfile
```

### Environment, ZSH, Sublime configuration

Clone this dotfiles Git repository to your $HOME directory
```
mkdir $HOME/dotfiles
git clone git://github.com/logius/dotfiles.git $HOME/dotfiles
```

Initialize and/or update the submodules
```
cd $HOME/dotfiles && git submodule init && \
  git submodule update --recursive
```

Hook everything up by running the `install` script.
```
./install
```

### OSX defaults

```
chmod +x .osx
./.osx
```

### ZSH

Set it as the default shell:

```
chsh -s /bin/zsh
```

### Chruby and ruby-install

```bash
ruby-install ruby [VERSION] ~/.rubies/ruby-[VERSION]
```

### Misc. Utilities

**CoffeeScript language.**
```
npm install coffee-script --global
npm install coffeelint --global
```
