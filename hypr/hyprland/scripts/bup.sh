#!/usr/bin/bash
steps=3

if [[ -n "$2" ]]; then
  dperc=$2
else
  dperc=10
fi
if [[ -n "$3" ]]; then
  speed=$3
else
  speed=20
fi

maxb=$(brightnessctl m)
echo "maximum brightness is $maxb"
current=$(brightnessctl g)
echo "current brightness is $current\n\n"

totald=$((maxb / ((100/dperc))))
d=$((totald / steps))
slpt=$((speed / steps))

if [[ $1 == "up" ]]; then
  echo "increasing brightness by $dperc"
  for ((i=1; i<=$steps; i++)); do
    brightnessctl set "$d"+
    sleep $(echo "scale=3; $slpt / 1000" | bc)
  done
  current=$(brightnessctl g)
  perc=$((current * 100 / maxb))
  notify-send "Brightness ${perc}"
  exit 0
elif [[ $1 == "down" ]]; then
  echo "decreasing brightness by $dperc"
   for ((i=1; i<=$steps; i++)); do
    brightnessctl set "$d"-
    sleep $(echo "scale=3; $slpt / 1000" | bc)
  done
  current=$(brightnessctl g)
  perc=$((current * 100 / maxb))
  notify-send "Brightness ${perc}"
  exit 0 
elif [[ -z $1 ]]; then
  exit 1
else 
  exit 1
fi
