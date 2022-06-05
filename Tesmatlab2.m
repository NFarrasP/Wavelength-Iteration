clc
clear

toleransi = 10^-7;

T = 8;
h = 12;

g = 9.81;
L = (g*T^2)/(2*pi);
fL = ((g*T^2)/(2*pi))*tanh((2*pi*h)/L)-L;

while abs(fL)>toleransi
    df = -((((h*g*T^2)/L^2)*(sech((2*pi*h)/L)))^2)-1;
    L = L - fL/df;
    fL = (((g*(T^2))/(2*pi))*tanh((2*pi*h)/L))-L;
end

k = 2*pi/L;
display(L);
display(k)