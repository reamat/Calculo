include "../../config/asy_config.asy";


import three;
import graph3;
import grid3;
//currentprojection=obliqueX;
currentprojection = orthographic(1,1,1);



TamanhoTexto();

real deslocamento=0;

draw((0,0,0)..(2,0,0),arrow=Arrow3(), L=Label("$x$", position=EndPoint));
draw((0,0,0)..(0,2,0),arrow=Arrow3(), L=Label("$y$", position=EndPoint));
draw((0,0,0)..(0,0,2),arrow=Arrow3(), L=Label("$z$", position=EndPoint));

draw("Tor\c{c}\~ao nula",(-.7,.7,-2),fontsize(12pt));


triple F(real t) {
return (cos(6.28*t),sin(6.28*t),sin(6.28*t)*0);
}

path3 g = graph(F, 0, 3.2);
draw(g,blue);



real deslocamento=3;


draw((0-deslocamento,0+deslocamento,0)..(2-deslocamento,0+deslocamento,0),arrow=Arrow3(), L=Label("$x$", position=EndPoint));
draw((0-deslocamento,0+deslocamento,0)..(0-deslocamento,2+deslocamento,0),arrow=Arrow3(), L=Label("$y$", position=EndPoint));
draw((0-deslocamento,0+deslocamento,0)..(0-deslocamento,0+deslocamento,2),arrow=Arrow3(), L=Label("$z$", position=EndPoint));


draw("Tor\c{c}\~ao pequena",(-.9,.9,-2)+(-deslocamento,deslocamento,0),fontsize(12pt));


triple F(real t) {
return (cos(2.28*t)-deslocamento,sin(2.28*t)+deslocamento,.05*t);
}



//draw((0,0,0)..(-3,3,0));

path3 g = graph(F, 0, 3.2);
draw(g,blue);



deslocamento=deslocamento*2;


draw((0-deslocamento,0+deslocamento,0)..(2-deslocamento,0+deslocamento,0),arrow=Arrow3(), L=Label("$x$", position=EndPoint));
draw((0-deslocamento,0+deslocamento,0)..(0-deslocamento,2+deslocamento,0),arrow=Arrow3(), L=Label("$y$", position=EndPoint));
draw((0-deslocamento,0+deslocamento,0)..(0-deslocamento,0+deslocamento,2),arrow=Arrow3(), L=Label("$z$", position=EndPoint));

triple F(real t) {
return (cos(3*t)-deslocamento,sin(3*t)+deslocamento,t/2);
}

draw("Tor\c{c}\~ao maior",(-.8,.8,-2)+(-deslocamento,deslocamento,0),fontsize(12pt));


//draw((0,0,0)..(-3,3,0));

path3 g = graph(F, 0, 3);
draw(g,blue);











