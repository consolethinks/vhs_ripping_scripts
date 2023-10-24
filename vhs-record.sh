#!/bin/bash

ffmpeg \
-f v4l2 -standard PAL -thread_queue_size 2048 -video_size 720x576 -i /dev/video2 \
-c:v utvideo -vf format=yuv422p -top 1 -flags:v +ilme+ildct  \
out.mkv
