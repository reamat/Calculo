include "../../config/asy_config.asy";

triple F(real t) {
//	return (1-t^2, t^2+t^3, 1+t^2-t^3);
	//return (2*t**3,1-t**3+t**(9/2),t**3+t**(9/2));
	//return (2*t**3,1-t**3+2*t**(9/2),t**3+2*t**(9/2));
	return (2*t**3,1-t**3+2*t**(9/2),t**3+2*t**(9/2));

}


import three;
import graph3;
import grid3;
currentprojection = obliqueX;

unitsize(2cm);


draw((0,0,0)..(2,0,0),arrow=Arrow3(), L=Label("$x$", position=EndPoint));
draw((0,0,0)..(0,2,0),arrow=Arrow3(), L=Label("$y$", position=EndPoint));
draw((0,0,0)..(0,0,2),arrow=Arrow3(), L=Label("$z$", position=EndPoint));



path3 g = graph(F, 0, 1);
draw(g,blue,Arrow3);
xaxis3(0,2,OutTicks(2,2));
yaxis3(0,2,OutTicks(2,2));
zaxis3(0,2,OutTicks(2,2));
