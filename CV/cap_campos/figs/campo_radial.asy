include "../../config/asy_config.asy";



draw((0,-1)..(0,1),arrow=Arrow(), L=Label("$y$", position=EndPoint));

draw((-1,0)..(1,0),arrow=Arrow(), L=Label("$x$", position=EndPoint));


//real raio=1;
//int NLinhas=8;
//for (int n=0;n<NLinhas; ++n){
//	real xf=raio*cos(6.28/NLinhas*n);
//	real yf=raio*sin(6.28/NLinhas*n);
//	
//	draw((0,0)..(xf,yf),arrow=Arrow());
//}


pair a=(-1,-1)*.8;
pair b=(1,1)*.8;

path vector(pair z) {return (0,0)--(z.x,z.y);}

add(vectorfield(vector,a,b));

