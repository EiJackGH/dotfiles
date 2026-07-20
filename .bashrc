# ==============================================================================
# .bashrc - Interactive Shell Core (OS X Yosemite 10.10)
# ==============================================================================

# 1. Historical Log Threshold Rules
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=10000
export HISTFILESIZE=20000
shopt -s histappend # Append logs cleanly, don't overwrite the matrix buffer

# 2. Advanced Terminal Navigation Aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias md="mkdir -p"
alias rd="rmdir"

# 3. Development Tools Shortcuts (Safe for Yosemite frameworks)
alias g="git"
alias gs="git status"
alias gd="git diff"
alias gl="git log --oneline --graph --decorate"
alias fix-perms="sudo diskutil repairPermissions /"

# 4. Check for and sanitize modern Git configurations on old systems
if [ -f /usr/local/bin/git ]; then
    export GIT_EXEC_PATH="/usr/local/libexec/git-core"
fi
