include "../../config/asy_config.asy";

import graph;

//TamanhoTexto();


pair parabola(real t) {

return (t,t^2);
}




path p = graph(parabola,-2,2);

real t=1;
pair P=parabola(t);

real curvatura=2/((1+(2*t)^2))^(3/2);
pair T=(1,2*t)/sqrt((1+(2*t)^2));
pair N=(-2*t,1)/sqrt((1+(2*t)^2));

draw(p,blue);
draw(P..P+T,arrow=Arrow(),L=Label("$\vec{T}$"),red);
draw(P..P+N,arrow=Arrow(),L=Label("$\vec{N}$"),red);


real raio=1/curvatura;
pair O=P+raio*N; //Centro do círculo de curvatura
draw (arc(O,raio,320,360),red);

//write(curvatura);

//draw((0,-.4)..(0,4),arrow=Arrow(),black);
//draw((-2,0)..(2,0),arrow=Arrow(),black);
xaxis(-2,2.2,arrow=Arrow(),Ticks(),L=Label("$x$",align=NE));  
yaxis(-.5,4.2,arrow=Arrow(),Ticks(),L=Label("$y$",align=E)); 
