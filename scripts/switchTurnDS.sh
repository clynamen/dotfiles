scriptDir="/home/clynamen/.scripts/"

xrandr | grep -P '(VGA2|HDM1) connected \d'
secondConnected=$?

if [[ $secondConnected == 0 ]]; then
  bash $scriptDir/turnDS.sh off
else
  bash $scriptDir/turnDS.sh on
fi
