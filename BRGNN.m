function e=BRGNN(ind)

load XScaled XScaled

load Y Y

ind=floor(ind);
for i=1:size(ind,2);
    if ind(1,i)==0;
        ind(1,i)=1;
    end
end
ind
Xsel=XScaled(:,ind);

%building Model
p=XScaled';
t=Y';
[pn,ps1]=mapminmax(p);
[tn,ts1]=mapminmax(t);
net=newff(minmax(pn),minmax(tn),[3],{'tansig','purelin'},'trainbr');

net = train(net,pn,tn);

a2=sim(net,pn);

a = mapminmax('reverse',a2,ts1);

a=a';


%
R=corrcoef(Y,a);
R2=R(1,2).^2;
R2
e=1-R2;
