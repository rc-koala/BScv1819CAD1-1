function [M] = im2normalise_grayscale(im)
IM = double(im);
IM = IM - min(IM(:)) ;
IM = IM ./ max(IM(:)) ;
IM = im2uint8(IM);
figure;
imshow(IM);
M = IM;
end

