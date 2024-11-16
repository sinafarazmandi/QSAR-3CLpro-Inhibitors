function e=GAPLS(ind)

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
% Building PLS Model %

[XL,YL,XS,YS,BETA,PCTVAR,MSE,stats] = plsregress(Xsel,Y,8);

Yhat = [ones(size(Xsel,1),1) Xsel]*BETA;

%
R=corrcoef(Y,Yhat);
R2=R(1,2).^2;
R2
e=1-R2;
