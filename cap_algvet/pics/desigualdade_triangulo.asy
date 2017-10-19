include "../../config/asy_config.asy";


fill((0,0) -- (2,0) -- (1.2,1) -- cycle,cor_prenchimento);

draw((0,0)--(2,0),arrow=Arrow(),L=Label("$"+uvec+" + "+vvec+"$", position=MidPoint)); 
draw((0,0)--(1.2,1),arrow=Arrow(),L=Label("$"+uvec+"$", position=MidPoint));
draw((1.2,1)--(2,0),arrow=Arrow(),L=Label("$"+vvec+"$", position=MidPoint));

//label("$\|" +uvec+" + " + vvec + "\|$",(0,-.2));
