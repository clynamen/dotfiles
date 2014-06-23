#!/bin/bash
pageNumber=58
bookName="Corgnier-Silvio-Valabrega"
for page in $(seq 1 $pageNumber); do
  play /usr/share/sounds/KDE-Im-Contact-In.ogg > /dev/null
  scanimage -p -d pixma:04A91751_90C819 --format=png > $bookName-$page.png
  play /usr/share/sounds/KDE-Im-Contact-In.ogg > /dev/null
  sleep 20
done

