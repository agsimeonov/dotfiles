export PIP_FORMAT=columns
export VISUAL=vim
export EDITOR="$VISUAL"
export GPG_TTY=$(tty)
export HOMEBREW_NO_ANALYTICS=1

# Get ApplePressAndHoldEnabled status
aphestatus() {
  KEY='ApplePressAndHoldEnabled'
  APP_ID_PREFIX='com\.jetbrains\.' \
  && echo \
  && printf "%-30s %-20s %-8s\n" \
      "Application" \
      "Type" \
      "Value" \
  && printf "%-30s %-20s %-8s\n" \
      "$(printf -- '-%.0s' {1..30})" \
      "$(printf -- '-%.0s' {1..16})" \
      "$(printf -- '-%.0s' {1..8})" \
  && (defaults read | egrep -o "${APP_ID_PREFIX}[^\"]+" | sort --unique && echo '-g') \
  | while read APP_ID; do
      printf "%-30s %-20s %-4s\n" \
      "${APP_ID}" "\
      $(defaults read-type "${APP_ID}" "$KEY" 2> /dev/null || echo '(unset)')" \
      "$(defaults read "${APP_ID}" "$KEY" 2> /dev/null || echo '(unset)')"
  done \
  && echo
}

# Get IntelliJ domain names
alias intellij-domains="defaults read | egrep -o 'com\.jetbrains\.\w+' | sort --unique"

# Set ApplePressAndHoldEnabled to flase for IntelliJ Idea
defaults write com.jetbrains.intellij ApplePressAndHoldEnabled -bool false
