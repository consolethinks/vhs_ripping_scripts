import vapoursynth as vs
import havsfunc as haf
import sys

# params to be passed : in_file, out_width, out_height
core = vs.core
clip = core.ffms2.Source(source=in_file)
clip = haf.QTGMC(clip, Preset='Slower', TFF=False)
clip = core.resize.Spline36(clip, out_width, out_height, matrix_in_s='709')
clip.set_output()
