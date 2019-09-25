close all
clear all
clc

p1= [0; 0; 0];
p2= [5; 0; 0];
p3= [5; 2; 0];
p4= [0; 2; 0];

box = [p1 p2 p3 p4];

prinAxis();
print(box,0,0,1)

thetaDeg = 45;
thetaRad = deg2rad(thetaDeg);

x=10;
y=15;

TRz = [cos(thetaRad) -sin(thetaRad) 0 0; sin(thetaRad) cos(thetaRad) 0 0; 0 0 1 0; 0 0 0 1];
TTx = [1 0 0 x; 0 1 0 0; 0 0 1 0; 0 0 0 1];
TTy=[1 0 0 0; 0 1 0 y; 0 0 0 1; 0 0 0 1];
TF=TTx*TRz;

p1t = TF*[box(:,1);1];
p2t = TF*[box(:,2);1];
p3t = TF*[box(:,3);1];
p4t = TF*[box(:,4);1];

box2 = [p1t(1:3) p2t(1:3) p3t(1:3) p4t(1:3)];
print(box2,0,1,1)




