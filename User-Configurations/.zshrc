# If you come from bash you might have to change your $PATH.
    # export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/storm/.oh-my-zsh
. /usr/share/autojump/autojump.sh

# Set name of the theme to load. Optionally, if you set this to "random"
    # it'll load a random theme each time that oh-my-zsh is loaded.
    # See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
    ZSH_THEME="random"
    # ZSH_THEME="wedisagree"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
    # sensitive completion must be off. _ and - will be interchangeable.
    # HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
    # COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
    # under VCS as dirty. This makes repository status check for large repositories
        # much, much faster.
        # DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
    # stamp shown in the history command output.
    # The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
    # HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
    # if [[ -n $SSH_CONNECTION ]]; then
        #   export EDITOR='vim'
        # else
            #   export EDITOR='mvim'
            # fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
# Example aliases
alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias v="vim"
alias ains="sudo apt install"
alias pins="pip3 install --user -i https://pypi.tuna.tsinghua.edu.cn/simple"
alias conins="conda install -c conda-forge"
alias arm="sudo apt remove"
alias prm="sudo apt purge"
alias puni="pip3 uninstall"
alias update="sudo apt update"
alias upgrade="sudo apt upgrade"
alias gv="gvim"
alias ccopy="clipcopy"
alias snow="shutdown -h now"
alias vrc="vim ~/myspacevim.vim"
alias py="python3.6"
alias ado="python3.6 ~/bin/ado.py"
alias pln="python3.6 ~/bin/pln.py"
alias da="python3.6 ~/bin/da.py"
alias lines="python3.6 ~/bin/lines.py"
alias rou="rm *.out"

alias -s md="typora"
alias -s cpp="vim"
alias -s hpp="vim"
alias -s h="vim"
alias -s c="vim"
alias -s txt="vim"
alias -s py="python3.6"


# *** for ncl
export NCARG_ROOT=/opt/ncl_ncarg-6.4.0-Debian8.6_64bit_gnu492
export PATH=$NCARG_ROOT/bin:$PATH

alias ncq="ncl -Q"


# $$$ for git
alias gs="git status"
alias ga.="git add ."
alias gcm="git commit -m"
alias gpush="git push origin master"
alias gpull="git pull origin master"

# 特定目录
conf='/home/storm/Git/config-bkup'

export HDF=/usr/local/hdf5
export PATH=$HDF/bin:$PATH
export HDF_LIB=$HDF/lib
export HDF_INC=$HDF/include

export ZLIB=/usr/local/zlib
export ZLIB_LIB=$ZLIB/lib
export ZLIB_INC=$ZLIB/include

export MPI=/usr/local/openmpi
export PATH=$MPI/bin:$PATH
export MPI_LIB=$MPI/lib
export MPI_INC=$MPI/include

# export http_proxy="http://127.0.0.1:12333"
# xmodmap ~/.xmodmap
