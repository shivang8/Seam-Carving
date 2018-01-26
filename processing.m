function [new] = processing(dp, img)
    sz = size(img);
    sz(2) = sz(2) - 1;
    new = zeros(sz,'uint8');
    sz = size(img);
    arr = dp(sz(1),:);
    [~, index] = min(arr);
    %disp(index);
    count = 1;
    for j = 1:sz(2)
        if j==index
            % PASS 
        else
            new(sz(1),count,1) = img(sz(1),j,1);
            new(sz(1),count,2) = img(sz(1),j,2);
            new(sz(1),count,3) = img(sz(1),j,3);
            count = count + 1;
        end
    end
    for i = (sz(1)-1):-1:1
        if index == sz(2)
            if dp(i,index) < dp(i,index-1)
                % PASS
            else
                index = index - 1;
            end
        elseif index==1
            if dp(i,index) < dp(i,index+1)
                % PASS
            else
                index = index + 1;
            end
        else
            if dp(i,index-1) < dp(i,index)
                if dp(i,index-1) < dp(i,index+1)
                    index = index - 1; 
                else
                    index = index + 1;
                end
            else
                if dp(i,index) < dp(i,index+1)
                    % PASS 
                else
                    index = index + 1;
                end
            end
        end
        %disp(index);
        count = 1;
        %imshow(new);
        for j = 1:sz(2)
            if j==index
                % PASS 
            else
                new(i,count,1) = img(i,j,1);
                new(i,count,2) = img(i,j,2);
                new(i,count,3) = img(i,j,3);
                count = count + 1;
            end
        end
    end
end