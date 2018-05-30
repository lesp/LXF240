#! /bin/bash
gpio mode -g 17 out
gpio mode -g 27 input
while true; do
 PINSTATE="$(gpio -g read 27)"
 if [ ${PINSTATE} = "1" ]; then
  for i in {1..3}; do
   gpio write 0 1
   sleep 1
   gpio write 0 0
   sleep 1
   done
 fi
done

