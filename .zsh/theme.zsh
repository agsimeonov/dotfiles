POWERLEVEL9K_MODE='awesome-patched'

# Prompt Elements
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time root_indicator context dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs vcs rbenv nodeenv virtualenv vi_mode)

# Status segment options
POWERLEVEL9K_STATUS_VERBOSE=true

# Directory segment options
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

# Vi mode segment options
POWERLEVEL9K_VI_INSERT_MODE_STRING="\ue285"
POWERLEVEL9K_VI_COMMAND_MODE_STRING="\ue20c"

# Context segment options
export DEFAULT_USER="$USER"

source $ZSH_THEME_DIR/powerlevel9k.zsh-theme
