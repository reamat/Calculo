include "../../config/asy_config.asy";

import graph;

unitsize(1cm);


pair parabola(real t) {

return (t,t^2);
}




path p1 = graph(parabola,-2,-1);
path p2 = graph(parabola,-1, 1);
path p3 = graph(parabola, 1, 2);

draw(p1,arrow=EndArrow,blue);
draw(p2,arrow=EndArrow,blue);
draw(p3,arrow=EndArrow,blue);


//write(curvatura);

//draw((0,-.4)..(0,4),arrow=Arrow(),black);
//draw((-2,0)..(2,0),arrow=Arrow(),black);
xaxis(-2,2.2,arrow=Arrow(),Ticks(),L=Label("$x$",align=NE));  
yaxis(-.5,4.2,arrow=Arrow(),Ticks(),L=Label("$y$",align=E)); 
