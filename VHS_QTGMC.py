import vapoursynth as vs
import havsfunc as haf
import sys


import vapoursynth as vs
import havsfunc as haf
core = vs.core
clip = core.ffms2.Source(source="/hdd1/reedwolf/Videos/VHS/rtl-klub-reklam0.mkv")
clip = haf.QTGMC(clip, Preset='Slower', TFF=False)
clip = core.resize.Spline36(clip, 720, 540, matrix_in_s='709')
clip.set_output()
