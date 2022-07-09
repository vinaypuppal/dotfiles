source $HOME/antigen.zsh # Load Antigen

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd/mm/yyyy"

# Anitigen
antigen use oh-my-zsh

# Terminal stuff
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions

# Node stuff
antigen bundle node
antigen bundle npm

# Do OS dependant stuff
case `uname` in
  Darwin)
    # Commands for OS X go here
    antigen bundle osx
  ;;
  Linux)
    # Commands for Linux go here
  ;;
esac

# Set the theme
antigen theme robbyrussell

# And lastly, apply the Antigen stuff
antigen apply

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Shortcuts
alias ll="ls -al";
alias sz="source ~/.zshrc";

# Git
alias gi="git init";
alias gl="git log";
alias gc="git commit -m $1";
alias gs="git status";
alias gp="git push";
alias ga="git add .";
alias stash="git stash -u"

# Yarn
alias y="yarn";
alias yd="yarn dev";
alias yds="yarn dev-server";
alias ys="yarn start";
alias yb="yarn build";
alias yi="npm init -y";
alias ya="yarn add $1";

# Load dotfiles binaries
export PATH="$DOTFILES/bin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# YARN
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

#### FIG ENV VARIABLES ####
[[ -s ~/.fig/fig.sh ]] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####

