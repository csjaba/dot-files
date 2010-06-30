alias gst='git status'
alias gl='git pull --rebase'
alias gp='git push'
alias gpa='git push-all' # see [alias] in ~/.gitconfig
alias ga='git add'
alias gcl='git config --list'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gbc='git branch --color'
alias gba='git branch -a'
alias gco='git checkout'
alias gdc='git-svn dcommit'
alias gk='gitk --all &'

function gd() {
  git diff $* | mate
}

alias gpatch='git diff master -p'
# alias up='sake git:update' - need to priorities origin vs git-svn
function gpall() {
  git push rubyforge master --tags
  git push origin master --tags
}
alias gitrm="git stat | grep deleted | awk '{print $3}' | xargs git rm"
alias gitx="open -b nl.frim.GitX"
                                
# End Dr Nic Compatibility Mode
                            
# Bo's preferred aliases
alias gi='git init'
alias gac='gca'
alias gps='gp'
alias gpl='gl'
alias gpo='gp origin master'

alias ignore_empty='find . \( -type d -empty \) -and \( -not -regex ./\.git.* \) -exec touch {}/.gitignore \;'

export PATH=/usr/local/git/bin:$PATH
export MANPATH=/usr/local/git/man:$MANPATH
