types=('-p' '-s' '-b'); 
for t in $types; do
  echo "output $t is: \n\n" "$(xsel -o $t )" "\n"
done
