### banner
# terminal colors
_white="\e[39m"
__blue="\e[38;5;4m"
_green="\e[38;5;120m"
orange="\e[38;5;172m"
purple="\e[38;5;90m"
___red="\e[38;5;196m"
yellow="\e[38;5;221m"

# pull hardware information
hardwareData=$( /usr/sbin/system_profiler SPHardwareDataType )
batteryData=$( /usr/sbin/system_profiler SPPowerDataType )
modelName=$( /usr/bin/grep 'Model Name' <<< "$hardwareData" | /usr/bin/xargs )
modelIdentifier=$( /usr/bin/grep 'Model Identifier' <<< "$hardwareData" | /usr/bin/xargs )
serialNumber=$( /usr/bin/grep 'Serial Number' <<< "$hardwareData" | /usr/bin/xargs )
memory=$( /usr/bin/grep 'Memory' <<< "$hardwareData" | /usr/bin/xargs )
processorSpeed=$( /usr/bin/grep 'Processor Speed' <<< "$hardwareData" | /usr/bin/xargs )

# Banner
echo
echo
echo -e "${_green}                      'c.                 ${_white}"
echo -e "${_green}                    ,xNMM.                ${_white}"
echo -e "${_green}                  .0MMMMo                 ${_white}"
echo -e "${_green}                 0MMM0,                   ${_white}"
echo -e "${_green}         .;loddo:' loolloddol;.           ${_white}"
echo -e "${_green}       cKMMMMMMMMMMNWMMMMMMMMMM0:         ${_white} Logged in as: $( /usr/bin/id -un )"
echo -e "${yellow}     .KMMMMMMMMMMMMMMMMMMMMMMMMWd.        ${_white} ---------------------------------"
echo -e "${yellow}     ;XMMMMMMMMMMMMMMMMMMMMMMMX.          ${_white} Operating System: $( /usr/bin/sw_vers -productName ) $( /usr/bin/sw_vers -productVersion )"
echo -e "${orange}     ;MMMMMMMMMMMMMMMMMMMMMMMM:           ${_white} Computer Name: $( hostname )"
echo -e "${orange}     :MMMMMMMMMMMMMMMMMMMMMMMM:           ${_white} $modelName"
echo -e "${___red}     .MMMMMMMMMMMMMMMMMMMMMMMMX.          ${_white} $modelIdentifier"
echo -e "${___red}      kMMMMMMMMMMMMMMMMMMMMMMMMWd.        ${_white} $memory"
echo -e "${purple}      .XMMMMMMMMMMMMMMMMMMMMMMMMMMk       ${_white} Shell: $SHELL"
echo -e "${purple}       .XMMMMMMMMMMMMMMMMMMMMMMMMK.       ${_white} Uptime: $( /usr/bin/uptime 2> /dev/null | /usr/bin/awk -F '(up |, [0-9]+ users)' '{ print $2 }')"
echo -e "${__blue}         kMMMMMMMMMMMMMMMMMMMMMMd.        ${_white}"
echo -e "${__blue}          ;KMMMMMMMWXXWMMMMMMMMk.         ${_white}"
echo -e "${__blue}            .cooc,.    .,coo:.            ${_white}"
echo
echo
