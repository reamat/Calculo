include "../../config/asy_config.asy";

pen caneta=black+.25;
pen caneta2=black+.25+dotted;

import three;
import graph3;
import grid3;
currentprojection=obliqueX;
//currentprojection = orthographic(1,1,1);

draw((0,0,0)..(1,0,0),arrow=Arrow3(), L=Label("$x$", position=EndPoint));
draw((0,0,0)..(0,1,0),arrow=Arrow3(), L=Label("$y$", position=EndPoint));
draw((0,0,0)..(0,0,1),arrow=Arrow3(), L=Label("$z$", position=EndPoint));

//tripĺe P= (.5,.5,.5);

real x=.3;
real y=.6;
real z=.9;


draw((0,0,0)..(x,y,z),caneta);
draw((0,0,0)..(x,y,0),caneta2,L=Label("$\rho$", position=Relative(.25)));
draw((x,y,0)..(x,y,z),caneta2,L=Label("$z$", position=MidPoint),arrow=Arrow3());

real r=.6;

draw (arc(O,r*X,r*(x,y,0)),caneta2,L=Label("$\theta$", position=MidPoint),arrow=Arrow3());
//draw (arc(O,r*Z, (0,y,z)),caneta2,L=Label("$\varphi$", position=MidPoint),arrow=Arrow3());
//draw (arc((0,0,0),r*(x,y,0), (x,y,z)),caneta2,L=Label("$\phi$", position=MidPoint),arrow=Arrow3());

label("$P$",1.2*(x,y,z) );
label("$P'$",1.2*(x,y,0) );

//path3 myarc = rotate(18,Z) * Arc(c=O, normal=X, v1=-Z, v2=Z, n=10);
//surface backHemisphere = surface(myarc, angle1=0, angle2=180, c=O, axis=Z, n=10);
//surface frontHemisphere = surface(myarc, angle1=180, angle2=360, c=O, axis=Z, n=10);
//draw(backHemisphere, surfacepen=material(white+opacity(0.1), ambientpen=white), meshpen=gray(0.4));
//draw(O--X, blue+linewidth(1pt));
//draw(frontHemisphere, surfacepen=material(white+opacity(0.1), ambientpen=white), meshpen=gray(0.4));
