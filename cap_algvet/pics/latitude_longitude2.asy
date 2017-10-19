include "../../config/asy_config.asy";

pen caneta=black+.25;
pen caneta2=black+.25+dotted;

import three;
import graph3;
import grid3;
//currentprojection=obliqueX;
currentprojection = orthographic(1,1,1);




path3 myarc =  Arc(c=O, normal=X, v1=-Z, v2=Z, n=10);
surface backHemisphere = surface(myarc, angle1=0, angle2=180, c=O, axis=Z, n=10);
surface frontHemisphere = surface(myarc, angle1=180, angle2=360, c=O, axis=Z, n=10);
draw(backHemisphere, surfacepen=material(white+opacity(0.1), ambientpen=white), meshpen=gray(0.4));
draw(O--X, blue+linewidth(1pt));
draw(frontHemisphere, surfacepen=material(white+opacity(0.1), ambientpen=white), meshpen=gray(0.4));



// inner surface
triple rin(pair t) {  return expi(t.x,t.y);}

surface sphere=surface(rin,(0,0),(pi/2,pi/2),32,32);
draw(sphere,emissive(cor_prenchimento_leve));




draw((0,0,0)..(1,0,0),arrow=Arrow3());// , L=Label("$x$", position=EndPoint));
draw((0,0,0)..(0,1,0),arrow=Arrow3());// , L=Label("$y$", position=EndPoint));
draw((0,0,0)..(0,0,1),arrow=Arrow3());// , L=Label("$z$", position=EndPoint));


real Plat=pi/2;
real Plong=pi/4;


real x=sin(Plong)*cos(Plat);
real y=sin(Plong)*sin(Plat);
real z=cos(Plong);

real r=sqrt(x**2+y**2+z**2);
x=x/r;
y=y/r;
z=z/r;

draw((0,0,0)..(x,y,z),caneta,L=Label("$r$", position=MidPoint, align=N));
draw((0,0,0)..(x,y,0),caneta2);
//draw((x,y,z)..(x,y,0),caneta2);

real r=.6;

draw (arc(O,r*X,r*(x,y,0)),caneta2,L=Label("$\lambda$", position=MidPoint),arrow=Arrow3());
//draw (arc(O,r*Z, (0,y,z)),caneta2,L=Label("$\varphi$", position=MidPoint),arrow=Arrow3());
draw (arc((0,0,0),r*(x,y,0), (x,y,z)),caneta2,L=Label("$\phi$", position=MidPoint),arrow=Arrow3());

dot((x,y,z));

//label("$P$",1.2*(x,y,z) );
//label("$P'$",1.2*(x,y,0) );



