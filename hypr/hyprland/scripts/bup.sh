#!/usr/bin/bash
steps=20
speed=20
dperc=10

maxb=$(brightnessctl m)
current=$(brightnessctl g)
totald=$((maxb / ((100/dperc))))
d=$((totald / steps))
slpt=$((speed / steps))

if [[ $1 -eq 1 ]]; then
  for ((i=0; i<=$steps; i++)); do
    brightnessctl set "$d"+
    sleep $(echo "scale=3; $slpt / 1000" | bc)
  done
  exit 0
elif [[ $1 -eq 2 ]]; then
   for ((i=0; i<=$steps; i++)); do
    brightnessctl set "$d"-
    sleep $(echo "scale=3; $slpt / 1000" | bc)
  done
  exit 0 
else
  exit 1
fi
