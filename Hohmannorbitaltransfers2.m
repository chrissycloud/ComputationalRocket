
clc
clear all

R1 = 6371000 + 200000;          % orbital radius in low earth orbit
R2 = (384402000-100000-1737000);% orbital radius in low lunar orbit
atransfer = (R1+R2)/2 ;         % semi major axis
mue = 3.986*10^14;              % GM of the earth
mum = 4.905*10^12;              % GM of the moon
P1 = 5296;                      % orbital period of the craft in low earth orbit
P2 = 27.32*86400;               % orbital speed of the moon
V1 = (2*pi*R1)/P1;              % Speed of the craft in low earth orbit
V2 = (2*pi*R2)/P2;              % speed of the moon in orbit

Ptransfer = sqrt(((atransfer.^3).*4.*(pi.^2))/(mue));
Vperiapsis = (((2.*pi.*atransfer)./Ptransfer).*sqrt((2.*atransfer./R1) - 1));

deltaV1 = Vperiapsis - V1;

Vapoapsis = (((2.*pi.*atransfer)./Ptransfer).*sqrt((2.*atransfer./R2) - 1));

deltaV2 = V2 - Vapoapsis;

deltaVtotal = deltaV1 + deltaV2;

%Period of the orbit

TOFseconds = 0.5.*Ptransfer;
TOFdays = TOFseconds/86400;

%Return Journey

R3 = 144841+1737000;
R4 = 384402000;

P3 = 6988.8;
P4 = P2;

atransferreturn = R3+R4/2;

V3 = (2*pi*R3)/P3              

Ptransferreturn = sqrt(((atransferreturn.^3).*4.*(pi.^2))/(mum));
Vperigee = (((2.*pi.*atransferreturn)./Ptransferreturn).*sqrt((2.*atransferreturn./R3) - 1));

deltaV3 = Vperigee

%Vapogee = (((2.*pi.*atransfer)./Ptransferreturn).*sqrt((2.*atransfer./R3) - 1));

%deltaV4 = V4 - Vapogee;

deltaVtotalreturn = deltaV3;

totaljourneydeltaV = deltaVtotal + deltaVtotalreturn;


deltaVallowance = 8796.2 - totaljourneydeltaV;

%deltav allowance in mass
massratio = exp(deltaVallowance/(421*9.81))
leftovermass = 120800/massratio
%mass of fuel left over
massoffuel = leftovermass-10000


