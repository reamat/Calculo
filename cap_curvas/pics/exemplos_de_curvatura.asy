include "../../config/asy_config.asy";

import graph;

TamanhoTexto();

real deslocamento=4;


pair Ep(real t) {

return (deslocamento*2+t*cos(10*t)/2,2+t*sin(10*t));
}




draw((0,0)..(2,4),blue);

draw((deslocamento,0)..(deslocamento+1,.8)..(deslocamento+2,4),blue);


path espiral = graph(Ep,0,2.3);

draw(espiral,blue);


//Label L= Label("aa", (0,0), align=S);

draw("Curvatura nula",(0,-.2),fontsize(12pt));
draw("Curvatura pequena",(deslocamento,-.2),fontsize(12pt));
draw("Curvatura maior",(2*deslocamento,-.2),fontsize(12pt));
