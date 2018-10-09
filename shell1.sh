#!/bin/bash
echo 'Enter a number'
read NUM
re='^[0-9]+$'
if ! [[ $NUM =~ $re ]] ;
then
   echo "error: Not a number" >&2; exit 1
else
  CURRENT_TOTAL=0
  FINAL_TOTAL=0
  i=1
  while [ $i -le $NUM ]
  do
    CURRENT_TOTAL=$(($CURRENT_TOTAL + $i))
    echo 'Current total :' $CURRENT_TOTAL
    i=$(($i + 1))
    FINAL_TOTAL=$(($CURRENT_TOTAL))
  done
  echo 'Final total :' $FINAL_TOTAL
fi
