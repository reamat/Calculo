include "../../config/asy_config.asy";

size(2inches,0); //Sobrescrevendo padrão.

draw((-1.1,0)..(1.1,0),arrow=Arrow(), L=Label("$x$", position=EndPoint));
draw((0,-1.1)..(0,1.1),arrow=Arrow(), L=Label("$y$", position=EndPoint));


draw(unitcircle,blue);

real theta = 45/180*3.1416;
real comprimento=.5;

pair P0 = (cos(theta),sin(theta));
pair P1 = P0 + comprimento*(-sin(theta),cos(theta));

draw(P0..P1, arrow=Arrow(), red, L=Label("$\vec{r}~\!'(t)$",position=MidPoint));
draw((0,0)..P0, arrow=Arrow(), red, L=Label("$\vec{r}(t)$",position=MidPoint));
