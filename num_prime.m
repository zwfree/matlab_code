function [N]=num_prime(a,b)
N=0;
for i=a:b
    if prime(i)
        N=N+1;
    end
end
end
