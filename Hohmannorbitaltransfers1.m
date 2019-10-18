%hohmann transfer orbit
% terms
% mu = GM is the standard gravitational parameter of the primary body
% r1 = the initial orbital radius
% r2 = the final orbital radius
clear all
clc


mu = 3.986*10^14;
r1 = 186;
r2 = 376285;

deltaV1 = (sqrt(mu/r1))*(sqrt(2*r2/r1+r2)-1)

deltaV2 = sqrt(mu/r1)*(1-sqrt(2*r1/(r1+r2)))

totaldeltaV = deltaV1 + deltaV2
