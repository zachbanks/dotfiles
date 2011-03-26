
# ================
# = Custom Paths =
# ================

# Add bin directory in home to path.
export PATH=$PATH:/users/zach/bin/

# Make Git (and possibly other programs) use textmate as default editor.
export EDITOR="/usr/bin/vim"

# ==================
# = Custom Aliases =
# ==================

# CD to home directory.
alias home="cd ~/"
# Clear screen.
alias c='clear'
# CD to Desktop.
alias dtop='cd ~/Desktop/'
# Open current dir in Finder.
alias oif='open -a Finder .'
# Open flash player.
alias ofp='open ~/Documents/Files/flashplayer_10.1.sparseimage'
# Print date.
alias date="date '+%A %B %d %G - %H:%M:%S'"
# CD to Test dir.
alias testd="cd ~/Test/"
# CD to Scripts dir.
alias scriptsd="cd ~/Scripts/"
# CD to home dir.  alias home="cd $HOME"
# Empty trash.
alias et="rm -rf ~/.Trash/*"
# Open bash profile.
alias obp="mate ~/.bash_profile"
# Restart computer.
alias restart="sudo shutdown -r now"
# Reload bash profile.
alias reloadbp="source ~/.bash_profile"
# Change directory to ~/zachbanks.
alias zachbanks="cd /users/zachbanks/"
# Alias to ~/Documents/
alias docs="cd ~/Documents/"

# Cd to MPG.
alias mpg="cd ~/Scripts/Working/MPG/"

# Relative jumping aliases.
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."

# Copy pwd to pasteboard.
alias cpwd="ruby -e 'puts %[\"#{Dir.pwd}\"]' | pbcopy"
alias cdpwd="ruby -e 'puts %[cd \"#{Dir.pwd}\"; clear;]' | pbcopy"

# RSpec.
alias rspec="rspec --color --format doc"

# Last time over.
alias lto='ruby ~/Test/Useful/days_since_date.rb'

# History Typo Aliases.
function ~ { echo 'HELLO'; }
function @ { echo 'WORLD'; }

# Aliases for vim.
alias vi="vim"

# Rails aliases.
alias olog="tail -f ./log/development.log"

# Git aliases.
# Starts git.
alias g="git"
# Open ~/.gitconfig.
alias ogf="mate ~/.gitconfig"
# Pushes to GitHub and Heroku.
alias gpush="git push && git push heroku"

# This would work to but I like the function better.
# alias sudo-shutdown='ruby ~/Test/use_reboot_message.rb'

# The function runs when the sudo command is called.
# function sudo { 
# 	if [ "$1" = "shutdown" ]; then 
# 		ruby ~/Test/use_reboot_message.rb
# 	fi
# }

# =========
# = Other =
# =========

# Change Terminal Prompt.
# export PS1="\u-[\W]$ " # zach-[Desktop]$
export PS1="[\W]$ " # [Desktop]$


# RVM.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# # Git tab completion
# source ~/git-completion.bash

# # Show branch in status line
# PS1='[\W$(__git_ps1 " (%s)")]\$ '
# export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'



# The following is a script created by the creator of rvm to update all of your Textmate bundles.
function update_textmate_bundles {
	#!/usr/bin/env bash

	old_dir=$(pwd)
	
	mkdir -p /Library/Application\ Support/TextMate/

	sudo chown -R $(whoami) /Library/Application\ Support/TextMate

	cd /Library/Application\ Support/TextMate/

	if [[ -d Bundles/.svn ]] ; then
	  cd Bundles && svn up
	else
	  if [[ -d Bundles ]] ; then
	    mv Bundles Bundles.old
	  fi
	  svn co http://svn.textmate.org/trunk/Bundles
	fi
	
	cd $old_dir
	
}

