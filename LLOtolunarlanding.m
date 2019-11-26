%lunar landing
clc
clear all

R1 = 144841+1737000;
P1 = 6988.8;
V1 = (2*pi*R1)/P1;
g = 1.62;
Isp1 = 311;
Isp2 = 311;
% descent stage

m1 = 16400;
thrust1 = 45040;
velocityatsurface = sqrt(2*1.62*144841);
deltaV1 = V1+velocityatsurface
DPSdeltaV = 2500
remainingdeltaV = DPSdeltaV-deltaV1;

burntimedescent = (deltaV1*m1)/thrust1;

% ascent stage
%need to reach a speed of 2.3769e+03 in order to get to the right height
%and right orbital speed.
m2 = 2150;
Energy = 0.5*m2*(deltaV1)^2;
thrust2 = 16000;
