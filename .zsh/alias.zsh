# Show the current path tokens
alias mypath="print -l $path"

# Show the current zsh function path tokens
alias myfpath="print -l $fpath"

# Start/Stop SSH Server
alias start_ssh="sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist"
alias stop_ssh="sudo launchctl unload -w /System/Library/LaunchDaemons/ssh.plist"

# Start/Stop Hadoop
alias start_hadoop="/usr/local/sbin/start-dfs.sh;/usr/local/sbin/start-yarn.sh"
alias stop_hadoop="/usr/local/sbin/stop-yarn.sh;/usr/local/sbin/stop-dfs.sh"

# Clear screen and scrollback
alias sclear="clear;printf '\e[3J'"

# Start/Stop cassandra
alias start_cassandra='launchctl load /usr/local/opt/cassandra/*.plist'
alias stop_cassandra='launchctl unload /usr/local/opt/cassandra/*.plist'

# Start/Stop UB VPN
alias start_ubvpn='sudo openconnect -b --no-cert-check -u agsimeon ubvpn.buffalo.edu'
alias stop_ubvpn='sudo pkill -SIGINT openconnect'
