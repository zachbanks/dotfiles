. ~/.dotfiles/zsh/env
. ~/.dotfiles/zsh/config
. ~/.dotfiles/zsh/aliases

# So brew doctor doesn't complain.
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Tells Zsh to not autocorrect any Git commands (i.e. git lg).
alias git='nocorrect git'
