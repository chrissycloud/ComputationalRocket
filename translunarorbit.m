%deltaV calculations using approximate patched conic technique
%Based on https://space.stackexchange.com/questions/2103/how-to-calculate-delta-v-for-lunar-flyby

% v = velocity at current postition
% mu = is the GM of the central body
% r = the distance from the central body
% totalE = v^2/2 + mu/r
% mue = GM of the earth
% mum = GM of the moon
% re = low earth orbit altitude
% rm = low moon orbit altitude
% am = semi-major axis of the moon orbit around the earth
% vleo = orbital velocity in a low earth orbit
% vleo = sqrt(mue/re)
% vp = orbital velocity at periapsis
% vp = sqrt(2am*mue/re(am+re))
% deltaVinject =  vp - vleo
% vllo = orbital speed in a low lunar orbit
% vllo = sqrt(mum/rm)
% vm = sqrt(mue/am)
% va = velocity in the transfer orbit at the radius of the moon
% va = sqrt(2re*mue/am(am+re))
% vl = velocity at low moon orbit
% vl = sqrt(((vm-va)^2)+(2mum/rm))
% deltaVsinsert = vl - vllo
% totaldeltaV = vp - vleo + vl - vllo

clc
clear all

mue = 3.986*10^14;
mum = 4.905*10^12;
re = 200000;
rm = 100000;
am = 4600000;

vleo = sqrt(mue/re);
vp = sqrt((2.*am.*mue/(re.*(re+am))));

deltaVinject = vp - vleo

vllo = sqrt(mum/rm);
vm = sqrt(mue/am);
va = sqrt((2.*re.*mue)/(am.*(am+re)));
vl = sqrt(((vm-va).^2)+((2.*mum)/rm));

deltaVsinsert = vl - vllo

totaldeltaV = vp - vleo + vl - vllo
