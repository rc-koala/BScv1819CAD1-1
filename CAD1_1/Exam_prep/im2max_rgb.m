function [r,g,b] = im2max_rgb(rgbImage)
redChannel = rgbImage(:, :, 1);
greenChannel = rgbImage(:, :, 2);
blueChannel = rgbImage(:, :, 3);
r = max(redChannel(:));
g = max(greenChannel(:));
b = max(blueChannel(:));
end

