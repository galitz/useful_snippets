#!/bin/bash

## takes input as a stream (e.g. via a pipe)
M3Count=0
M2Count=0
while IFS= read -r line
do
  Multiple_search0=`echo "$line" | tr -d -c 0 | wc -m `
  Multiple_search1=`echo "$line" | tr -d -c 1 | wc -m `
  RESULT0=$(( $Multiple_search0 % 3 ))
  RESULT1=$(( $Multiple_search1 % 2 ))
  ## we also could have used a compound statement below instead of the if / elf
  if [ $RESULT0 = 0 ]; then
          (( M3Count = M3Count+1))
  elif [ $RESULT1 = 0 ]; then
          (( M2Count = M2Count+1))
  fi

done

echo "M3 found $M3Count"
echo "M2 found $M2Count"
TOTAL=$(( $M3Count + $M2Count ))
echo "Total is $TOTAL"

