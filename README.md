# VHS Ripping Scripts
A collection of VHS ripping and upscaling scripts I've made. It tries to rip VHS preserving the interlaced video signal, and only deinterlaces when upscaled.

## Usage 
- `./vhs-record-x264.sh [V4L2 device path] [ALSA audio input] [Output filepath]`
- `./vhs-upscaling-deinterlacing.sh [input file] [output file] [start time] [duration]`
- `python VHS_QTGMC.py` (be sure to change the input filepath in the script)

(Other record and upscaling scripts use similar syntax to the first two)

## Notes
- H264 is used for compression, as it can store interlaced video unlike VP9, AV1, h265... etc.
- FFV1 is proposed as a lossless alternative (for recording only), but it is very storage hungry
- All of the scripts are written against bash in a linux environment
- Most of the scripts require ffmpeg
- The QTGMC python script requires VapourSynth
