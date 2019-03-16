clear all;
close all;

% 0, ?/4, ?/2, 3?/4, and 5?/4. Take r = 2
r = 2;
theta = [0, pi/4, pi/2, 3*pi/4, 5*pi/4];

x = r*cos(theta);
y = r*sin(theta);

if sqrt(x.^2 + y.^2) == r * ones(1, length(theta))
    disp('success')
else
    disp('fail')
end
