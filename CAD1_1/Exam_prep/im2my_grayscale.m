function [M] = im2my_grayscale(im)
redChannel = im(:, :, 1);
greenChannel = im(:, :, 2);
blueChannel = im(:, :, 3);
grayed = (redChannel + greenChannel + blueChannel)./3;
%grayed = rgb2gray(im);
figure;
imshow(grayed);
M = grayed;
end

