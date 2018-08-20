include "../../config/asy_config.asy";



draw((0,-1)..(0,1),arrow=Arrow(), L=Label("$y$", position=EndPoint));

draw((-1,0)..(1,0),arrow=Arrow(), L=Label("$x$", position=EndPoint));



pair a=(-1,-1)*.8;
pair b=(1,1)*.8;

path vector(pair z) {return (0,0)--(z.x,z.y);}

add(vectorfield(vector,a,b));

