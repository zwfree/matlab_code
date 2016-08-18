function [value]=prime(i)
if i<=1
    value=0;
elseif i==2||i==3
    value=1;
else
    value=2;
    for j=2:i-1
        if rem(i,j)==0
            value=0;
            break;
        end
    end
    if value~=0
       value=1;
    end
end
end