# Make Git (and possibly other programs) use textmate as default editor.
export EDITOR="/usr/bin/vim"

# ==================
# = Custom Aliases =
# ==================

# Use aliases from this file.
. ~/.dotfiles/zsh/aliases


# RVM.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

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

