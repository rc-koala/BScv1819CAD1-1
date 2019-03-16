%% Name: Arsanios Mickael
clear all;
close all;
clc;
t = 'Thomas_Pesquet_2016.jpg';
%%
% Q1 display the picture
im = im2display(t);
%%
% Q2 maximum of (r,g,b)
[r,g,b] = im2max_rgb(im);
%%
% Q3 convert to grayscale
Mg = im2my_grayscale(im);
%%
% Q4 Normalise to 0-255
Mn = im2normalise_grayscale(Mg);
%%
figure;
subplot(1,3,1), imshow(im);
subplot(1,3,2), imshow(Mg);
subplot(1,3,3), imshow(Mn);
