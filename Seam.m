clear

load('C:\Users\acer\Desktop\Image Processing\Seam-Carving\Tower.mat')

%imshow(Tower)
%{
figure;
level = graythresh(Tower);
img = im2bw(Tower,level);
%}
I = rgb2gray(Tower);
%imshow(I)
%[Gmag,Gdir] = imgradient(I);
[Gmag, Gdir] = imgradient(I,'prewitt');

figure
imshowpair(Gmag, Gdir, 'montage');
title('Gradient Magnitude, Gmag (left), and Gradient Direction, Gdir (right), using Prewitt method')