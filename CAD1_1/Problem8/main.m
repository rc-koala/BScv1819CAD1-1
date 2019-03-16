clear all;
close all;

p = primes(1000);
p = p(1, 1:100);

disp('sum of primes 1, 20, 97')
disp(p(1, 1) + p(1, 20) + p(1, 97))
disp(p(1, 1))