#####################################
########## initial scripts ##########
#####################################
eval "$(/opt/homebrew/bin/brew shellenv)"

#####################################
############# plugins ###############
#####################################
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

#####################################
############# zsh prompt ############
#####################################
# color settings
_GREY="%F{243}"
_LIGHT_GREY="%F{245}"
_BLUE="%F{33}"
_RED="%F{196}"
_ORANGE="%F{173}"
_CLEAR_FORMAT="%f"

# variables
_USERNAME="${_GREY}%n${_CLEAR_FORMAT}"
_SEPERATOR="${_RED}#${_CLEAR_FORMAT}"
_HOSTNAME="${_LIGHT_GREY}𐱅𐰇𐰼𐰰${_CLEAR_FORMAT}"
_PATH="${_BLUE}%~${_CLEAR_FORMAT}"
_COMMANDS="%#"
_TIME="${_GREY}[%@]${_CLEAR_FORMAT}"

# expansion of function, parameters and 
# etc. before print promt
setopt prompt_subst
PROMPT="$_USERNAME $_SEPERATOR $_HOSTNAME $_PATH $_COMMANDS "
RPROMPT="$_TIME"

#####################################
############## alias ################
#####################################
alias v="nvim"
alias p="podman"
