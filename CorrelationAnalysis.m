function [X2,indsels]=CorrelationAnalysis(X,thr)

R=corrcoef(X);

Rm=nanmean(R);

Rm=Rm.^2;
k=0;
for i=1:size(X,2)

    ind=find(R(:,i)>thr);

    Rmsel=Rm(1,ind);
    [a,b]=sort(Rmsel');

if size(b>1)
    indsel=b(end,1);
    k=k+1;
    indsels(1,k)=ind(indsel,1);
end
end

indsels=sort(indsels);
indsels=unique(indsels);

X2=X(:,indsels);