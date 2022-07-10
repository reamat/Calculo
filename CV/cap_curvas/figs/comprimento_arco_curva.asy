include "../../config/asy_config.asy";

triple F(real t) {
//	return (2-4*t^(2.5),2-2.5*t^2,2.5*t^2);
//	return (1+2.5*t^2,1-2.5*t^2,4*t^(2.5));
	return (5-5*t^2,4*t^(2.5),5*t^2);
}


import three;
import graph3;
import grid3;

unitsize(0.5cm);

//currentprojection=obliqueX;
currentprojection = orthographic(1,1,1);


draw((0,0,0)..(6,0,0),arrow=Arrow3(), L=Label("$x$", position=EndPoint));
draw((0,0,0)..(0,6,0),arrow=Arrow3(), L=Label("$y$", position=EndPoint));
draw((0,0,0)..(0,0,6),arrow=Arrow3(), L=Label("$z$", position=EndPoint));



path3 g = graph(F, 0, 1);
draw(g,blue,Arrow3);
xaxis3(0,5,OutTicks(5,5));
yaxis3(0,5,OutTicks(5,5));
zaxis3(0,5,OutTicks(5,5));
