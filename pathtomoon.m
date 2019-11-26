
clc
clear all

theta = linspace(0,2*pi);

R1 = 6371000 + 200000;
R2 = 384402000;
a = (R1+R2)/2;
e = 0.966386425;

rho = (a.*(1-e.^2))./(1+e.*cos(theta));
rho1 = abs(rho);
polarplot(theta,rho,'--');

smallestrho = min(rho);

difference = smallestrho - R1

