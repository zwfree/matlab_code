x=linspace(0,1,27);
Y=[0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 0.8 0.7 0.6 0.5 0.4 0.5 0.6 0.7 0.8 0.7 0.6 0.5 0.4 0.3 0.2 0.1 0];
subplot(1,3,1);
plot(x,Y);
axis([0 1 0 1]);

for i=1:27
    L(i)=max(Y(1:i));
end
subplot(1,3,2);
plot(x,L);
axis([0 1 0 1]);

for i=1:27
    R(i)=max(Y(i:27));
end
subplot(1,3,3);
plot(x,R);
axis([0 1 0 1])

