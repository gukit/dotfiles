# Git
alias gc="git checkout"
alias gst="git status"
alias gpo="git push origin"
alias gm="git merge"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias wip="git add . && git commit -m 'wip'"
alias nah="git reset --hard && git clean -df"

# PHP
alias p="phpunit"
alias pf="phpunit --filter "
alias art="php artisan"
alias tinker="php artisan tinker"
alias migrate="php artisan migrate"
alias mfresh="php artisan migrate:fresh"
alias mfs="php artisan migrate:fresh --seed"
alias mrefresh="php artisan migrate:refresh"
alias dumpload="composer dumpautoload"
alias freshtest="php artisan migrate:fresh --env=testing"
alias cfresh="rm -rf vendor/ composer.lock && composer i"
alias path='echo -e ${PATH//:/\\n}'
alias pest='nocorrect pest'

# Flush Directory Service cache
alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"
