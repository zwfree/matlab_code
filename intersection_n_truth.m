%% intersection_n_truth.m by ZhangWei

%% Function to compute the intersection of "n" fuzzy truth values under minimum or
%% product t-norms.

%% Outputs : "out" and "mem" (vectors) are, respectively,
%% the domain and the memberships of the result of the "intersection" operation.

%% Inputs : "x" is an "n" vector containing the domain elements of the
%% fuzzy truth values participating in the intersection operation. All the sets are
%% supposed to have the same domain. "Y" is an "m x n" vector containing the membership grades
%% of the "m" fuzzy truth values. "tnorm" is a scalar. If "tnorm < 0",
%% minimum t-norm is used, otherwise product t-norm is used.

function [out,mem]=intersection_n_truth(x,Y,tnorm)

mem=[];
out=x;
[m,n]=size(Y);

for j=1:m
    for i=1:n
        R(j,i)=max(Y(j,i:n));
    end
end

for i=1:n
    Y1(i)=max(Y(1:m,i));
    if tnorm<=0
        R1(i)=min(R(1:m,i));
        mem(i)=min([Y1(i),R1(i)]);
    else
        R1(i)=prod(R(1:m,i));
        mem(i)=prod([Y1(i),R1(i)]);
    end  
end

end
