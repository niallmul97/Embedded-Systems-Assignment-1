#!/bin/bash
#! Write a shell script to calculate the area of rectangle.
#! It should take the values from the command line and output the result.
echo 'Enter the length and width in order to find the area'
echo 'Length: '
read LENGTH
echo 'Width: '
read WIDTH
AREA=0
re='^[0-9]+$'
if ! [[ $LENGTH =~ $re ]] ;
then
  echo 'error: Not a valid input' >&2; exit 1
elif ! [[ $WIDTH =~ $re ]] ;
then
  echo 'error: Not a valid input' >&2; exit 1
else
  AREA=$(($LENGTH * $WIDTH))
  echo 'Area of rectangle is: '$AREA 'units squared'
  if [[ $LENGTH -eq $WIDTH ]];
  then
    echo 'This rectangle is also a square!'
  fi
fi
