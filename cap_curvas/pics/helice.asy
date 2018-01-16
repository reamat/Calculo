include "../../config/asy_config.asy";


import three;
import graph3;
import grid3;
currentprojection=obliqueX;
//currentprojection = orthographic(1,1,1);

draw((0,0,0)..(2,0,0),arrow=Arrow3(), L=Label("$x$", position=EndPoint));
draw((0,0,0)..(0,2,0),arrow=Arrow3(), L=Label("$y$", position=EndPoint));
draw((0,0,0)..(0,0,2),arrow=Arrow3(), L=Label("$z$", position=EndPoint));

triple F(real t) {
return (cos(6.28*t),sin(6.28*t),.5*t);
}
path3 g = graph(F, 0, 3.2);
draw(g,blue);
