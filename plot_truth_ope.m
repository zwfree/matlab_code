%% plot_truth_ope.m by ZhangWei

%% Function to respectively plot the figure union and intersection of "n" fuzzy truth values
%% under minimum or product t-norms.

%% Inputs : "x" is an "n" vector containing the domain elements of the
%% fuzzy truth values participating in the union operation. All the sets are
%% supposed to have the same domain. "Y" is an "m x n" vector containing the membership grades
%% of the "m" fuzzy truth values. "tnorm" is a scalar. If "tnorm < 0",
%% minimum t-norm is used, otherwise product t-norm is used.

function []=plot_truth_ope(x,Y,tnorm)

[out1,mem1]=union_n_truth(x,Y,tnorm);
[out2,mem2]=intersection_n_truth(x,Y,tnorm);

[m,n]=size(Y);

subplot(1,3,1); 
for j=1:m
    plot(x,Y(j,1:n));
    hold on;
end
axis([0 1 0 1]); % 设置坐标轴在指定的区间
% title('fuzzy truth values');

subplot(1,3,2); plot(out1,mem1);
axis([0 1 0 1]);
% title('union');

subplot(1,3,3); plot(out2,mem2);
axis([0 1 0 1]);
% title('intersection');

return
