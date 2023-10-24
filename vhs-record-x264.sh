#!/bin/bash

ffmpeg \
 -threads 4 \
 -f v4l2 -fflags +igndts -standard PAL -thread_queue_size 2048 -video_size 720x576 -use_wallclock_as_timestamps 1 -i $1 \
 -f alsa -thread_queue_size 2048 -i $2 \
 -c:v libx264 -crf 20 -vf tinterlace=interleave_top,fieldorder=tff -flags:v +ilme+ildct  \
 -acodec opus -b:a 140k -strict -2 \
 -use_wallclock_as_timestamps 1  -copytb 1   \
$3
