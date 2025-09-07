# Open session
# open /media/data2/ok/sab/nl175_ts_02/movie1/nl175t2_movie1.py

# Set windowsize
windowsize 1280 1280

# Initialise view 
reset start
set projection orthographic
vol all hide
vol #0 style solid showPlane true show transp 0.6
# set segmentation regions bonds
volume #0 region 0,0,0,724,700,210  step 1,1,1
volume #1 region 0,0,0,724,700,185  step 1,1,1
volume #2 region 0,0,110,724,700,263  step 1,1,1
volume #3 region 0,0,110,724,700,263  step 1,1,1
volume #4 region 0,0,0,724,700,210  step 1,1,1
volume #5 region 0,0,110,724,700,263  step 1,1,1
volume #7 region 0,0,0,724,700,300  step 1,1,1

# set movie directory
movie record directory /media/data2/ok/sab/nl175_ts_02/movie1/ raytrace false supersample 4

#play between tomoplanes
perframe "volume #0 plane z,$1" range 245,214 frames 50
wait 50
#slow play at tubules
perframe "volume #0 plane z,$1" range 214,149 frames 100
wait 100

perframe "volume #0 plane z,$1" range 149,104 frames 50
wait 50

movie crossfade 10;
vol #0 transp 0;
wait 10

movie crossfade 10
vol #3 show
wait 10
movie crossfade 10
vol #1 show
wait 10

movie crossfade 10
vol #2 show
wait 10

movie crossfade 5
vol #4 show
wait 5

movie crossfade 5
vol #5 show
wait 5

movie crossfade 5
vol #7 show
wait 5

#movie crossfade 25
#fly focus 25; volume #0 planes z,104,184,3.2; volume #1,2,3,7 region  0,0,0,724,700,185; vol #5 hide;  
#wait 25

movie crossfade 25
fly start 25 focus
volume #0 planes z,104,184,3.2
volume #1,2,3,7 region 0,0,0,724,700,185
volume #5 hide
wait 25

movie crossfade 10
vol #0 transp 0.9
volume #1-7 hide 
wait 15

perframe "volume #0 plane z,$1" range 184,204 frames 20
wait 30

perframe "volume #0 plane z,$1" range 204,173 frames 20
wait 30








#vol #1 show 
# animate kmax -  frames must be integer
#perframe "volume #1 region  0,0,0,724,700,$1" range 210,185 frames 26
#wait 26




# animate the region's max Z bound
#perframe "volume #0 region 1,*, 1,*, 1,%d" range 120,220 frames 150
#wait 150
#movie crossfade 25;
#vol #1-7 show; fly start focus;
#wait 24;


#perframe "volume #0 plane z,$1" range 149,104 frames 175
#wait 175




# Cross fade it subunit
#movie crossfade 36;
#vol ~#1061,2061 hide; vol #1061,2061 transparency 0.5; modeldisplay #3002;
#wait 24;

movie encode /media/data2/ok/sab/nl175_ts_02/movie1/nl175t2_v1.mp4 quality high
