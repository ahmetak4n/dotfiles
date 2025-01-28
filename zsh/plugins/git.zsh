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
