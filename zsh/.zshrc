#####################################
########## initial scripts ##########
#####################################
eval "$(/opt/homebrew/bin/brew shellenv)"

#####################################
############ functions ##############
#####################################
#autoload -Uz vcs_info add-zsh-hook

#####################################
############# plugins ###############
#####################################
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
#source $ZDOTDIR/plugins/git.zsh

git_prompt(){
  BRANCH=$(git branch 2> /dev/null | awk -F' ' '{print $2}')
  STATUS=$(git status --short 2> /dev/null)

  if [ ! -z "$BRANCH" ];then
    if [ ! -z "$STATUS" ];then
      echo " %F{196}($BRANCH)%f "
    else
      echo " %F{156}($BRANCH)%f "
    fi
  else
    echo ""
  fi
}

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
_PATH="${_BLUE}%~$(git_prompt)${_CLEAR_FORMAT}"
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
