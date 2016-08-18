function [V,count]=show_prime(a,b)
V=[];
for i=ceil(a):floor(b)
    if prime(i)
        V=[V,i];
    end
end
    count=num_prime(ceil(a),floor(b));
end
