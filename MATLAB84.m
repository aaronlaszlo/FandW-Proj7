%Aaron Rosen - F&WII - 4/20/2022
% ProjIV - Final Project
%MATLAB 8.4 
%Variables
%L          dipole length (in wavelengths)
%bL2        phase constant * length/2
%N          number of theta points
%th, thr    angle theta in degrees, radians
%dth        differential theta
%num, den   temporary variables
%F          un-normalized power function
%Fmax       max power function (W/m^2)
%omegaP     beam solid angle (sr)
%Dmax       Directivit

clc
clear

L = 0.75;
bL2 = pi*L;
N = 90;

i = 1:1:N;
dth = pi/N;
th(i) = i*pi/N;
num(i) = cos(bL2.*cos(th(i)))-cos(bL2);
den(i) = sin(th(i));
F(i) = ((num(i)).^2)./den(i);
Fmax = max(F);
Pn =F./Fmax;
omegaP = 2*pi*dth*sum(Pn)
Dmax = 4*pi/omegaP
Fmax

%Addition for 8.21
Rrad = (30/pi)*Fmax*omegaP
polar()