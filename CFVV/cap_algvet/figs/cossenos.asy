include "../../config/asy_config.asy";



pair P1=(0,0), P2=(2,-.2), P3=(1.2,1);


fill(P1 -- P2 -- P3 -- cycle,cor_prenchimento);

draw(P1--P3,arrow=Arrow(),L=Label("$"+uvec+"$", position=MidPoint));
draw(P3--P2,arrow=Arrow(),L=Label("$"+wvec+"$", position=MidPoint)); 
draw(P1--P2,arrow=Arrow(),L=Label("$"+vvec+"$", position=MidPoint));

real r=.2;
draw( arc( P1, P2*r, P3*r ),L = Label("$\theta$", position=MidPoint) );


