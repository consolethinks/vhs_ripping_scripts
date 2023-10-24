#!/bin/bash

ffmpeg \
-f v4l2 -standard PAL -thread_queue_size 2048 -video_size 720x576 -i $1 \
-c:v ffv1 -vf format=yuv422p -top 1 -flags:v +ilme+ildct  \
$3
