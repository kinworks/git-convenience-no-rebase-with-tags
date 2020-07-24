# About this fork

This is Jake Archibald's (@jaffathecake) Git Convenience, with one simple change: n00bs, and others, might not want Git Pull to use --rebase (I tried reading about it, really I did - and I almost get it - but for now, I want the lazytimes without wrapping my head around using --rebase day-to-day </excuses>).

We've since added fetching / pushing tags by default in `gp`, and also added a shorter version of `glog` at the end of the `gp` run. 

I've also added the 'gwut' command, to print a list of the Git Convenience commands and symbols used at prompt - this may not work on everything as it relies on bash (I'm new...)

# Convenient bits & bobs for Git

Git out-of-the-box isn't your best friend, git-convenience pulls together a few tools that make it that little bit more friendly. You get:

* Tab auto-completion
* A more useful command prompt
* Shortcuts to common operations

Works on OSX, Linux & Windows git-bash.

## Gimmie gimmie gimmie

Trial it in your current terminal session:

```
eval "$(curl -L https://raw.githubusercontent.com/kinworks/git-convenience-no-rebase-with-tags/master/setup.sh) trial"
```

If it works for you, have it in all your terminals:

```
eval "$(curl -L https://raw.githubusercontent.com/kinworks/git-convenience-no-rebase-with-tags/master/setup.sh)"
```

## Shortcuts

* `gwut` - List all Git Convenience commands and prompt meanings.
* `gs` - git status
* `gaa` - git add --all - Add all changes (including untracto staging</dd>
* `gc "Message"` - Commit all changes (except untracked) message</dd>
* `goops` - Add changes to previous commit &amp; edit comessage</dd>
* `gp` - Pull then push, runs `glogshort` after - does not use --rebase and fetches / pushes tags too (read 'About this fork');
* `gup` - Pull (not via --rebase - see 'About this fork')
* `gt` - List Git Tags, chronologically - from https://stackoverflow.com/a/18692754/3294217
* `glog` - Decorated &amp; graphed log
* `glogshort` - `glog` but only the last 7 commits, excluding merges.
* `gdiff` - A word-diff of changes
* `gclean` - Compress &amp; garbage collect data store


If you've installed the wonderful [git-up](https://github.com/aanand/git-up) (which you should), it'll be used instead of `git pull`.

## Prompt

![Prompt screenshot](https://raw.github.com/benseven/git-convenience-no-rebase/master/screenshot.png)

The prompt shows the current branch & among other helpful things:


* `*` - Uncommitted changes
* `+` - Staged changes
* `%` - Untracked files
* `<` - You're behind the origin
* `>` - You're ahead of the origin
* `<>` - You've diverged from the origin
* `=` - You're up-to-date with the origin

## Other tools & props

* [Jake's Original Git Convenience](https://github.com/jakearchibald/git-convenience) - The original source, with rebasey goodness.
* [git-up](https://github.com/aanand/git-up) - A brilliant tool for syncing branches
* [git completion](https://github.com/git/git/tree/master/contrib/completion) - The scripts used for the prompt & tab completion
