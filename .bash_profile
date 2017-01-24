# rbenv
eval "$(rbenv init -)"

# postgres
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# git aliases
alias gcm="git commit -m"
alias gco="git checkout"
alias gaa="git add -A"
alias gco="git checkout"
alias gcob="git checkout -b"

# navigation aliases
alias aa="cd ~/Documents/app-academy"
alias pt="cd ~/Documents/app-academy/progress-tracker"
alias curr="cd ~/Documents/app-academy/curriculum"
alias learn="cd ~/Documents/learnings"
alias lns="cd ~/Documents/app-academy/lecture-notes"
alias lp="cd ~/Documents/app-academy/lecture-prep"
alias ins="cd ~/Documents/app-academy/instructors"
alias fn="cd ~/Documents/app-academy/floor-notes"
alias ass="cd ~/Documents/app-academy/assessment-generator"
alias a06="cd ~/Documents/app-academy/a06-prep"
alias staffeval="cd ~/Documents/app-academy/staff_evaluation"
alias aaio="cd ~/Documents/app-academy/appacademy.io"
alias gradingtime="source ~/Documents/app-academy/assess_grader.sh"

# rails aliases
alias be="bundle exec"
alias ber="bundle exec rspec"
alias bi="bundle install"

# node aliases
alias ni="npm install"
alias ww="webpack -w"

# typo aliases
alias claire="clear"
alias sl="ls"

# tmux aliases
alias ta="tmux attach -t"
alias tn="tmux new -s"
alias tk="tmux kill-session -t"
alias rp="tmux resize-pane"
alias tls="tmux ls"


# git autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Terminal Colors
RED='\[\e[0;31m\]'
AQUA='\[\033[36m\]'
PINK='\[\033[35m\]'
WHITE='\[\e[37m\]'
RESET='\[\e[0m\]'
ORANGE='\[\033[00m\]'

# preferred terminal output:
export PS1="$AQUA\w$PINK\$(parse_git_branch)$ORANGE\$$WHITE "
export CLICOLOR=2

# lecture terminal output:
# export PS1="$AQUA $ $ORANGE"
