function [R2LOO,RMSELOO,YhatLOO]=LOOMLR(Xsel,Y)

Xsel=[ones(size(Xsel,1),1) Xsel];

Y;

YhatLOO=zeros(size(Y));

for i=1:size(YhatLOO,1)
    Xval=Xsel(i,:);
    Xtrain=Xsel;
    Xtrain(i,:)=[];

    %
    Ytrain=Y;
    Ytrain(i,:)=[];
    % Building Model
    B=inv(Xtrain'*Xtrain)*(Xtrain'*Ytrain);
    % Predicting the ith sample
    YhatVal=Xval*B;
    YhatLOO(i,1)=YhatVal;
end  
    
    [R2LOO,RMSELOO]= myR2RMSE(Y,YhatLOO)