include "../../config/asy_config.asy";

import three;
currentprojection = orthographic(1,-1,1);



real theta_1=0;
real theta_2=pi;
real raio =0.2;
real altura=.6;

real deslocamento =0;
real deslocamento_z =0;

draw((deslocamento,deslocamento,deslocamento_z)--(1+deslocamento,deslocamento,deslocamento_z),arrow=Arrow3(), L=Label("$x$", position=EndPoint)); 
draw((deslocamento,deslocamento,deslocamento_z)--(deslocamento,1+deslocamento,deslocamento_z),arrow=Arrow3(), L=Label("$y$", position=EndPoint)); 
draw((deslocamento,deslocamento,deslocamento_z)--(deslocamento,deslocamento,1+deslocamento_z),arrow=Arrow3(), L=Label("$z$", position=EndPoint));   
draw(arc(c=(deslocamento,deslocamento,altura+deslocamento_z), (deslocamento+raio*cos(theta_1),deslocamento+raio*sin(theta_1),altura+deslocamento_z), (deslocamento+raio*cos(theta_2),deslocamento+raio*sin(theta_2),altura+deslocamento_z),Z), red, arrow = Arrow3());


theta_1=pi;
theta_2=0;

deslocamento =2;


draw((deslocamento,deslocamento,0)--(1+deslocamento,deslocamento,0),arrow=Arrow3(), L=Label("$x$", position=EndPoint));  
draw((deslocamento,deslocamento,0)--(deslocamento,1+deslocamento,0),arrow=Arrow3(), L=Label("$y$", position=EndPoint)); 
draw((deslocamento,deslocamento,0)--(deslocamento,deslocamento,1),arrow=Arrow3(), L=Label("$z$", position=EndPoint));   
draw(arc(c=(deslocamento,deslocamento,altura), (deslocamento+raio*cos(theta_1),deslocamento+raio*sin(theta_1),altura), (deslocamento+raio*cos(theta_2),deslocamento+raio*sin(theta_2),altura),-Z), red, arrow = Arrow3());

