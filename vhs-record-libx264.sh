#!/bin/bash

ffmpeg \
 -threads 0 \
 -f v4l2 -standard PAL -thread_queue_size 2048 -video_size 720x576 -i $1 \
 -f alsa -thread_queue_size 2048 -itsoffset 00:00:00.22 -i $2  \
 -c:v libx264 -r 25 -crf 20 -vf format=yuv422p -top 0 -flags +ildct+ilme -x264opts tff=0 -force_key_frames 00:00:00.000,00:00:05.000 \
 -acodec aac -b:a 140k -af aresample=async=1,asetpts=PTS-STARTPTS -strict -2 \
$3
