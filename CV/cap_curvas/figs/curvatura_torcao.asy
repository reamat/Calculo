include "../../config/asy_config.asy";

real a=3.14;
real c=.7;

triple F(real t) {
	return (cos(a*t),sin(a*t),c*t);
}

triple T(real t) {
	triple D=(-a*sin(a*t),a*cos(a*t),c);
	real norm = sqrt(a^2 + c^2);
	return D/norm;
}

triple N(real t) {
	return (-cos(a*t),-sin(a*t),0);

}


triple B(real t) {
	return cross(T(t),N(t));

}



import three;
import graph3;
import grid3;

//currentprojection=obliqueX;
currentprojection = orthographic(1,1,1);


//draw((0,0,0)..(2,0,0),arrow=Arrow3(), L=Label("$x$", position=EndPoint));
//draw((0,0,0)..(0,2,0),arrow=Arrow3(), L=Label("$y$", position=EndPoint));
//draw((0,0,0)..(0,0,2),arrow=Arrow3(), L=Label("$z$", position=EndPoint));



real d=1;

path3 g = graph(F, .2-d, 1.2-d);
draw(g,blue,Arrow3);



real escala =.4;

real tempos[]={.3-d, 1.0-d};

for (real t : tempos) {
	draw(F(t)..F(t)+escala*T(t),arrow=Arrow3(), L=Label("$\vec{T}$", position=EndPoint),red);
	draw(F(t)..F(t)+escala*N(t),arrow=Arrow3(), L=Label("$\vec{N}$", position=EndPoint),red);
	draw(F(t)..F(t)+escala*B(t),arrow=Arrow3(), L=Label("$\vec{B}$", position=EndPoint,align=E),red);
	draw(F(t)..F(t)-escala*N(t),arrow=Arrow3(), L=Label("$-\vec{N}$", position=EndPoint,align=SW),black);


	draw (arc(F(t),F(t)+escala*T(t), F(t)+escala*N(t)),arrow=Arrow3(),blue+dotted, L=Label("curvatura", position=MidPoint, align=NE));
	draw (arc(F(t),F(t)+escala*B(t), F(t)-escala*N(t)),arrow=Arrow3(),blue+dotted, L=Label("tor\c{c}\~{a}o", position=MidPoint, align=E));


}
