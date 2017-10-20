include "../../config/asy_config.asy";

import three;
currentprojection=obliqueX;

import bsp;
triple u=(0,1,0), v=(-1,0,0), w= (-1,0,1);
//triple P1=(0,0,0), P2=

draw(O..u,arrow=Arrow3(), L=Label("$"+uvec+"$", position=MidPoint));
draw(O..v,arrow=Arrow3(), L=Label("$"+vvec+"$", position=MidPoint));
draw(O..w,arrow=Arrow3(), L=Label("$"+wvec+"$", position=MidPoint));

draw(u..u+v);
draw(u..u+w);

draw(v..v+u);
draw(v..v+w);

draw(w..w+u);
draw(w..w+v);

draw(u+v..u+v+w);
draw(u+w..u+v+w);
draw(v+w..u+v+w);

triple cr=cross(u,v);
draw(O..cr,L=Label("$"+uvec+"\times"+vvec+"$", position=Relative(1),align=N),arrow=Arrow3);

path3 y=plane(u,v,O);

face[] faces;
filldraw(faces.push(y),project(y),cor_preenchimento);
add(faces);

real r=.5;
draw(arc(O,r*cr,r*w),L=Label("$\varphi$",align=N));
