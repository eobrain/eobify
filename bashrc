# -*- mode:shell-script -*-

# See README.md for description

# (1) Prompt format
BAR='________________________________________________________________________________\n'
RED="\[\033[0;31m\]"
LIGHT_CYAN="\[\033[0;36m\]"
CYAN='\[\033[1;36m\]'
NO_COLOUR='\[\033[0m\]'
LIGHT_GRAY='\[\033[0;37m\]'

# (2) Git branch in prompt
# From https://gist.github.com/henrik/31631
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo \*
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

# (3) Short path in prompt
function short_path {
    python -c "print '/'.join('$PWD'.split('/')[-2:])"
}

# (4) Timer in prompt.
function timer_start {
  timer=${timer:-$SECONDS}
}
function timer_stop {
  timer_show=$(($SECONDS - $timer))
  unset timer
}
trap 'timer_start' DEBUG
export PROMPT_COMMAND='history -a; timer_stop'

# Put the above together in the prompt.
PS1=$LIGHT_CYAN$BAR'${timer_show}s $(parse_git_branch)'$NO_COLOUR\ $CYAN'$(short_path)'$NO_COLOUR$LIGHT_CYAN/\ \$$NO_COLOUR\ 

# (5) Shell History
HISTSIZE=100000
HISTFILESIZE=200000
shopt -s histappend
