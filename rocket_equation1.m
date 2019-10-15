% rocket equation 
% Isp = spesific impulse
% g = gravitational constant
% ve = effective exhaust velocity
% m0 = initial mass
% mf = final mass
% deltaV = max change in velocity of vehicle
% deltaV = Isp*g*ln(m0/mf) = ve*ln(m0/mf)
% stage 1
clc
clear all

Isp1 = 263;
g0 = 9.81;
m0 = 2970000;
m1 = m0-2290000
deltaV1 = Isp1*g0*log(m0/m1)

% stage 2
Isp2 = 421;
m2 = m0-(496200+2290000);
deltaV2 = Isp2*g0*log(m1/m2)

% stage 3

Isp3 = 421;
m3 = m2-(123000);
deltaV3 = Isp3*g0*log(m2/m3)

%total deltaV
sumdeltaV = deltaV1+deltaV2+deltaV3