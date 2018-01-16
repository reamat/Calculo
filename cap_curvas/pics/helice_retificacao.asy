include "../../config/asy_config.asy";


import three;
import graph3;
import grid3;

currentprojection=obliqueX;
//currentprojection = orthographic(1,1,1);


triple F(real t) {
	return (2*cos(2*t),5*sin(2*t),t);
}

real t0=3;
real tf=8;

path3 g = graph(F, t0, tf);
draw(g,blue);

triple P[];

int N=10;

for(int i=0; i < N; ++i) {
 	P[i]=F(t0 + (tf-t0)*i/(N-1));
	dot(P[i]);
}

for(int i=0; i < N-1; ++i) {
	draw(P[i]..P[i+1]);

}


for(int i=0; i < N; ++i) {
	label("$P_"+string(i)+"$",P[i],S);

}


