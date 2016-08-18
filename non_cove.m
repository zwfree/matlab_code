x=linspace(0,1,10);
y1=randn(1,10);
y2=randn(1,10);
Y=[y1;y2];
[out1,mem1]=union_n_truth(x,Y,0);
[out2,mem2]=intersection_n_truth(x,Y,0);
plot(out1,mem1);
hold on;
plot(out2,mem2,'r');
plot(x,y1,'y');
plot(x,y2,'black')