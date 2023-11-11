vspipe \
  -c y4m \
  -a out_width=1440 -a out_height=1080 \
  -a in_file="$1" \
  "VHS_QTGMC.py" - | \
ffmpeg \
  -i pipe: -i "$1" \
  -c:v libx264 -preset fast -crf 20 \
  -c:a copy \
  -map 0:v -map 1:a \
  $2
