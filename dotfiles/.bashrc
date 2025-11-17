# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.config/bash/rc
function gi() { curl -sL https://www.toptal.com/developers/gitignore/api/$@ ;}
