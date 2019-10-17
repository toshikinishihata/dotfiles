{% raw %}
source $HOME/.zplugin/bin/zplugin.zsh
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

# complication
autoload -U compinit
compinit

# alias {{{
# ls 
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -l'
alias ls='ls -h --color=always'
# }}}

# '#' is comment on commandline.
setopt interactive_comments 
 
# history setting {{{
HISTFILE=$HOME/.zsh-history
HISTSIZE=10000
SAVEHIST=100000
setopt hist_ignore_all_dups
setopt extended_history 
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_no_store
setopt hist_save_no_dups
setopt share_history
# }}}

# zplugin: {{{
# Fish-like fast/unobtrusive autosuggestions for zsh.
# It suggests commands as you type based on history and completions when you type "->".
zplugin light zsh-users/zsh-autosuggestions

# Syntax-highlighting for Zsh
# Green is a command. Red is not exsisting command or path. Cyan is a path.
zplugin light zdharma/fast-syntax-highlighting
FAST_HIGHLIGHT_STYLES[path]='fg=cyan'

# Additional completion definitions for Zsh.
# when you type apt <tab>, you can select sub command.
zplugin load zsh-users/zsh-completions

# Dracula is a dark theme for zsh.
# https://draculatheme.com/zsh/
zplugin load dracula/zsh
# }}}
{% endraw %}
