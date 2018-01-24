clear
clc

image = imread('C:\Users\acer\Desktop\Image Processing\Seam-Carving\Tower.jpg');

%imshow(image)
img = image;

I = rgb2gray(img); % Greyscale Conversion
e = entropyfilt(I); % Entropy Conversion
%imshow(e,[])
dp = dp_generator(e);
img = processing(dp, img);


