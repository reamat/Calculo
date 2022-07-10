include "../../config/asy_config.asy";

import graph;

//TamanhoTexto();
unitsize(1cm);

real deslocamento=4;


pair Ep(real t) {

return (deslocamento*2-8*t*cos(10*t)/2,2+7*t*sin(10*t));
}




draw((0,0)..(2,4),blue); 
dot((1,2),red);  // JBC

draw((deslocamento,0)..(deslocamento+1,.8)..(deslocamento+2,4),blue);
dot((1.4325*deslocamento,2),red);

path espiral = graph(Ep,0,0.4);
draw(espiral,blue);

dot(Ep(0.2),red);

//Label L= Label("aa", (0,0), align=S);

draw("Curvatura nula",(0,-.2),fontsize(12pt));
draw("Curvatura pequena",(deslocamento,-.2),fontsize(12pt));
draw("Curvatura maior",(2*deslocamento,-.2),fontsize(12pt));
