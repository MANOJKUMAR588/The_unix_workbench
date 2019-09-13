#!/usr/bin/env bash
# File: guessinggame.sh
function filecounts {
  
  echo $(ls -al | grep ^[-] | wc -l)
}
echo "Guess  the no. of files in the ./"
echo  "Hit enter:"
file=$(filecounts)
while read res
do
  if ! [[ $res =~ ^[0-9]+$ ]]
  then
    echo "Your res is not an integer non -ve number"
    echo "Type  new  guess again and then Hit enter button:"
  elif [[ $res -gt $file ]]
  then
    echo "Your res is greater"
    echo "Type new guess again and then Hit enter button:"
  elif [[ $res -lt $file ]]
  then
    echo "Your res is lower than expected"
    echo "Type new guess and then Hit enter button:"
  else
    echo "Hello, $file is the correct number!"
    break
  fi
done