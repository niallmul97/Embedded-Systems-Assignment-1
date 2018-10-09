#!/bin/bash
#! Write a shell script to perform as a basis calculator.
#! It should ask for two numbers and operand choice from
#! the user (+,-,*,/ and %) and output the result.
echo 'Enter two numbers and an operator'
echo 'Enter the first number: '
read NUM1
echo 'Enter the second number: '
read NUM2
OPERATOR=0
CALCULATION=0
re='^[0-9]+$'
if ! [[ $NUM1 =~ $re ]] ;
then
  echo 'error: Not a valid input' >&2; exit 1
elif ! [[ $NUM2 =~ $re ]] ;
then
  echo 'error: Not a valid input' >&2; exit 1
else
  echo '1) Add'
  echo '2) Substrct'
  echo '3) Multiply'
  echo '4) Divide'
  echo '5) Modulus'
  read OPERATOR
  if [[ $OPERATOR -lt 1 ]];
  then
    echo 'Invalid input' >&2; exit 1
  elif [[ $OPERATOR -gt 5 ]];
  then
    echo 'Invalid input' >&2; exit 1
  else
    case $OPERATOR in
      1) echo CALCULATION=$(( $NUM1 + $NUM2));;
      2) echo CALCULATION=$(( $NUM1 - $NUM2));;
      3) echo CALCULATION=$(( $NUM1 * $NUM2));;
      4) echo CALCULATION=$(( $NUM1 / $NUM2));;
      5) echo CALCULATION=$(( $NUM1 % $NUM2));;
      *) echo 'Invalid input'
    esac
  fi
fi
