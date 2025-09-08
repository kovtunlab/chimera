# Open session
# open /media/data2/ok/sab/nl175_ts_02/movie2/nl175t2_movie2_ver2.py

# Set windowsize
windowsize 1280 1280

# Initialise view 
~set depthCue 
reset start
set projection orthographic
vol all hide
~modeldisplay #1,2
vol #0 style solid showPlane true show transp 0.8




# set movie directory
movie record directory /media/data2/ok/sab/nl175_ts_02/movie2/ raytrace false supersample 4

movie crossfade 5
wait 5

movie crossfade 40
fly start 40 view2
volume #0 planes z,116,120,0.1
wait 60

movie crossfade 25
modeldisplay #2
wait 30

# set centre of rotation at one of the retromer motls
cofr #2.98

#movie crossfade 25
#fly view2 25 view3
#wait 30

cofr #2.118
set projection perspective


movie crossfade 40
fly view2 40 view4
set depthCue; set dcStart 0.3 ; set dcEnd 0.8   
wait 50

movie crossfade 20
vol #0 hide
wait 40 

cofr #2.118

rock y 1 200 cycle 100
wait 210

#change lattice map model 
movie crossfade 25
~modeldisplay #2; modeldisplay #1
wait 25

movie crossfade 40
fly view4 40 view5
wait 45

rock y 3 200 cycle 100
wait 210

#play between tomoplanes
#perframe "volume #0 plane z,$1" range 245,214 frames 50
#wait 50


movie encode /media/data2/ok/sab/nl175_ts_02/movie2/nl175t2_lattice_v1.mp4 quality high
