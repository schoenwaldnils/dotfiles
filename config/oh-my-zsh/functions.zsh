# find shorthand
function f() {
  find . -name "$1"
}

# quickly look up a folder
# grep-folder perf-*
function grep-folder() {
  ll | grep $1
}


#
# Find a port blocker
#
function find_port_blocker() {
  if ! [ $# -eq 1 ]; then
    echo "Please define the port you want to check \n $ find_port_blocker 8000"
    return 1
  fi

  lsof -i tcp:$1
}

# Change MAC adress to get around public wifi limitations
hack_the_space() {
  NEW_MAC_ADDRESS=$(openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//')
  echo $NEW_MAC_ADDRESS
  sudo ifconfig en0 ether "$NEW_MAC_ADDRESS"
  echo "New MAC Address set"
}

# Create beautiful code images
carbon() {
  carbon-now <(pbpaste) -l /tmp/carbon
  open /tmp/carbon/
}

# Load .env file
loadEnv() {
  set -o allexport; source .env; set +o allexport
}
