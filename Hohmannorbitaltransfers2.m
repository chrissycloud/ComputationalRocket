
clc
clear all

R1 = 6371000 + 200000;
R2 = (384402000-100000);
atransfer = (R1+R2)/2 ;          %semi major axis
mue = 3.986*10^14;      %GM of the earth
P1 = 5296;                 %orbital period of the craft in low earth orbit
P2 = 27.32*86400;           % orbital speed of the moon
V1 = (2*pi*R1)/P1;
V2 = (2*pi*R2)/P2;

Ptransfer = sqrt(((atransfer.^3).*4.*(pi.^2))/(mue));
Vperiapsis = (((2.*pi.*atransfer)./Ptransfer).*sqrt((2.*atransfer./R1) - 1))

deltaV1 = Vperiapsis - V1 

Vapoapsis = (((2.*pi.*atransfer)./Ptransfer).*sqrt((2.*atransfer./R2) - 1))

deltaV2 = V2 - Vapoapsis

deltaVtotal = deltaV1 + deltaV2

%Period of the orbit

TOFseconds = 0.5.*Ptransfer
TOFdays = TOFseconds/86400