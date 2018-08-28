include "../../config/asy_config.asy";



draw((0,-1)..(0,1));
draw((-1,0)..(1,0));

xaxis(L=Label("$x$", align=N, position=EndPoint),arrow=Arrow(),Ticks);
yaxis(L=Label("$y$", align=E, position=EndPoint),arrow=Arrow(),RightTicks);



pair a=(-1,-1)*.8;
pair b=(1,1)*.8;

path vector(pair z) {return (0,0)--(z.x,0);}

add(vectorfield(vector,a,b));

