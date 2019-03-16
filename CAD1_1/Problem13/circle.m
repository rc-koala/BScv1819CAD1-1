function circle(r) 
x=-r:.01:r 
y=sqrt(r^2-x.^2) 
hold on; 
plot(x,y); 
plot(x,-y) 
end