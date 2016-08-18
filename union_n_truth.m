%% union_n_truth.m by ZhangWei

%% Function to compute the union of "n" fuzzy truth values under minimum or
%% product t-norms.

%% Outputs : "out" and "mem" (vectors) are, respectively,
%% the domain and the memberships of the result of the "union" operation.

%% Inputs : "x" is an "n" vector containing the domain elements of the
%% fuzzy truth values participating in the union operation. All the sets are
%% supposed to have the same domain. "Y" is an "m x n" vector containing the membership grades
%% of the "m" fuzzy truth values. "tnorm" is a scalar. If "tnorm < 0",
%% minimum t-norm is used, otherwise product t-norm is used.

function [out,mem]=union_n_truth(x,Y,tnorm)

mem=[];
out=x;
[m,n]=size(Y);

for j=1:m
    for i=1:n
        L(j,i)=max(Y(j,1:i));
    end
end

for i=1:n
    Y1(i)=max(Y(1:m,i));
    if tnorm<=0
        L1(i)=min(L(1:m,i));
        mem(i)=min([Y1(i),L1(i)]);
    else
        L1(i)=prod(L(1:m,i));
        mem(i)=prod([Y1(i),L1(i)]);
    end  
end

end
