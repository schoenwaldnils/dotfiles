# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# sexy list handling
alias ll='exa -la --git'
# List all files colorized in long format, including dot files
alias la="ls -laF -G"
# Always use color output for `ls`
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
alias ls='command ls -G'

alias copy='function(){cat $@ | pbcopy}'

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu='osascript -e "set volume output muted true"'
alias pumpitup='osascript -e "set volume 7"'

# colored cat command
alias cat='bat'

# Lock the screen (when going AFK)
alias afk='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'

# IP addresses
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'
alias localip='ipconfig getifaddr en0 && ipconfig getifaddr en0 | pbcopy'
alias ips='ifconfig -a | grep -o "inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)" | awk "{ sub(/inet6? (addr:)? ?/, \"\"); print }"'


# Show/hide hidden files in Finder
alias show='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias hide='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'

# set up https-server
# https://paulbrowne.xyz/https-localhost
alias https-server='http-server --ssl --cert ~/.ssl/localhost.crt --key ~/.ssl/localhost.key -a localhost -o'

# launch applications
alias chrome='open -a "/Applications/Google Chrome.app" --args --force-renderer-accessibility'
alias chromeDebug='chrome --remote-debugging-port=9222'

# npm stuff
alias ni='npm install'
alias nis='npm install --save'
alias nid='npm install --save-dev'
alias nig='npm install --global'
alias ns='npm start'
alias nt='npm test'
alias nit='npm install && npm test'
alias nk='npm link'
alias nr='npm run'
alias npm-reset='rm -rf node_modules && rm -f package-lock.json && npm install && npx node-notifier-cli -t "Done" -m "npm modules reinstalled" -s Glass -i https://cdn.rawgit.com/npm/logos/31945b5c/npm%20square/n-64.png'
alias dnm='rm -rf node_modules && npm i'


# git handling
clone() {
  git clone $1
  cd $(basename ${1%.*})
  if test -f "./package.json"; then
    echo "..."
    echo "Found package.json... installing dependencies"
    echo "..."
    npm install
  fi
}

alias g='git'
alias gc='git commit -m'
# View the current working tree status using the short format without fetch
alias s='git status -s -b'
# View the current working tree status using the short format
alias sf='git fetch -q && git status -s -b'
alias a='git add'
# Show the diff between the latest commit and the current state
alias d='git diff-index --quiet HEAD -- || clear; git --no-pager diff --patch-with-stat'

# Push local changes to tracked remote branch
alias p='git push origin'
alias pt='git push origin --tags'
# Pull in remote changes for the current repository and all its submodules
alias l='git pull; git submodule foreach git pull origin master'
# switch to branch
alias b='git checkout -q'
# Reset file/s to head
alias r='git checkout'
alias stash='git stash'
alias pop='git stash pop'
# Clone a repository including all submodules
alias clone='git clone --recursive'
# View abbreviated SHA, description, and history graph of the latest 20 commits
alias hist='git log --pretty=format:\"%Cred%ad %Cgreen%h %Creset| %Cblue[%an] %Creset%s%Cgreen%d\" --graph --date=short'

# git flow
alias gf='git flow'
alias gff='git flow feature'
alias gfh='git flow hotfix'
alias gfr='git flow release'

# resolve package-lock.json conflict
alias solvePackageLock='function() {git reset -- package-lock.json && rm package-lock.json && npm install && git add package-lock.json}'

alias cleanbranches='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'

# QR
alias qr='function() {qrcode-terminal "$@"; echo "$@";}'
alias fqr='function() {qrcode-terminal http://$(hostname):8888/"$@"; echo http://$(hostname):8888/"$@";}'

# VLC
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

# sourcetree
alias stree='open -a SourceTree "$(git rev-parse --show-toplevel)"'
alias sourcetree='stree'

# weinre
alias localweinre='weinre --boundHost -all- --httpPort 4242'

# Helpers
alias grep='grep --color=auto' # Always highlight grep search term
alias ping='ping -c 5'      # Pings with 5 packets, not unlimited

# MAC adress changer (free wifi hack)
alias freewifi="sudo ifconfig en0 ether `openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'`"

# create files in subfolders
function touchp() {
  mkdir -p "$(dirname "$1")/" && touch "$1"
}
