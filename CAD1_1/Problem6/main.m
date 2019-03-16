clear all;
close all;

series = [10 50 100];
r = 0.5;
L = (1/(1-r));

for n = series
    v = [1,r.^(1:n)];
    S = sum(v);
    disp('difference between limit and sum')
    disp(L-S)
end
