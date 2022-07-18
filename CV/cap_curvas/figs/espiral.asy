include "../../config/asy_config.asy";


unitsize(1cm);
//draw((0,-1)..(0,1),arrow=Arrow(), L=Label("$y$", position=EndPoint));
//draw((-1,0)..(1,0),arrow=Arrow(), L=Label("$x$", position=EndPoint));


pair espiral(real t) {
	return (t*sin(t), t*cos(t));	}

pair tangente(real t) {
	pair der= (sin(t)+t*cos(t), cos(t)-t*sin(t));	
	real norma = sqrt(der.x*der.x + der.y*der.y);
	return der/norma;
	}


draw(graph( pic=currentpicture,espiral,0,2*pi));

for (int i=0; i < 4; ++i){
	real t = i*pi/2 + pi/4;
	draw(espiral(t)..espiral(t)+tangente(t),arrow=Arrow());
	}
xaxis(L=Label("$x$", align=N, position=EndPoint),arrow=Arrow(),Ticks);
yaxis(L=Label("$y$", align=E, position=EndPoint),arrow=Arrow(),RightTicks);

