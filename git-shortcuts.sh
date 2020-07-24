alias gs='git status'
alias gaa='git add -A'
alias gdiff='git diff --color-words'
alias gclean='git gc --prune=now && git remote prune origin'
alias glog='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative'
alias glogshort='git log --no-merges --max-count=7 --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative'

alias gt='git tag | xargs -I@ git log --format=format:"%ai @%n" -1 @ | sort | awk '{print $4}'' #https://stackoverflow.com/a/18692754/3294217

if type git-up -t > /dev/null 2>&1; then
	alias gup='git-up'
	alias gp='git-up && git fetch --tags && git push && git push --tags'
else
	alias gup='git pull'
	alias gp='gup && git fetch --tags && git push && git push --tags && glogshort'	
fi

function gc {
	git commit -am "$1"
	gs
}

function goops {
	git commit -a --amend
	gs
}

function gwut {
	#!/bin/bash
	echo "
- - - - - - - - - - - - - -
Git Convenience Shortcuts:
- - - - - - - - - - - - - -
gwut - List all Git Convenience commands.
gs - git status
gaa - git add --all - Add all changes (including untracto staging)
gc "Message" - Commit all changes (except untracked) message
goops - Add changes to previous commit & edit comessage
gp - Pull then push - (does not use --rebase, also fetches tags, also pushes tags)
gup - Pull (not via --rebase)
gt - List Git Tags, chronologically - from https://stackoverflow.com/a/18692754/3294217 
glog - Decorated & graphed log
gdiff - A word-diff of changes
gclean - Compress & garbage collect data store

- - - - - - - - - - - - - -
Prompt Symbols:
- - - - - - - - - - - - - -
The prompt shows the current branch & among other helpful things:

*  - Uncommitted changes
+  - Staged changes
%  - Untracked files
<  - You're behind the origin
>  - You're ahead of the origin
<> - You've diverged from the origin
=  - You're up-to-date with the origin

- - - - - - - - - - - - - -
"
}
