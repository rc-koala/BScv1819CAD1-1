clear all;
close all;

syms a x b c

s = sym(a * cos(x) + sqrt(b^2 - (a * sin(x) - c^2)));
fplot(matlabFunction(subs(s, [a, b, c], [1, 1.5, 0.3])), [0, 360]);