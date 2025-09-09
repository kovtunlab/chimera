# Open session
# /media/data2/ok/sab/nl239/nl239_t58.py
# Set windowsize
windowsize 1200 1500 

# Initialise view 
set projection orthographic
~set depthCue
volume #1 region 0,0,94,989,1281,96  step 1,1,1
vol all hide
vol #0 style solid showPlane true show transp 0.8
reset start
# set movie directory
movie record directory /media/data2/ok/sab/nl239/ts_058 raytrace false supersample 4

#play between tomoplanes
perframe "volume #0 plane z,$1" range 83,225 frames 75
wait 85
perframe "volume #0 plane z,$1" range 225,96 frames 75
wait 85

vol #1 show
# animate kmax -  frames must be integer
volume #1 region 0,0,94,989,1281,96  step 1,1,1
perframe "volume #1 region  0,0,$1,989,1281,96" range 94,0 frames 95
wait 100

movie encode /media/data2/ok/sab/nl239/ts_058/nl239_t58_mQ.mp4 quality medium


