function e=GAMLR(ind)

load XScaled XScaled

load Y Y
XScaled=XScaled;
ind=floor(ind);
for i=1:size(ind,2);
    if ind(1,i)==0;
        ind(1,i)=1;
    end
end
ind
Xsel=XScaled(:,ind);
Xsel=[ones(size(Xsel,1),1) Xsel];
B=inv(Xsel'*Xsel)*(Xsel'*Y);
Yhat=Xsel*B;
R=corrcoef(Y,Yhat);
R2=R(1,2).^2;
R2
e=1-R2;