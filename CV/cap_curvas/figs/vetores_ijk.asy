include "../../config/asy_config.asy";


import three;
import graph3;
import grid3;
//currentprojection=obliqueX;
currentprojection = orthographic(1,1,1);


unitsize(2cm);
//TamanhoTexto();


draw((0,0,0)..(2,0,0),arrow=Arrow3(), L=Label("$x$", position=EndPoint));
draw((0,0,0)..(1,0,0),arrow=Arrow3(), L=Label("$\vec{i}$"),red+linewidth(1));
draw((0,0,0)..(0,2,0),arrow=Arrow3(), L=Label("$y$", position=EndPoint));
draw((0,0,0)..(0,1,0),arrow=Arrow3(), L=Label("$\vec{j}$"),red+linewidth(1));
draw((0,0,0)..(0,0,2),arrow=Arrow3(), L=Label("$z$", position=EndPoint));
draw((0,0,0)..(0,0,1),arrow=Arrow3(), L=Label("$\vec{k}$"),red+linewidth(1));

//draw("A base espacial canônica $\{\vec{i}, \vec{j}, \vec{k}\}$ ",(-.7,.7,-2),fontsize(12pt));












