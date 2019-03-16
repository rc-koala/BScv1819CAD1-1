clear all;
close all;

% x^2 - (10^7 - 10^-7)x + 1
a = 1;
b = -(10^7 - 10^-7);
c = 1;

[x1, x2] = quadform(a, b, c);
[x21, x22] = quadform2(a, b, c);