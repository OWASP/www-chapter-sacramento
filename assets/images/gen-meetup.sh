#! /bin/bash
date="February 24 2022"
time="6-7PM"
filename=$( echo $date | sed 's/ /-/g')
filename="$filename.png"
convert background.png OWASP.png -gravity north -geometry +0+10 -composite test.png
width=`identify -format %w test.png`
width=$(( ${width} - ( ${width} / 4) ))
height=$(( `identify -format %h test.png` / 3 ))
convert -font courier -pointsize 50  -background '#0008' -fill '#00f800' -gravity center -size ${width}x${height} caption:"OWASP Sacramento
$date
Presentations: $time (Zoom)
" test.png +swap -gravity south -composite $filename
