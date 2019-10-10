% rocket equation 
% Isp = spesific impulse
% g = gravitational constant
% ve = effective exhaust velocity
% m0 = initial mass
% mf = final mass
% deltaV = max change in velocity of vehicle
% deltaV = Isp*g*ln(m0/mf) = ve*ln(m0/mf)
ve = 2550;
g = 9.81;
m0 = 45702;
mf = 4932;
deltaV = ve*log(m0/mf)

