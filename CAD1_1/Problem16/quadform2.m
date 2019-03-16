function [x1,x2] = quadform2(a,b,c)
    d = b^2 - 4*a*c;
    x1 = (-b-sign(b)*sqrt(d))/2*a;
    x2 = c/(a*x1);
end

