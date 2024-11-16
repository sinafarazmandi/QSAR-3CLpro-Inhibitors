function [R2C,RMSEC,R2V,RMSEV]=LOOPLS(X,Y,n)

[XL,yl,XS,YS,beta,PCTVAR] = plsregress(X,Y,n);


Yfit = [ones(size(X,1),1) X]*beta;

[R2C,RMSEC]=myR2RMSE(Y,Yfit);

YLOO=zeros(size(Y));


for i=1:size(Y,1)

    Xcal=X;
    Ycal=Y;
    Xval=Xcal(i,:);
    Xcal(i,:)=[];
    Ycal(i,:)=[];

    [XL,yl,XS,YS,beta,PCTVAR] = plsregress(Xcal,Ycal,n);

    Yhat=[1 Xval]*beta;

    YLOO(i,:)=Yhat;


end


[R2V,RMSEV]=myR2RMSE(Y,YLOO);