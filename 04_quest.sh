#!/bin/bash
i=0
while [ $i -le $1 ]
do
  echo $i
  i=$(($i+2))
done
