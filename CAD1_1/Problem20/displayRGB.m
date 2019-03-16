function [output] = displayRGB(filename)
    if ~exist('filename','var'), filename='test.jpg'; end

    M = single(imread(filename)); % this  part's the same
    [H,W,~]=size(M); % H and W are Height and Width

    % generate X and Y grids for old and new sizes
    x_orig=linspace(0,1,W);
    y_orig=linspace(0,1,H); % get X and Y grids for original pixels
    [X_orig,Y_orig]=meshgrid(x_orig,y_orig);

    % ratio for resizing
    scale=800/max(H,W);

    % new sizes
    W_new=round(W*scale);
    H_new=round(H*scale);

    % create mesh for new size, i forgot what mesh was
    x_new=linspace(0,1,round(W_new));
    y_new=linspace(0,1,round(H_new));
    [X_new,Y_new]=meshgrid(x_new,y_new);

    % resample new image, empty 3d matrix with zeroes
    Mq=zeros(H_new,W_new,3,'uint8');

    % the actual resize
    MqR = uint8(interp2(X_orig,Y_orig,M(:,:,1),X_new,Y_new));
    MqG = uint8(interp2(X_orig,Y_orig,M(:,:,2),X_new,Y_new));
    MqB = uint8(interp2(X_orig,Y_orig,M(:,:,3),X_new,Y_new));

    % one channel matrix of new size
    a = zeros(H_new, W_new);
    % creating the 3 images with the RGB channels and the empty 0 channel
    red = cat(3, MqR, a, a);
    green = cat(3, a, MqG, a);
    blue = cat(3, a, a, MqB);

    % combining new resized image
    Mq(:,:,1) = MqR;
    Mq(:,:,2) = MqG;
    Mq(:,:,3) = MqB;

    % compositing all of em together
    composite = [Mq red; green blue];

    output = composite;
end

