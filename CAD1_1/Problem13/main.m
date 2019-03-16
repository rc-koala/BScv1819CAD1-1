clear all;
close all;

f = @(R) plot(R*cos(0:.01:2*pi),R*sin(0:.01:2*pi));
f(5);
axis equal
hold on

theta = linspace (-pi/4,pi/4);
x = cos(theta).*sqrt(2.*cos(2.*theta));
y = sin(theta).*sqrt(2.*cos(2.*theta));
g = @() plot(x, y, -x, -y);
g();
axis equal, grid on

t=0:0.01:6*pi;
k = 0.1;
plot(((exp(k*t)).*(cos(t))), ((exp(k*t)).*(sin(t))))

hold off