function [dp] = dp_generator(img)
    I = rgb2gray(img); % Greyscale Conversion
    e = entropyfilt(I); % Entropy Conversion
    %imshow(e,[])
    dp=e;
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
end