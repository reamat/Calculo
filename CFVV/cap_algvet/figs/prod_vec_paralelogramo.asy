include "../../config/asy_config.asy";


real base=2, altura=.7,deslocamento=1;
pair P1=(0,0), P2=(base,0), P3=(base+deslocamento,altura), P4=(deslocamento,altura);

fill(P1 -- P2 -- P3 -- P4 -- cycle,cor_prenchimento);

//draw(P1--P2,arrow=Arrow(),L=Label("$"+uvec+" + "+vvec+"$", position=MidPoint)); 


draw(P1--P2,arrow=Arrow(),L=Label("$"+uvec+"$", position=MidPoint));
draw(P1--P4,arrow=Arrow(),L=Label("$"+vvec+"$", position=MidPoint,align=N));

draw(P2--P3,currentpen+dotted);
draw(P4--P3,currentpen+dotted);

real area=base*altura;
pair centro=((base+deslocamento)/2,altura/2);
draw(centro--centro+area*(0,1),arrow=Arrow(),L=Label("$"+uvec+"\times"+vvec+"$",position=Relative(.7),align=E));
//label("$\|" +uvec+" + " + vvec + "\|$",(0,-.2));
