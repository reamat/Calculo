include "../../config/asy_config.asy";



real r=1;

draw((0,-r)..(0,r),arrow=Arrow()); //, L=Label("$y$", position=EndPoint));
draw((-r,0)..(r,0),arrow=Arrow()); //	, L=Label("$x$", position=EndPoint));
xaxis("$x$",LeftTicks);
yaxis("$y$",LeftRight,RightTicks(trailingzero));



path vector(pair z) {return (0,0)--(z.x,z.y)/sqrt(z.x*z.x+z.y*z.y);}

r=.8;

pair a=(.1,.1);
pair b=(r,r);
add(vectorfield(vector,a,b,nx=5));

pair a=(-r,.1);
pair b=(-.1,r);
add(vectorfield(vector,a,b,nx=5));

pair a=(.1,-r);
pair b=(r,-.1);
add(vectorfield(vector,a,b,nx=5));

pair a=(-r,-r);
pair b=(-.1,-.1);
add(vectorfield(vector,a,b,nx=5));


