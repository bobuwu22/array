index=$(shuf -i 0-5 -n 1)
quotes="/home/bob/bin/array/qt.json"
quoteLocal=$(jq ".[$index].text" $quotes)
authorLocal=$(jq -r ".[$index].author" $quotes)


echo -e "$index : $quoteLocal \n -$authorLocal" | lolcat
