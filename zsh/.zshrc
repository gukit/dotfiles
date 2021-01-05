#!/bin/zsh

###############################
# EXPORT ENVIRONMENT VARIABLE #
###############################

# export TERM='rxvt-256color'
export DOTFILES="$HOME/.dotfiles"
export ANTIBODY="$DOTFILES/antibody"
export ANTIBODY_HOME="$HOME/.config/antibody"
export NVM_DIR="$HOME/.config/nvm"
# [ -f $DOTFILES/install_config ] && source $DOTFILES/install_config

# XDG

# export XDG_CONFIG_HOME=$HOME/.config
# export XDG_DATA_HOME=$XDG_CONFIG_HOME/local/share
# export XDG_CACHE_HOME=$XDG_CONFIG_HOME/cache

# editor

export EDITOR=code

# zsh

export ZDOTDIR="$HOME/.config/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

# other software

# export COMPOSER_HOME="$XDG_CONFIG_HOME/.composer"

# NPM

export NPM_CONFIG_CACHE="$HOME/.config/npm"
# export $NPM_CONFIG_USERCONFIG
# export NPM_PATH="$XDG_CONFIG_HOME/node_modules"
# export NPM_BIN="$XDG_CONFIG_HOME/node_modules/bin"
# export NPM_CONFIG_PREFIX="$XDG_CONFIG_HOME/node_modules"

# PATH

# COMPOSER
# export PATH="$COMPOSER_HOME/vendor/bin:$PATH"
# NPM
# export PATH="$NPM_BIN:$PATH"

# Load Composer tools
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Load Node global installed binaries
export PATH="$HOME/.node/bin:$PATH"

# Use project specific binaries before global ones
export PATH="node_modules/.bin:vendor/bin:$PATH"

# Export from brews?
export PATH="/usr/local/sbin:$PATH"

# Make sure coreutils are loaded before system commands
# I've disabled this for now because I only use "ls" which is
# referenced in my aliases.zsh file directly.
#export PATH="$(brew --prefix coreutils)/libexec/gnu

# +------------+
# | NAVIGATION |
# +------------+

setopt AUTO_CD              # Go to folder path without using cd.

setopt AUTO_PUSHD           # Push the old directory onto the stack on cd.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.

setopt CORRECT              # Spelling correction
setopt CDABLE_VARS          # Change directory to a path stored in a variable.
setopt EXTENDED_GLOB        # Use extended globbing syntax.

# +---------+
# | HISTORY |
# +---------+

setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.

# +---------+
# | ALIASES |
# +---------+

source $DOTFILES/aliases/aliases.zsh

# +--------+
# | PROMPT |
# +--------+
source $HOME/.zsh_plugins.sh
