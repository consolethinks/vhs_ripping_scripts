#!/bin/bash

ffmpeg \
 -threads 4 \
 -i $1 -itsoffset 00:00:00.250 -i $1 \
 -map 0:v -map 1:a \
 -vaapi_device /dev/dri/renderD128 \
 -c:a copy \
 -c:v h264_vaapi -r 50 -crf 20 -aspect 4:3 -vf yadif=1,scale=1440x1080:flags=lanczos,format=nv12,hwupload \
 -ss $3 \
 -t $4 \
$2
# -c:v h264_vaapi -r 50 -crf 20 -aspect 4:3 -vf deinterlace_vaapi=rate=field:auto=1,scale_vaapi=w=1440:h=1080,hwupload,format=nv12 \
# -c:v h264_vaapi -r 50 -crf 20 -aspect 4:3 -vf yadif=2,scale=1440x1080:flags=lanczos \
