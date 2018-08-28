include "../../config/asy_config.asy";



draw((0,-.05)..(0,1.05));
draw((-1,0)..(1,0));

xaxis(L=Label("$x$", align=N, position=EndPoint),arrow=Arrow(),Ticks);
yaxis(L=Label("$y$", align=E, position=EndPoint),arrow=Arrow(),RightTicks);





pair a=(-1,0);
pair b=(1,1);

path vector(pair z) {return (0,0)--(sqrt(z.y),0);}

add(vectorfield(vector,a,b,nx=8));


