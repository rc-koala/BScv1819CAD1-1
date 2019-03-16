function [im] = im2display(t)
%IM2DISPLAY Return and display image
M=imread(t);
figure;
imshow(M);
im = M;
end

