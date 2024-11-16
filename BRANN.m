function [R2,a]=BRANN(x,y)

p=x';
t=y';
[pn,ps1]=mapminmax(p);
[tn,ts1]=mapminmax(t);
net=newff(minmax(pn),minmax(tn),[3],{'tansig','purelin'},'trainbr');

net = train(net,pn,tn);

a2=sim(net,pn);

a = mapminmax('reverse',a2,ts1);

a=a';

R2=corrcoef([a y]);

R2=R2(1,2).^2;

R2

plot(y,a,'b*')

title(num2str(R2))