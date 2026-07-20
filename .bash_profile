# ==============================================================================
# .bash_profile - OS X Yosemite (10.10) Engine Architecture
# ==============================================================================

# 1. Force TLS 1.2+ Compliance for Old OpenSSL Enforced Binaries
export CURL_SSL_BACKEND="secure-transport"

# 2. Correct System Terminal Color Matrix (Legacy Mac BSD Engine)
export CLICOLOR=1
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# 3. Path Configuration Adjustments
# Prioritize local user binaries and MacPorts/Homebrew legacies over core Darwin paths
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"

# 4. Clean Shell Input/Output Aliases
alias ls="ls -G"
alias ll="ls -lahG"
alias grep="grep --color=auto"
alias fix-efi="sudo nvram -c && echo 'NVRAM Purged Natively.'"

# 5. Git Core Branch Prompt Integration (Compatible with legacy Git 1.9+)
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]yosemite-box\[\033[m\]:\[\033[33m\]\w\[\033[31m\]\$(parse_git_branch)\[\033[m\] \$ "

# Inform interface profile compiled successfully
echo "🚀 Yosemite Shell Environment Loaded [Bash $(echo $BASH_VERSION | cut -d'(' -f1)]"
