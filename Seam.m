clear

load('C:\Users\acer\Desktop\Image Processing\Seam-Carving\Tower.mat')

%imshow(Tower)

I = rgb2gray(Tower); % Greyscale Conversion

%figure;
%imshow(I)
%[Gmag, Gdir] = imgradient(I,'prewitt'); % Gradient Method
e = entropyfilt(I);
%{
figure;
imshow(Gmag)

figure;
imshowpair(Gmag, Gdir, 'montage');
title('Gradient Magnitude, Gmag (left), and Gradient Direction, Gdir (right), using Prewitt method')
%}
imshow(e,[])
dp = e;
sz = size(dp);
for i = 2:sz(1)
    for j = 1:sz(2)
        if j == 1
            dp(i,j) = dp(i,j) + min(dp(i-1,j),dp(i-1,j+1));
        elseif j == sz(2)
            dp(i,j) = dp(i,j) + min(dp(i-1,j-1),dp(i-1,j));
        else
            dp(i,j) = dp(i,j) + min(dp(i-1,j-1),min(dp(i-1,j),dp(i-1,j+1)));
        end
    end
end

