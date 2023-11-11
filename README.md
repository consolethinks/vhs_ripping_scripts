# VHS Ripping Scripts
A collection of VHS ripping and upscaling scripts I've made. It tries to rip VHS preserving the interlaced video signal, and only deinterlaces when upscaled.

## Usage 
- `./vhs-record-x264.sh [V4L2 device path] [ALSA audio input] [Output filepath]`
- `./vhs-upscaling-deinterlacing.sh [input file] [output file] [start time] [duration]`
- The QTGMC script requires vspipe (the how-to will soon be added)

(Other record and upscaling scripts use similar syntax to the first two)

## Dependencies
- BASH
- ffmpeg
- vapoursynth, plugins: havsfunc, misc, mvtools, znedi3, eedi3m
- VAAPI (will be optional in the future)

Vapoursynth packages in Arch/Manjaro/AUR:

```vapoursynth, vapoursynth-plugin-havsfunc-git, vapoursynth-plugin-misc-git, vapoursynth-plugin-mvtools, vapoursynth-plugin-znedi3-git, vapoursynth-plugin-eedi3m-git```

## Notes
- H264 is used for compression, as it can store interlaced video unlike VP9, AV1, h265... etc.
- FFV1 is proposed as a lossless alternative (for recording only), but it is very storage hungry
- The scripts presume PAL format for now
