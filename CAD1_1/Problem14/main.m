clear all;
close all;

x = @(t, c) sin(t/(2*c)).*cos(t);
y = @(t, c) sin(t/(2*c)).*sin(t);
z = @(t, c) cos(t/(2*c));
f = @(t, c) plot3(x(t,c), y(t,c), z(t,c));
theta = 0:pi/50:10*pi;
con = 5;
f(theta, con);
axis equal
hold on

x2 = @(a, b, c, t) cos(t).*sqrt(b^2 - c^2.*cos(a*t).^2);
y2 = @(a, b, c, t) sin(t).*sqrt(b^2 - c^2.*cos(a*t).^2);
z2 = @(a, c, t) c*cos(a*t);
f2 = @(a, b, c, t) plot3(x2(a, b, c, t), y2(a, b, c, t), z2(a, c, t));
theta2 = 0:pi/50:2*pi;
a = 10;
b = 1;
c = 0.3;
f2(a, b, c, theta2);
axis equal, grid on
hold off
