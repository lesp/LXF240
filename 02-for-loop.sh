#! /bin/bash
gpio mode -g 17 out
for i in {1..3};
do
 gpio -g write 17 1
 sleep 1
 gpio -g write 17 0
 sleep 1
done
